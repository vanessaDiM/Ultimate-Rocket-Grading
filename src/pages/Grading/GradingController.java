/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pages.Grading;

import static pages.Assignments.AssignmentPageController.ASSIGNMENT_LIST;
import static pages.Assignments.AssignmentPageController.SELECTED_ASSIGNMENT;
import admin.Expectation;
import admin.JdbcDao;
import admin.Student;
import admin.Assignment;
import admin.Assignment_Grade;
import static pages.classList.ClassListPageController.STUDENT_ID;
import static pages.classList.ClassListPageController.STUDENT_LIST;
import static pages.classList.ClassListPageController.retrieveEnrollment;
import static pages.classList.ClassListPageController.retrieveStudents;
//import classList.ClassListPageController2;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableColumn.CellEditEvent;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.control.cell.TextFieldTableCell;
import javafx.scene.control.cell.TextFieldTreeTableCell;
import javafx.stage.Stage;


/**
 *
 * @author lelezhao
 */
public class GradingController implements Initializable{
    @FXML 
    Button btnNext;
    @FXML
    Button btnHome;
    @FXML
    Button btnClass;
    @FXML
    Button btnPrevious;
    @FXML
    Label tfName;
    @FXML
    Label tfAname;
    @FXML 
    TableView tb;
    @FXML 
    TableColumn col_ex;
    @FXML
    TableColumn col_marks;
    @FXML
    ComboBox comboStudents;
    @FXML
    TextField tfMark;
    // list that stores the user's expectations grade ids 
    final ObservableList<Expectation> EXPECTATIONS = FXCollections.observableArrayList();
    // the selected student to grade
    public static Student SELECTED_STUDENT;
    // individual grade is
    private int grade_id;

    @Override
    
    public void initialize(URL location, ResourceBundle resources) {
        try {
            retrieveStudents();
        } catch (SQLException ex) {
            Logger.getLogger(GradingController.class.getName()).log(Level.SEVERE, null, ex);
        }
        SELECTED_STUDENT = STUDENT_LIST.get(0);
        // when a selected student is passed in, get display its information
        initWindow(SELECTED_STUDENT,SELECTED_ASSIGNMENT);
        getGradeId();
        getExpectations();
        for (Expectation ex:EXPECTATIONS){
            System.out.println(ex);
        }
        System.out.println(EXPECTATIONS.size());
        try {
            display();
        } catch (Exception ex) {
            Logger.getLogger(GradingController.class.getName()).log(Level.SEVERE, null, ex);
        }
        // set a combo box with student displayed which allows users to choose from 
        comboStudents.setItems(STUDENT_LIST);
    }
    
    public void classHome(ActionEvent event) throws IOException{
        Parent lRoot = FXMLLoader.load(getClass().getResource("/pages/homeClass/homeClassPage.fxml"));
        Scene lScene = new Scene(lRoot);
        Stage secondaryStage = (Stage) ((Node)event.getSource()).getScene().getWindow();
        secondaryStage.setTitle("Home");
        secondaryStage.setScene(lScene);
        secondaryStage.show();
    }
    /**
     * display table view and set all expectation in one column and marks in the other 
     * @throws Exception 
     */
    public void display() throws Exception {
        Expectation temp_ex;
        tb.setItems(EXPECTATIONS);
        col_ex.setCellValueFactory(
                new PropertyValueFactory<Expectation, String>("display"));
        col_marks.setCellValueFactory(
                new PropertyValueFactory<Expectation, String>("mark"));
        
        col_marks.setCellFactory(TextFieldTableCell.forTableColumn());
        col_marks.setOnEditCommit(new EventHandler<CellEditEvent<Expectation, String>>() {
            @Override
            public void handle(CellEditEvent<Expectation, String> event) {
                Expectation temp = event.getRowValue();
                temp.setMark(event.getNewValue());
                try {
                    updateMark(temp);
                    // to do, get local interface to update
                    temp.setMark(event.getNewValue());
                } catch (SQLException ex) {
                    System.out.println("something is terribly wrong");
                    //Logger.getLogger(GradingController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });
    }
   
    /**
     * get expectations of the selected person's grade id
     */
    public void getExpectations() {
        // clear so that it wouldn't get the left over data from the last student 
        EXPECTATIONS.clear();
        try {
            JdbcDao jdbc = new JdbcDao();
            Connection database = jdbc.getConnection();
            String sql = "select * from Rocket_Grading.Assignment_expectation where Assignment_grade_id = ? ";

            PreparedStatement statement = database.prepareStatement(sql);
            statement.setInt(1,grade_id);
            //System.out.println("assignment grade id of this person is " + getGradeId().getGradeId());
      
            ResultSet rs = statement.executeQuery();
            if(rs==null){
                System.out.println("This assignment has no expectations");
            }else{
                while(rs.next()){
                    int id = rs.getInt("Expectation_id");
                    String name = rs.getString("Expectation_name");
                    String des = rs.getString("Expectation_description");
                    String mark = rs.getString("Expectation_grade");
                    System.out.println("expectation id: " + id);
                    EXPECTATIONS.add(new Expectation(name,id,des,mark));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            e.getCause();
        }
    }
    
    
    /**
     * when a student is selected, reload the same page but with a different student id passed in
     * @param event
     * @throws IOException
     * @throws Exception 
     */
    public void selectStudent(ActionEvent event) throws IOException, Exception{
        // get the sleected student and pass in its student id 
        SELECTED_STUDENT = (Student)comboStudents.getValue();
       
        //SELECTED_STUDENT = STUDENT_LIST.get(0);
        initWindow(SELECTED_STUDENT,SELECTED_ASSIGNMENT);
        getGradeId();
        getExpectations();
        try {
            display();
        } catch (Exception ex) {
            Logger.getLogger(GradingController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    /**
     * when user inputs the final mark, update it to the database
     * @param ex
     * @throws SQLException 
     */
    public void updateMark(Expectation ex)throws SQLException{
       JdbcDao jdbc2 = new JdbcDao();
        Connection conn = jdbc2.getConnection();

        String query = "UPDATE Assignment_expectation SET Expectation_grade = ? WHERE Expectation_id = ?";

        try{
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1,ex.getMark());
            //statement.setInt(2,grade_id);
            statement.setInt(2,ex.getId());
            statement.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
            e.getCause();
        }   
    }



// after adding final mark, add the assignment grade id to the expectation table for each student as well
    public void updateFinal(ActionEvent event){
        JdbcDao jdbc2 = new JdbcDao();
        Connection conn = jdbc2.getConnection();
        String qry = "UPDATE Assignment_grade SET Assignment_grade = ? WHERE Assignment_grade_id = ?";

        try{
            PreparedStatement statement = conn.prepareStatement(qry);
            statement.setString(1,tfMark.getText());
            //System.out.println("tf mark is " + tfMark.getText());
            statement.setInt(2,grade_id);
            statement.executeUpdate();
            tfMark.clear();
            //System.out.println("did it");
        }
        catch(Exception e){
            e.printStackTrace();
            e.getCause();
        }   
    }
    
 
    /**
     * get window to display the student's name and assignment name
     * @param s
     * @param a 
     */
    public void initWindow(Student s, Assignment a){
        tfName.setText(s.toString());
        //tfName.textProperty().bind(tfName.textProperty());
        //System.out.println("number of students " + STUDENT_LIST.size());
        tfAname.setText(a.getName());
        //System.out.println(SELECTED.getName());
    }
    
    /**
     * This function gets all info needed to get the assignment grade id 
     * @param stId
     * @param asId 
     */
   
    
    public Assignment_Grade getGradeId(){
        Assignment_Grade result = new Assignment_Grade("0",0,0);
         JdbcDao jdbc = new JdbcDao();
        Connection database = jdbc.getConnection();
        
        try{
            String sql = "SELECT * FROM Assignment_grade WHERE Student_id = ? AND Assignment_id = ?";
            PreparedStatement statement = database.prepareStatement(sql);
            statement.setInt(1,SELECTED_STUDENT.getId());
            //System.out.println("student id: " + stId);
            statement.setInt(2,SELECTED_ASSIGNMENT.getId());
            //System.out.println("Assignment id: " + asId);
            ResultSet rs = statement.executeQuery();
            if (rs .next()) {
                int id = rs.getInt("Assignment_grade_id");
                result = new Assignment_Grade(rs.getString("Assignment_grade"), id,
                        SELECTED_STUDENT.getId());
                //System.out.println("result returned is " + result);
                grade_id = id;
                System.out.println("assignment grade id (got from getGradeId) " + id);
                //GRADES.add(ag);

            } else {
                System.out.println("no result from db");
            }
            
        }catch(Exception e){
            e.printStackTrace();
            e.getCause();
        }
        return result;
        
    }
    
    
 
}
    

/*
 * Controlls classListPage.fxml
 * when buttons are pressed different things happen
 */
package pages.classList;

import static pages.LoginPage.LoginController.loggerId;
import static pages.LoginPage.LoginController.loggerUsername;
import static pages.LoginPage.LoginController.showAlert;
import admin.JdbcDao;
import admin.Student;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.Hyperlink;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.stage.Stage;
import static pages.homePage.HomeController.CLASS_ID;
import pages.newAssignment.Assignment_Expectation;

/**
 * FXML Controller class
 *
 * @author vanessa
 */
public class ClassListPageController implements Initializable {
    @FXML
    Button signout;
    @FXML
    Button home;
    @FXML
    Button assignments;
    @FXML
    Button evidenceRecord;
    @FXML
    Button btnUnenroll;
    @FXML
    ScrollPane pane;
    @FXML
    TableView table;
    @FXML 
    TableColumn col;
    @FXML 
    TableColumn col_assign;
    @FXML 
    TableColumn col_name;
    
    

    //list for storing all students' names of the class
    public static final ObservableList<String> STUDENT_NAME = FXCollections.observableArrayList();
    //list for storing all the students 
    public static final ObservableList<Student> STUDENT_LIST = FXCollections.observableArrayList();
    //the list that stores all student ids from the class
    public static final ArrayList<Integer> STUDENT_ID = new ArrayList<>();
    // the student id of the seletced student for unenrollment
    public static int SELECTED_STUDENT;
    /**
     * sign out 
     * @param event
     * @throws SQLException
     * @throws IOException 
     */
    public void signOut (ActionEvent event) throws SQLException, IOException {
        Parent lRoot = FXMLLoader.load(getClass().getResource("/pages/LoginPage/login.fxml"));
        Scene lScene = new Scene(lRoot);
        Stage secondaryStage = (Stage) ((Node)event.getSource()).getScene().getWindow();
        secondaryStage.setTitle("Sign In");
        secondaryStage.setScene(lScene);
        secondaryStage.show();
        
    }
    public void home (ActionEvent event) throws SQLException, IOException {
        Parent lRoot = FXMLLoader.load(getClass().getResource("/pages/homePage/home.fxml"));
        Scene lScene = new Scene(lRoot);
        Stage secondaryStage = (Stage) ((Node)event.getSource()).getScene().getWindow();
        secondaryStage.setTitle("Sign In");
        secondaryStage.setScene(lScene);
        secondaryStage.show();
        
    }
     //brings user to the assignments screen
    public void assignments (ActionEvent event) throws SQLException, IOException {
        Parent lRoot = FXMLLoader.load(getClass().getResource("/pages/Assignments/assignmentPage.fxml"));
        Scene lScene = new Scene(lRoot);
        Stage secondaryStage = (Stage) ((Node)event.getSource()).getScene().getWindow();
        secondaryStage.setTitle("Assignments");
        secondaryStage.setScene(lScene);
        secondaryStage.show();
    }
    //brings user to the evidence record tab screen
    public void evidenceRecord (ActionEvent event) throws SQLException, IOException {
        Parent lRoot = FXMLLoader.load(getClass().getResource("/pages/evidenceRecordTab/eRTabPage.fxml"));
        Scene lScene = new Scene(lRoot);
        Stage secondaryStage = (Stage) ((Node)event.getSource()).getScene().getWindow();
        secondaryStage.setTitle("Evidence Record Tab");
        secondaryStage.setScene(lScene);
        secondaryStage.show();
       
    }
    /**
     * Initializes the controller class.
     * @param url
     */
    @Override
        public void initialize(URL url, ResourceBundle rb) {
 
        try {
            display();
        } catch (SQLException ex) {
            Logger.getLogger(ClassListPageController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }    
    
   /**
    * get the list of people who were added into the class
    * @throws SQLException 
    */
    public static void retrieveEnrollment()throws SQLException{
        STUDENT_ID.clear();
        try{
            JdbcDao jdbc = new JdbcDao();
            Connection database = jdbc.getConnection();
            String sql ="select * from Rocket_Grading.Enrollment where Class_Id = ?";
            PreparedStatement statement = database.prepareStatement(sql);
            //System.out.println("class id is " + CLASS_ID);
            statement.setInt(1,CLASS_ID);
            ResultSet queryResult = statement.executeQuery();
            if(queryResult==null){
                System.out.println("wrong");
                
            }else{
                // add all the student ids in the table to a static list
                while(queryResult.next()){
                    int id = queryResult.getInt("Student_id");
                    //System.out.println("student id is " + id);
                    STUDENT_ID.add(id);
                    
                }
            }
                 
        }catch(Exception e){
                e.printStackTrace();
                e.getCause();
            
                }
    }
    
    
    /**
     * get all the students name of the class given the class ids
     * @throws SQLException 
     */
    public static void retrieveStudents() throws SQLException{
        retrieveEnrollment();
        STUDENT_LIST.clear();
        try{
            JdbcDao jdbc = new JdbcDao();
            Connection database = jdbc.getConnection();
            
            for(int i = 0; i<STUDENT_ID.size(); i++){
                String sql ="select * from Rocket_Grading.Student_info where Student_id = ?";
                PreparedStatement statement = database.prepareStatement(sql);
                statement.setInt(1,STUDENT_ID.get(i));
                ResultSet queryResult = statement.executeQuery();
                if(queryResult==null){
                    System.out.println("wrong");
           
                }else{
                // add all the student names in the table to a static list
                    while(queryResult.next()){
                        String fName = queryResult.getString("First_name");
                        String lName = queryResult.getString(("Last_name"));
                        int id = queryResult.getInt("Student_id");
                        //String name = fName + " " + lName;
                        STUDENT_LIST.add(new Student(fName,lName,id));    
                    }
                }
            }
         
        }catch(Exception e){
                e.printStackTrace();
                e.getCause();
         }
        /*
        testing
        */
//        for(Student s:STUDENT_LIST){
//            System.out.println(s.getFirstName());
//        }
//        
    }
    /**
     * set the names under the table column 
     * @throws SQLException 
     */
    private void display() throws SQLException{
        retrieveStudents();
        pane.setContent(table);
        col_name.setCellValueFactory(
                new PropertyValueFactory<Student, String>("name"));

        table.setItems(STUDENT_LIST);

    }
    /**
     * delete the selected student form the class
     * @param event
     * @throws SQLException 
     */
    public void unenroll(ActionEvent event) throws SQLException{
        Student chosen = (Student) table.getSelectionModel().getSelectedItem();
        int id = chosen.getId();
        try{
            
            JdbcDao jdbc = new JdbcDao();
            Connection database = jdbc.getConnection();
            String sql = "delete from Enrollment where Student_id = ? and Class_id = ?";
            PreparedStatement statement = database.prepareStatement(sql);
            statement.setInt(1,id);
            statement.setInt(2,CLASS_ID);
            statement.executeUpdate();
            showAlert(Alert.AlertType.CONFIRMATION, "Congrats",
             "This person has been deleted successfully");
            
            //System.out.println("deleted sucessfully");
            table.getItems().remove(chosen);
            
            
        }catch(Exception e){
            e.printStackTrace();
            e.getCause();
        }
    }
    }
package pages.newAssignment;


import admin.Assignment;
import admin.Assignment_Grade;
import admin.JdbcDao;
import admin.Student;
import static pages.classList.ClassListPageController.STUDENT_LIST;
import static pages.classList.ClassListPageController.retrieveEnrollment;
import static pages.classList.ClassListPageController.retrieveStudents;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import static pages.homePage.HomeController.CLASS_ID;





/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author lelezhao
 */
public class AssignmentController implements Initializable {
    
    @FXML 
    Button btnCancel;
    @FXML
    Button btnDone;
    @FXML
    Button btnHome;
    @FXML
    Button btnAdd;
    
    @FXML
    TextField tfDescription;
    @FXML
    TextField tfName;
    @FXML
    TextField tfType;
    @FXML
    TextField tfWeight;
    @FXML
    TextField tfEname;
    @FXML
    TextField tfEdes;
    
    
    @FXML
    TableView<Assignment_Expectation> tvTable;
    @FXML
    TableColumn col_name;
    @FXML
    TableColumn col_des;
    @FXML
    ComboBox comboType;
    
    Stage dialogStage = new Stage();
    Scene scene;
    
    // list to store instances of class 
   ObservableList<Assignment_Expectation> data = FXCollections.observableArrayList();
   // all three types of assignments
   ObservableList<String> types = FXCollections.observableArrayList(); 
   // 
   public int TEMP_ID;
   public static ObservableList<Integer> ASSIGNMENT_MARK_ID = FXCollections.observableArrayList();
    
    public void done (ActionEvent event) throws SQLException, IOException{

        if(tfName.getText()==null || tfDescription.getText()==null || tfWeight.getText()==null){
            showAlert(Alert.AlertType.ERROR, "ERROR",
            "Please fill out all assignment requiremnets");
        }
 
        try{
            JdbcDao jdbc2 = new JdbcDao();
            Connection conn = jdbc2.getConnection();

            String query = "INSERT INTO Assignment (Assignment_Name,Assignment_Type,Assignment_Description,Assignment_Weight,Class_Id) VALUES(?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
            ps.setString(1,tfName.getText());
            ps.setString(2,comboType.getSelectionModel().getSelectedItem().toString());
            //System.out.println(comboType.getSelectionModel().getSelectedItem().toString());
            ps.setString(3,tfDescription.getText() );
            ps.setInt(4,Integer.parseInt(tfWeight.getText()));
            ps.setInt(5, CLASS_ID);
            
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                // get the id of the newly inserted assignment 
                TEMP_ID =rs.getInt(1);
            }
            rs.close();
            showAlert(Alert.AlertType.CONFIRMATION, "Congrats",
             "This Assignment has been added to your class list.");
            // create a assignment id for all students with the assignment id 
            createGradeId(TEMP_ID);

            // insert expectations in this class
            for(Assignment_Expectation a: data){
                for(int n:ASSIGNMENT_MARK_ID){
                    insert(a,n);
                }
              
            }
            
        }catch(Exception e){
            e.printStackTrace();
            e.getCause();
        }
        
        //after the assignment is created successfully, go to assignment page
        Parent lRoot = FXMLLoader.load(getClass().getResource("/Assignments/assignmentPage.fxml"));
        Scene lScene = new Scene(lRoot);
        Stage secondaryStage = (Stage) ((Node)event.getSource()).getScene().getWindow();
        secondaryStage.setTitle("Assignments");
        secondaryStage.setScene(lScene);
        secondaryStage.show();
    }
    
    private static void showAlert(Alert.AlertType alertType,String title, String message) {
        Alert alert = new Alert(alertType);
        alert.setTitle(title);
        alert.setHeaderText(null);
        alert.setContentText(message);
        alert.show();
         
    }
    
    @Override
    
    /**
     * initialize the scroll bar 
     */
    public void initialize(URL url, ResourceBundle rb) {
        types.add("Presentation");
        types.add("Assignment");
        types.add("Test");
        
        comboType.setItems(types);
        
    }    
    // add assignments
    public void add(ActionEvent event)throws Exception{
       col_name.setCellValueFactory(
                new PropertyValueFactory<Assignment_Expectation, String>("name"));
       col_des.setCellValueFactory(
                new PropertyValueFactory<Assignment_Expectation, String>("des"));
      
       data.add(new Assignment_Expectation(tfEname.getText(), tfEdes.getText()));
       tvTable.setItems(data);
       tfEname.clear();
       tfEdes.clear();
    }

    
    /**
     * create default expectation grades for each student
     * @param item assignment expectation
     * @param id student id
     */
    public void insert(Assignment_Expectation item, int id ){
        JdbcDao jdbc2 = new JdbcDao();
        Connection conn = jdbc2.getConnection();
        
        String query = "INSERT INTO Assignment_Expectation(Expectation_name, Expectation_description, Assignment_id, Assignment_grade_id) VALUES(?,?,?,?)";
        
        try{
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1,item.getName());
            statement.setString(2,item.getDes());
            statement.setInt(3,TEMP_ID);
            statement.setInt(4,id);
            
            statement.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
            e.getCause();
        }   
    }
    
    // add an assignment grade marking entry for each student in the class
    //pass in the assiignment id that has just been created
    public void createGradeId(int assignment_id) throws SQLException{
        retrieveStudents();
        retrieveEnrollment();
        for (int i = 0; i<STUDENT_LIST.size();i++){
            createGradeId(STUDENT_LIST.get(i),assignment_id);
        }
    }
    /**
     * create default grade id for each student for each assignment and get the id 
     * @param s student 
     * @param a assignment id
     */
    public void createGradeId(Student s, int a){
        JdbcDao jdbc2 = new JdbcDao();
        Connection conn = jdbc2.getConnection();
        try{
            String qr = "INSERT INTO Assignment_grade(Assignment_id, Student_id) VALUES(?,?)";
            PreparedStatement stmt = conn.prepareStatement(qr, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1,a);
            stmt.setInt(2,s.getId());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                //System.out.println("you created one");
                int grade_id = rs.getInt(1);
                
                // add to list assignment mark id 
                ASSIGNMENT_MARK_ID.add(grade_id);
                //System.out.println("Grade id is " + grade_id);
            } else {
                System.out.println("no rows selected");
            }
            
        }catch(Exception e ){
            e.getCause();
            e.printStackTrace();
        }
    }

   
}
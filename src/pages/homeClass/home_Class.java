/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pages.homeClass;

import javafx.application.Application;
import static javafx.application.Application.launch;
import javafx.fxml.FXMLLoader;
import javafx.scene.*;
import javafx.stage.Stage;
/**
 *
 * @author vanessa
 */
public class home_Class extends Application{
    public static void main(String[] args) {
       launch(args);
    }
    
    @Override
    public void start(Stage primaryStage) throws Exception {
        Parent classHomeRoot = FXMLLoader.load(getClass().getResource("homeClassPage.fxml"));
        Scene classHomeScene = new Scene(classHomeRoot);

        primaryStage.setTitle(" Class Home");
        primaryStage.setScene(classHomeScene);
        primaryStage.show();
    }
}

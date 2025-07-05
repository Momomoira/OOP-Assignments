package oracleconnection;

import java.sql.*;
import java.io.*;

/**
 * @author Momo, Jesh, & Pierre
 */

public class ConnectDB {
    public static Connection Connect(){
        Connection conn = null;
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
            System.out.println("Connected successfully!");
        }catch(Exception e){
            System.out.println("Connection failed: " + e.getMessage());
        }
        return conn;
        
        }
}

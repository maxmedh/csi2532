/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;
import java.sql.*;
/**
 *
 * @author Owner
 */
public class DBUtiliz {
    public static PreparedStatement getPreparedStatement(String sql){
        try{
        PreparedStatement ps = null;
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/project.db", "postgres", "password123");
        ps = con.prepareStatement(sql);
        
        return ps;
        }
        catch(ClassNotFoundException e) {
                e.printStackTrace();
                return null;
        }
        catch(SQLException e) {
                e.printStackTrace();
                return null;
        }
    }
    
    public static void main(String[] args) throws ClassNotFoundException{
        getPreparedStatement("select * from public.villageolympique");
        getPreparedStatement("select * from public.service_transport");
    }
}

import java.sql.*;
public class DBConnect {
    public static Connection connect(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer", "root", "");
            return con;
        }
        catch(Exception e){
            
        }
        return null;
    }
    public static void main(String[] args){
        
    }
}

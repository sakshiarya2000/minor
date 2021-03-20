
package Connection;
import java.sql.*;
public class MyCon 
{
    static Connection con=null;
    static
    {
        try 
        {
             Class.forName("com.mysql.jdbc.Driver");
             System.out.println("Driver load...........");
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }  
    }
    
    public static Connection getConnection()
    {
        try {
             con=DriverManager.getConnection("jdbc:mysql://localhost:3309/minor", "root", "root");
             System.out.println("Data base Conneted.........");
          } 
        catch (SQLException e) 
        {
            System.out.println(e);
        } 
        return con;
    }
}

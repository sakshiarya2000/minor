
package Dao;

import Connection.MyCon;
import Model.Criminals;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Dao 
{
public int autoIncr() throws SQLException
    {
        String sql;
        Connection con=null;
        sql="select max(sno) from signup";
        int max=0;
        PreparedStatement ps=null;
        con=MyCon.getConnection();
        ps=con.prepareStatement(sql);
        ResultSet rs=null;
        rs=ps.executeQuery();
        if(rs.next())
        {     
            max=rs.getInt(1);
            max=max+1;
        }    
      return max;
    }    

public int insertDetails(Criminals C) throws SQLException
    {
        String sql;
        Connection con=null;
       
        sql="insert into signup values(?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps=null;
         con=MyCon.getConnection();
         ps=con.prepareStatement(sql);
         ps.setInt(1, C.getSno());
         ps.setString(2, C.getUname());
         ps.setString(3, C.getPass());
         ps.setString(4, C.getFname());
         ps.setString(5, C.getLname());
         ps.setString(6, C.getEmail());
         ps.setInt(7, C.getMobile());
         ps.setString(8, C.getAdr());
         ps.setString(9, C.getcPass());

         int n=0; 
         n=ps.executeUpdate();
         return(n);   
        
      }

public boolean checkLogin(String user,String pass) throws SQLException
    {
         String sql;
        Connection con=null;
        sql="select * from signin where user=? and pass=?";
        PreparedStatement ps=null;
        con=MyCon.getConnection();
        System.err.println("connection created username "+user);
        ps=con.prepareStatement(sql);
        System.err.println("connection created "+sql);
        ps.setString(1, user);
        ps.setString(2, pass);
        ResultSet rs=null;
        rs=ps.executeQuery();
        if(rs.next())
          return true;
        
     return false;
    }


 public Criminals searchByName(String bid) throws SQLException
    {
        Connection con=null;
        String sql;
        ResultSet rs=null;
        PreparedStatement ps=null;
       
           con=MyCon.getConnection();
            sql="select* from signup where uname=?";
            ps=con.prepareStatement(sql);
            ps.setString(1, bid);
            rs=ps.executeQuery();
            Criminals b= new Criminals();
            {
                if(rs.next())
                {
                    b.setUname(rs.getString(1));
                    b.setFname(rs.getString(2));
                    b.setLname(rs.getString(3));
                    b.setEmail(rs.getString(4));
                    b.setAdr(rs.getString(5));
                    b.setMobile(rs.getInt(6));
                }
                else
                {
                    b=null;
                    
                }
            }
     return b;
        
        }
    
}

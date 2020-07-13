/* this part will directly interact with database and will help to
set values

*/
package com.startup.dao;
import com.startup.entities.User;
import java.sql.*;

public class UserDao
{
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    
    // here we will add user data-->>database
    
    public boolean saveUser(User user)//this-->>user will interact with entities User.java
    {
        boolean f=false;
        try
        {
            String query="insert into users(name,email,password,gender)values(?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(query);
            
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            
            pstmt.executeUpdate();
            
            f=true;
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
         return f;
         
         
    }
    
    //for getting user email and password and checking them
    
    public User getUserByEmailAndPassword(String email,String Password)
    {
        User user=null;
        
        try
        {
        String query="select * from users Where email=? and password=?";
        PreparedStatement pstmt=con.prepareStatement(query);
        
        pstmt.setString(1, email);
        pstmt.setString(2, Password);
        
        ResultSet set=pstmt.executeQuery();
        
        if(set.next())
        {
            user=new User();
            
            user.setName(set.getString("name"));
            user.setId(set.getInt("id"));
            
            user.setEmail(set.getString("email"));
            
            user.setPassword(set.getString("password"));
            user.setGender(set.getString("gender"));
            user.setDateTime(set.getTimestamp("rdate"));
            
            
        }
        
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return user;
    }
    
   
    
}

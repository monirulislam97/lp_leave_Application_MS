
package DAO;

import DBUtility.DBConnection;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;


public class UserDAOImpl implements UserDAO{

      Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public List<User> getAllUserDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User getUserDAO(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void insertUserDAO(User u) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteUserDAO(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void updateUserDAO(User u) {
        
        try{
            String updateSQL = "UPDATE user SET  username = ?,  password = ?,  level = ? WHERE id = ?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(updateSQL);
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());
            ps.setInt(3, u.getLevel());
            ps.setString(4, u.getId());
            ps.executeUpdate();    
 
        }
        catch(Exception ex){
             ex.printStackTrace();
        }
        
        
        
        
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User getUserDAO(String username, String pass) {
        
         User u = new User();
        try{
            String SQL = "SELECT * FROM USER WHERE   username=? and  password = ? ";
           conn = DBConnection.openConnection();
           ps = conn.prepareStatement(SQL);
           ps.setString(1, username);
           ps.setString(2, pass);
           rs = ps.executeQuery();
           
           rs.next();
           //User u = new User(rs.getString("username"), rs.getString("id"), rs.getString("password") ,rs.getInt("level"));
               u.setUsername(rs.getString("username"));
              u.setId(rs.getString("id"));
              u.setPassword(rs.getString("password"));
              u.setLevel(rs.getInt("level"));
  
         
        }catch(Exception ex){
            
        } 
       
        
         return u;
        
        
        
       //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}

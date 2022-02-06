package DAO;

import DBUtility.DBConnection;
import Model.NewApplication;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDAOImpl implements UserDAO {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public List<User> getAllUserDAO() {

        List<User> ul = new ArrayList<User>();

        try {
            String SQL = "SELECT * FROM User";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            rs = ps.executeQuery();

            while (rs.next()) {
                User u = new User();
                u.setUsername(rs.getString("username"));
                u.setId(rs.getString("id"));
                u.setPassword(rs.getString("password"));
                u.setLevel(rs.getInt("level"));

                ul.add(u);
            }

        } catch (Exception ex) {
        }

        return ul;
    }

    @Override
    public User getUserDAO(String id) {
        User u = new User();

        try {
            String SQL = "SELECT * FROM USER WHERE  id = ? ";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, id);
            rs = ps.executeQuery();

            rs.next();

            u.setUsername(rs.getString("username"));
            u.setId(rs.getString("id"));
            u.setPassword(rs.getString("password"));
            u.setLevel(rs.getInt("level"));

        } catch (Exception ex) {

        }
        return u;

//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void insertUserDAO(User u) {
        try {
            String SQL = "INSERT INTO user(username,id,password, level) values (?,?,?,?)";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);

            ps.setString(1, u.getUsername());
            ps.setString(2, u.getId());
            ps.setString(3, u.getPassword());
            ps.setInt(4, u.getLevel());
            ps.executeUpdate();

        } catch (Exception ex) {

        }

//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteUserDAO(String id) {
        try{
         String preparedQuery = "DELETE FROM user WHERE id = ?";
         conn = DBConnection.openConnection();
         ps = conn.prepareStatement(preparedQuery);
         ps.setString(1, id);
         ps.executeUpdate();
         
         }catch(Exception ex){
            
        } 
//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void updateUserDAO(User u) {

        try {
            String updateSQL = "UPDATE user SET  username = ?,  password = ?,  level = ? WHERE id = ?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(updateSQL);
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());
            ps.setInt(3, u.getLevel());
            ps.setString(4, u.getId());
            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User getUserDAO(String username, String pass) {

        User u = new User();
        try {
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

        } catch (Exception ex) {

        }

        return u;

        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

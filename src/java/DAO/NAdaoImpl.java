package DAO;

import DBUtility.DBConnection;
import Model.NewApplication;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class NAdaoImpl implements NAdao {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public List<NewApplication> getAllNAdao() {

        List<NewApplication> ul = new ArrayList<NewApplication>();

        try {
            String SQL = "SELECT * FROM NewApplication";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            rs = ps.executeQuery();

            while (rs.next()) {
                NewApplication u = new NewApplication();
                u.setId(rs.getString("id"));
                u.setName(rs.getString("name"));
                u.setSdate(rs.getString("Sdate"));
                u.setEdate(rs.getString("Edate"));
                u.setDays(rs.getInt("days"));
                u.setReason(rs.getString("reason"));
                u.setStatus(rs.getString("status"));
              
                ul.add(u);
            }

        } catch (Exception ex) {
        }

        return ul;
    }

    @Override
    public NewApplication getNAdao(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void insertNAdao(NewApplication u) {
       
            try{
            String sqlinsert= "INSERT INTO NewApplication (name, id, Sdate,Edate, days, status, reason ) values(?,?,?,?,?,?,?)";
            conn= DBConnection.openConnection();
            ps= conn.prepareStatement(sqlinsert);
            ps.setString(1, u.getName());
            ps.setString(2, u.getId());
            ps.setString(3, u.getSdate());
            ps.setString(4, u.getEdate());
            ps.setInt(5, u.getDays());
            ps.setString(6, u.getStatus());
            ps.setString(7, u.getReason());
         
            ps.executeUpdate();
            
        }
        catch(Exception ex){ex.printStackTrace();}
                
    }

    @Override
    public void deleteNAdao(String id) {
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
    public void updateNAdao(NewApplication u) {
        try{
         String preparedSQL = "UPDATE user SET name = ?, Sdate = ?, Edate=?, days=?, reason=?, status=? ,age = ? WHERE id = ?";
         conn = DBConnection.openConnection();
         ps= conn.prepareStatement(preparedSQL);
         
         ps.setString(1, u.getId());
         ps.setString(2, u.getName());
         ps.setString(3, u.getSdate());
         ps.setString(4, u.getEdate());
         ps.setInt(5, u.getDays());
         ps.setString(6, u.getReason());
         ps.setString(7, u.getStatus());
         ps.executeUpdate();
         
         
         
         }catch(Exception ex){
            
        }

//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

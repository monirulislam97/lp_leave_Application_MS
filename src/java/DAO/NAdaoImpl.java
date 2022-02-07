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

        List<NewApplication> nal = new ArrayList<NewApplication>();

        try {
            String SQL = "SELECT  *  FROM newapplication";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            rs = ps.executeQuery();

            while (rs.next()) {
                NewApplication na = new NewApplication(rs.getString("id"), rs.getString("name"),rs.getString("Sdate"),rs.getString("Edate"),rs.getInt("days"),rs.getString("reason"),rs.getString("status"));

//                u.setId(rs.getString("id"));
//                u.setName(rs.getString("name"));
//                u.setSdate(rs.getString("Sdate"));
//                u.setEdate(rs.getString("Edate"));
//                u.setDays(rs.getInt("days"));
//                u.setReason(rs.getString("reason"));
//                u.setStatus(rs.getString("status"));
na.setApplicationId(rs.getString("applicationId"));
              
                nal.add(na);
            }

        } catch (Exception ex) {
        }

        return nal;
        
    }

    @Override
    public NewApplication getNAdao(String applicationId) {
       
 NewApplication n= new NewApplication(); 
        try{
            String SQL = "SELECT * FROM newapplication WHERE  applicationId = ? ";
           conn = DBConnection.openConnection();
           ps = conn.prepareStatement(SQL);
           ps.setString(1, applicationId);
           rs = ps.executeQuery();
           
           rs.next();
                n.setId(rs.getString("id"));
                n.setName(rs.getString("name"));
                n.setSdate(rs.getString("Sdate"));
                n.setEdate(rs.getString("Edate"));
                n.setDays(rs.getInt("days"));
                n.setReason(rs.getString("reason"));
                n.setStatus(rs.getString("status"));
                n.setApplicationId(rs.getString("applicationId"));
         
        }catch(Exception ex){
            
        } 
        return n;




// throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void insertNAdao(NewApplication u) {
       
            try{
            String sqlinsert= "INSERT INTO newapplication (name, id, Sdate,Edate, days, status, reason ) values(?,?,?,?,?,?,?)";
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
    public void deleteNAdao(String applicationId) {
        try{
         String preparedQuery = "DELETE FROM newapplication WHERE applicationId = ?";
         conn = DBConnection.openConnection();
         ps = conn.prepareStatement(preparedQuery);
         ps.setString(1, applicationId);
         ps.executeUpdate();
         
         }catch(Exception ex){
            
        } 

//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void updateNAdao(NewApplication u) {
        try{
         String preparedSQL = "UPDATE newapplication SET name = ?, Sdate = ?, Edate=?, days=?, reason=?, status=? ,age = ? WHERE id = ?";
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

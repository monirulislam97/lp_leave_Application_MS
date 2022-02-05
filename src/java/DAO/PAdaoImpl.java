package DAO;

import DBUtility.DBConnection;
import Model.PreviousApplication;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PAdaoImpl implements PAdao {
    
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public List<PreviousApplication> getAllPAdao() {
        
        List<PreviousApplication> ul = new ArrayList<PreviousApplication>();
        
        try {
            String SQL = "SELECT * FROM PreviousApplication";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                PreviousApplication u = new PreviousApplication();
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
    public PreviousApplication getPAdao(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public void insertPAdao(PreviousApplication u) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public void deletePAdao(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}

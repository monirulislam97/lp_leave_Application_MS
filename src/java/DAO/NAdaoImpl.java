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
                
                u.setId(rs.getString("id"));
                u.setName(rs.getString("name"));
                 u.setSdate(rs.getString("SDate"));
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteNAdao(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void updateNAdao(NewApplication u) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

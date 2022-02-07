package DAO;

import DBUtility.DBConnection;
import Model.PreviousApplication;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
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
        PreviousApplication u = new PreviousApplication();
        try {
            String SQL = "SELECT * FROM PreviousApplication WHERE  id = ? ";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, id);
            rs = ps.executeQuery();

            rs.next();

            u.setId(rs.getString("id"));
            u.setName(rs.getString("name"));
            u.setSdate(rs.getString("Sdate"));
            u.setEdate(rs.getString("Edate"));
            u.setDays(rs.getInt("days"));
            u.setReason(rs.getString("reason"));
            u.setStatus(rs.getString("status"));

        } catch (Exception ex) {

        }
        return u;
//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void insertPAdao(PreviousApplication u) {
        try {

            String SQL = "INSERT INTO PreviousApplication(id,name,Sdate,Edate,days,reason,status) values (?,?,?,?,?,?,?)";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, u.getId());
            ps.setString(2, u.getName());
            ps.setString(3, u.getSdate());
            ps.setString(4, u.getEdate());
            ps.setInt(5, u.getDays());
            ps.setString(6, u.getReason());
            ps.setString(7, u.getStatus());
            ps.executeUpdate();

        } catch (Exception ex) {

        }

//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deletePAdao(String id) {

        try {
            String preparedQuery = "DELETE FROM PreviousApplication WHERE id = ?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(preparedQuery);
            ps.setString(1, id);
            ps.executeUpdate();

        } catch (Exception ex) {

        }

//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

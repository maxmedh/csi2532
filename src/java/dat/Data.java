/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dat;

import db.DBUtiliz;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Logger;
import java.util.logging.Level;
import model.athletes;
import model.installation;
import model.servicemedicaux;
import model.servicetransport;
import model.villageolympique;

/**
 *
 * @author Owner
 */
public class Data {

    //Village Olympique
    public void addNew(villageolympique vo) {
        try {
            PreparedStatement ps = DBUtiliz.getPreparedStatement("insert into public.villageolympique values(?,?,?)");
            ps.setString(1, vo.getAddress());
            ps.setString(2, vo.getCapacite());
            ps.setString(3, vo.getTelephone());

            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static List<villageolympique> getAllVO() {
        List<villageolympique> ls = new LinkedList<>();

        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement("select * from public.villageolympique").executeQuery();
            while (rs.next()) {
                villageolympique vo = new villageolympique(rs.getString(1), rs.getString(2), rs.getString(3));
                ls.add(vo);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    public static List<villageolympique> getVillageById(String address) {
        List<villageolympique> ls = new LinkedList<>();
        String sql = "select * from public.villageolympique where address like '%" + address + "%'";
        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement(sql).executeQuery();
            while (rs.next()) {
                villageolympique vo = new villageolympique(rs.getString(1), rs.getString(2), rs.getString(3));
                ls.add(vo);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    public void edit(String address, String capacite, String telephone) throws SQLException {
        String sql = "update public.villageolympique set address = ?,capacite = ?,telephone = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, address);
        ps.setString(2, capacite);
        ps.setString(3, telephone);

        ps.executeUpdate();
    }

    public void deleteVO(String address) throws SQLException {
        String sql = "delete from public.villageolympique where address = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, address);
        ps.executeUpdate();
    }
    
    //Service Transport
    public void addNew(servicetransport st){
        try{
            PreparedStatement ps = DBUtiliz.getPreparedStatement("insert into public.service_transport values(?,?,?,?,?)");
            ps.setString(1, st.getTid());
            ps.setString(2, st.getFrequence());
            ps.setString(3, st.getPtdepart());
            ps.setString(4, st.getPtarrive());
            ps.setString(5, st.getItineraire());
            
            ps.executeUpdate();
        }
        catch(SQLException ex){
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<servicetransport> getAllST() {
        List<servicetransport> ls = new LinkedList<>();

        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement("select * from public.service_transport").executeQuery();
            while (rs.next()) {
                servicetransport st = new servicetransport(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                ls.add(st);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }
    
    public static List<servicetransport> getServiceTById(String tid) {
        List<servicetransport> ls = new LinkedList<>();
        String sql = "select * from public.service_transport where tid like '%" + tid + "%'";
        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement(sql).executeQuery();
            while (rs.next()) {
                servicetransport st = new servicetransport(rs.getString(1), rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5));
                ls.add(st);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }
    
    public void edit(String tid, String frequence, String ptdepart, String ptarrive, String itineraire) throws SQLException {
        String sql = "update public.service_transport set tid = ?,frequence = ?,ptdepart = ?,ptarrive = ?,itineraire = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, tid);
        ps.setString(2, frequence);
        ps.setString(3, ptdepart);
        ps.setString(4, ptarrive);
        ps.setString(5, itineraire);

        ps.executeUpdate();
    }
    
    public void deleteST(String tid) throws SQLException {
        String sql = "delete from public.service_transport where tid = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, tid);
        ps.executeUpdate();
    }
    
    //Service Medicaux
    public void addNew(servicemedicaux sm){
        try{
            PreparedStatement ps = DBUtiliz.getPreparedStatement("insert into public.service_medicaux values(?,?,?,?)");
            ps.setString(1, sm.getDescription());
            ps.setString(2, sm.getNumerotelephone());
            ps.setString(3, sm.getAdresse());
            ps.setString(4, sm.getNomsm());
            
            ps.executeUpdate();
        }
        catch(SQLException ex){
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     
    public static List<servicemedicaux> getAllSM() {
        List<servicemedicaux> ls = new LinkedList<>();

        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement("select * from public.service_medicaux").executeQuery();
            while (rs.next()) {
                servicemedicaux sm = new servicemedicaux(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                ls.add(sm);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }
    
    public static List<servicemedicaux> getServiceMById(String nomsm) {
        List<servicemedicaux> ls = new LinkedList<>();
        String sql = "select * from public.service_medicaux where nomsm like '%" + nomsm + "%'";
        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement(sql).executeQuery();
            while (rs.next()) {
                servicemedicaux sm = new servicemedicaux(rs.getString(1), rs.getString(2), rs.getString(3),rs.getString(4));
                ls.add(sm);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }
    
    public void edit(String description, String numerotelephone, String adresse, String nomsm) throws SQLException {
        String sql = "update public.service_medicaux set description = ?,numerotelephone = ?,adresse = ?,nomsm = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, description);
        ps.setString(2, numerotelephone);
        ps.setString(3, adresse);
        ps.setString(4, nomsm);

        ps.executeUpdate();
    }
    
    public void deleteSM(String nomsm) throws SQLException {
        String sql = "delete from public.service_medicaux where nomsm = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, nomsm);
        ps.executeUpdate();
    }
    
    //Installation
    public void addNew(installation i){
        try{
            PreparedStatement ps = DBUtiliz.getPreparedStatement("insert into public.installation values(?,?,?,?,?,?)");
            ps.setString(1, i.getIid());
            ps.setString(2, i.getNom());
            ps.setString(3, i.getCapacite());
            ps.setString(4, i.getAddresse());
            ps.setString(5, i.getUsage());
            ps.setString(6, i.getDescription());
              
            ps.executeUpdate();
        }
        catch(SQLException ex){
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<installation> getAllI() {
        List<installation> ls = new LinkedList<>();

        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement("select * from public.installation").executeQuery();
            while (rs.next()) {
                installation i = new installation(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                ls.add(i);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }
    
    public static List<installation> getInstallationById(String iid) {
        List<installation> ls = new LinkedList<>();
        String sql = "select * from public.installation where iid like '%" + iid + "%'";
        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement(sql).executeQuery();
            while (rs.next()) {
                installation i = new installation(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                ls.add(i);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }
    
    public void edit(String iid, String nom, String capacite, String addresse, String usage, String description) throws SQLException {
        String sql = "update public.installation set iid = ?,nom = ?,capacite = ?,addresse = ?,usage = ?,description = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, iid);
        ps.setString(2, nom);
        ps.setString(3, capacite);
        ps.setString(4, addresse);
        ps.setString(5, usage);
        ps.setString(6, description);

        ps.executeUpdate();
    }
     
    public void deleteI(String iid) throws SQLException {
        String sql = "delete from public.installation where iid = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, iid);
        ps.executeUpdate();
    }
    
    //Athletes
    public void addNew(athletes a){
        try{
            PreparedStatement ps = DBUtiliz.getPreparedStatement("insert into public.athletes values(?,?,?,?,?,?,?)");
            ps.setString(1, a.getPid());
            ps.setString(2, a.getPrenom());
            ps.setString(3, a.getNom());
            ps.setString(4, a.getAdressevillage());
            ps.setString(5, a.getAdressepermanente());
            ps.setString(6, a.getNationalite());
            ps.setString(7, a.getMedaille());
              
            ps.executeUpdate();
        }
        catch(SQLException ex){
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<athletes> getAllA() {
        List<athletes> ls = new LinkedList<>();

        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement("select * from public.athletes").executeQuery();
            while (rs.next()) {
                athletes a = new athletes(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
                ls.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }
    
    public static List<athletes> getAthletesById(String pid) {
        List<athletes> ls = new LinkedList<>();
        String sql = "select * from public.athletes where pid like '%" + pid + "%'";
        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement(sql).executeQuery();
            while (rs.next()) {
                athletes a = new athletes(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
                ls.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }
    
    
}

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
import model.disciplines;
import model.employesducojo;
import model.installation;
import model.officiels;
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

    public void editVO(String address, String capacite, String telephone) throws SQLException {
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
    public void addNew(servicetransport st) {
        try {
            PreparedStatement ps = DBUtiliz.getPreparedStatement("insert into public.service_transport values(?,?,?,?,?)");
            ps.setString(1, st.getTid());
            ps.setString(2, st.getFrequence());
            ps.setString(3, st.getPtdepart());
            ps.setString(4, st.getPtarrive());
            ps.setString(5, st.getItineraire());

            ps.executeUpdate();
        } catch (SQLException ex) {
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
                servicetransport st = new servicetransport(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                ls.add(st);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    public void editST(String tid, String frequence, String ptdepart, String ptarrive, String itineraire) throws SQLException {
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
    public void addNew(servicemedicaux sm) {
        try {
            PreparedStatement ps = DBUtiliz.getPreparedStatement("insert into public.service_medicaux values(?,?,?,?)");
            ps.setString(1, sm.getDescription());
            ps.setString(2, sm.getNumerotelephone());
            ps.setString(3, sm.getAdresse());
            ps.setString(4, sm.getNomsm());

            ps.executeUpdate();
        } catch (SQLException ex) {
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
                servicemedicaux sm = new servicemedicaux(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                ls.add(sm);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    public void editSM(String description, String numerotelephone, String adresse, String nomsm) throws SQLException {
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
    public void addNew(installation i) {
        try {
            PreparedStatement ps = DBUtiliz.getPreparedStatement("insert into public.installation values(?,?,?,?,?,?)");
            ps.setString(1, i.getIid());
            ps.setString(2, i.getNom());
            ps.setString(3, i.getCapacite());
            ps.setString(4, i.getAddresse());
            ps.setString(5, i.getUsage());
            ps.setString(6, i.getDescription());

            ps.executeUpdate();
        } catch (SQLException ex) {
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

    public void editI(String iid, String nom, String capacite, String addresse, String usage, String description) throws SQLException {
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
    public void addNew(athletes a) {
        try {
            PreparedStatement ps = DBUtiliz.getPreparedStatement("insert into public.athletes values(?,?,?,?,?,?,?)");
            ps.setString(1, a.getAid());
            ps.setString(2, a.getPrenom());
            ps.setString(3, a.getNom());
            ps.setString(4, a.getAdressevillage());
            ps.setString(5, a.getAdressepermanente());
            ps.setString(6, a.getNationalite());
            ps.setString(7, a.getMedaille());

            ps.executeUpdate();
        } catch (SQLException ex) {
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

    public static List<athletes> getAthletesById(String aid) {
        List<athletes> ls = new LinkedList<>();
        String sql = "select * from public.athletes where aid like '%" + aid + "%'";
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

    public void editA(String aid, String prenom, String nom, String adressevillage, String adressepermanente, String nationalite, String medaille) throws SQLException {
        String sql = "update public.athletes set aid = ?,prenom = ?,nom = ?,adressevillage = ?,adressepermanente = ?,nationalite = ?,medaille = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, aid);
        ps.setString(2, prenom);
        ps.setString(3, nom);
        ps.setString(4, adressevillage);
        ps.setString(5, adressepermanente);
        ps.setString(6, nationalite);
        ps.setString(7, medaille);

        ps.executeUpdate();
    }

    public void deleteA(String aid) throws SQLException {
        String sql = "delete from public.athletes where aid = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, aid);
        ps.executeUpdate();
    }

    //EmployesDuCojo
    public void addNew(employesducojo e) {
        try {
            PreparedStatement ps = DBUtiliz.getPreparedStatement("insert into public.employesducojo values(?,?,?,?,?,?)");
            ps.setString(1, e.getEid());
            ps.setString(2, e.getPrenom());
            ps.setString(3, e.getNom());
            ps.setString(4, e.getAdressevillage());
            ps.setString(5, e.getAdressepermanente());
            ps.setString(6, e.getNumerotelephone());

            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static List<employesducojo> getAllEDC() {
        List<employesducojo> ls = new LinkedList<>();

        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement("select * from public.employesducojo").executeQuery();
            while (rs.next()) {
                employesducojo e = new employesducojo(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                ls.add(e);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    public static List<employesducojo> getEmployesById(String eid) {
        List<employesducojo> ls = new LinkedList<>();
        String sql = "select * from public.employesducojo where eid like '%" + eid + "%'";
        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement(sql).executeQuery();
            while (rs.next()) {
                employesducojo e = new employesducojo(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                ls.add(e);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    public void editEDC(String eid, String prenom, String nom, String adressevillage, String adressepermanente, String numerotelephone) throws SQLException {
        String sql = "update public.employesducojo set eid = ?,prenom = ?,nom = ?,adressevillage = ?,adressepermanente = ?,numerotelephone = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, eid);
        ps.setString(2, prenom);
        ps.setString(3, nom);
        ps.setString(4, adressevillage);
        ps.setString(5, adressepermanente);
        ps.setString(6, numerotelephone);

        ps.executeUpdate();
    }

    public void deleteEDC(String eid) throws SQLException {
        String sql = "delete from public.employesducojo where eid = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, eid);
        ps.executeUpdate();
    }

    //Officiels
    public void addNew(officiels o) {
        try {
            PreparedStatement ps = DBUtiliz.getPreparedStatement("insert into public.officiels values(?,?,?,?,?)");
            ps.setString(1, o.getOid());
            ps.setString(2, o.getPrenom());
            ps.setString(3, o.getNom());
            ps.setString(4, o.getAdressevillage());
            ps.setString(5, o.getType());

            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static List<officiels> getAllO() {
        List<officiels> ls = new LinkedList<>();

        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement("select * from public.officiels").executeQuery();
            while (rs.next()) {
                officiels o = new officiels(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                ls.add(o);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    public static List<officiels> getOfficielsById(String oid) {
        List<officiels> ls = new LinkedList<>();
        String sql = "select * from public.officiels where oid like '%" + oid + "%'";
        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement(sql).executeQuery();
            while (rs.next()) {
                officiels o = new officiels(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                ls.add(o);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    public void editO(String oid, String prenom, String nom, String adressevillage, String type) throws SQLException {
        String sql = "update public.officiels set oid = ?,prenom = ?,nom = ?,adressevillage = ?,type = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, oid);
        ps.setString(2, prenom);
        ps.setString(3, nom);
        ps.setString(4, adressevillage);
        ps.setString(5, type);

        ps.executeUpdate();
    }

    public void deleteO(String oid) throws SQLException {
        String sql = "delete from public.officiels where oid = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, oid);
        ps.executeUpdate();
    }

    //Disciplines
    public void addNew(disciplines d) {
        try {
            PreparedStatement ps = DBUtiliz.getPreparedStatement("insert into public.disciplines values(?,?)");
            ps.setString(1, d.getNomd());
            ps.setString(2, d.getEpreuves());

            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static List<disciplines> getAllD() {
        List<disciplines> ls = new LinkedList<>();

        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement("select * from public.disciplines").executeQuery();
            while (rs.next()) {
                disciplines d = new disciplines(rs.getString(1), rs.getString(2));
                ls.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    public static List<disciplines> getDisciplinesById(String nomd) {
        List<disciplines> ls = new LinkedList<>();
        String sql = "select * from public.disciplines where nomd like '%" + nomd + "%'";
        try {
            ResultSet rs;
            rs = DBUtiliz.getPreparedStatement(sql).executeQuery();
            while (rs.next()) {
                disciplines d = new disciplines(rs.getString(1), rs.getString(2));
                ls.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    public void editD(String nomd, String epreuves) throws SQLException {
        String sql = "update public.disciplines set nomd = ?,epreuves = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, nomd);
        ps.setString(2, epreuves);

        ps.executeUpdate();
    }

    public void deleteD(String nomd) throws SQLException {
        String sql = "delete from public.disciplines where nomd = ?";
        PreparedStatement ps;
        ps = DBUtiliz.getPreparedStatement(sql);
        ps.setString(1, nomd);
        ps.executeUpdate();
    }
}

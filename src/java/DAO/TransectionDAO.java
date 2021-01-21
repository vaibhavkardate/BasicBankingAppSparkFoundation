/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Transectionentity;
import conn.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author vaibh
 */
public class TransectionDAO {
 
    
    public static List<Transectionentity> getAllTransection() throws SQLException
    {
        ArrayList<Transectionentity> tentity=new ArrayList<>();
        
        Connection conn=DBConnection.getConnection();
        Statement st  =  conn.createStatement();
        ResultSet rs= st.executeQuery("select * from transections");
        
        while(rs.next())
        {
            Transectionentity t=new Transectionentity();
            t.setTid(rs.getInt("tid"));
            t.setFrom(rs.getInt("byfrom"));
            t.setTo(rs.getInt("TOPERSON"));
            t.setD(rs.getTimestamp("d"));
            t.setAmount(rs.getDouble("AMOUNT"));
            tentity.add(t);
        }
        return tentity;
    }
    
    
    public static boolean savetransection(int froms,int tos,double amounts)throws SQLException{
          Connection conn=DBConnection.getConnection();
        Statement st  =  conn.createStatement();
        ResultSet rs= st.executeQuery("select max(TID) from transections");
        rs.next();
        int tid=rs.getInt(1);
        
        PreparedStatement ps=     conn.prepareStatement("update CUSTOMER set BALANCE=BALANCE-? where cid=?");
                   ps.setDouble(1, amounts);
                   ps.setInt(2, froms);
        ps.executeUpdate();
        
        
       ps= conn.prepareStatement("update CUSTOMER set BALANCE=BALANCE+? where cid=?");
                   ps.setDouble(1, amounts);
                   ps.setInt(2, tos);
        ps.executeUpdate();
      
        ps=     conn.prepareStatement("insert into TRANSECTIONS values(?,?,?,?,?)");
        ps.setInt(1, tid+1);
        ps.setInt(2, froms);
        ps.setInt(3, tos);
        ps.setTimestamp(4, new Timestamp(new Date().getTime()));
        ps.setDouble(5, amounts);
        ps.executeUpdate();
        return true;
    }
}

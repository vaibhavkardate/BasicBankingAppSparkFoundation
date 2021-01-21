/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.CustomerEntity;
import conn.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vaibh
 */
public class CustomerDAO {
    
    
    public static  List<CustomerEntity> getAllCustomer()throws SQLException
    {
        Connection conn=  DBConnection.getConnection();
        Statement st      = conn.createStatement();
        ResultSet rs  = st.executeQuery("select cid,CFNAME,CLNAME,DESCRIPTION,email from customer");
        List<CustomerEntity> customerlist=new ArrayList<>();
        while(rs.next())
        {
            CustomerEntity c=new CustomerEntity();
            c.setCid(rs.getInt("cid"));
            c.setCFNAME(rs.getString("CFNAME"));
            c.setCLNAME(rs.getString("CLNAME"));
            c.setDESCRIPTION(rs.getString("DESCRIPTION"));
           c.setEMAIL(rs.getString("email"));
            
            customerlist.add(c);
            
        }
        return customerlist;
    }
    
     public static  List<CustomerEntity> getAllCustomercidname()throws SQLException
    {
        Connection conn=  DBConnection.getConnection();
        Statement st      =conn.createStatement();
        ResultSet rs  = st.executeQuery("select cid,CFNAME  from customer");
        List<CustomerEntity> customerlist=new ArrayList<>();
        while(rs.next())
        {
            CustomerEntity c=new CustomerEntity();
            c.setCid(rs.getInt("cid"));
            c.setCFNAME(rs.getString("CFNAME"));
             customerlist.add(c);
            
        }
        return customerlist;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     public static CustomerEntity getCustomerDetailById(int a)throws SQLException
    {
        Connection conn=  DBConnection.getConnection();
        PreparedStatement ps      =conn.prepareStatement("select * from customer where cid=?");
        ps.setInt(1, a);
        ResultSet rs  = ps.executeQuery();
         CustomerEntity c=new CustomerEntity();
        while(rs.next())
        {
          c.setCid(rs.getInt("cid"));
            c.setCFNAME(rs.getString("CFNAME"));
            c.setCLNAME(rs.getString("CLNAME"));
            c.setDESCRIPTION(rs.getString("DESCRIPTION"));
            c.setGENDER(rs.getString("GENDER"));
            c.setSTATUS(rs.getString("STATUS"))  ;
            c.setADDRESH(rs.getString("ADDRESH"));
            c.setBALANCE(rs.getDouble("BALANCE"));
           c.setEMAIL(rs.getString("email"));
        }
        return c;
    }

    public static double getBalanceBybyid(int froms)throws SQLException{
       
     Connection conn=  DBConnection.getConnection();
        PreparedStatement ps      =conn.prepareStatement("select BALANCE from customer where cid=?");
        ps.setInt(1, froms);
        ResultSet rs  = ps.executeQuery();
        
        while(rs.next())
        {
           return rs.getDouble("BALANCE");
        }
        return 1;
    }
 }

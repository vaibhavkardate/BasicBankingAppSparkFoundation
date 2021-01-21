package Entity;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author vaibh
 */
public class CustomerEntity {
    
    private int cid;
    private String CFNAME;
    private String CLNAME;
    private String DESCRIPTION;
    private String STATUS;
    private String GENDER;
    private String ADDRESH;
    private String EMAIL;
    private double BALANCE; 

    public CustomerEntity(int cid, String CFNAME, String CLNAME, String DESCRIPTION, String STATUS, String GENDER, String ADDRESH, String EMAIL, double BALANCE) {
        this.cid = cid;
        this.CFNAME = CFNAME;
        this.CLNAME = CLNAME;
        this.DESCRIPTION = DESCRIPTION;
        this.STATUS = STATUS;
        this.GENDER = GENDER;
        this.ADDRESH = ADDRESH;
        this.EMAIL = EMAIL;
        this.BALANCE = BALANCE;
    }

    public CustomerEntity() {
    }

    @Override
    public String toString() {
        return "CustomerEntity{" + "cid=" + cid + ", CFNAME=" + CFNAME + ", CLNAME=" + CLNAME + ", DESCRIPTION=" + DESCRIPTION + ", STATUS=" + STATUS + ", GENDER=" + GENDER + ", ADDRESH=" + ADDRESH + ", EMAIL=" + EMAIL + ", BALANCE=" + BALANCE + '}';
    }

    public int getCid() {
        return cid;
    }

    public String getCFNAME() {
        return CFNAME;
    }

    public String getCLNAME() {
        return CLNAME;
    }

    public String getDESCRIPTION() {
        return DESCRIPTION;
    }

    public String getSTATUS() {
        return STATUS;
    }

    public String getGENDER() {
        return GENDER;
    }

    public String getADDRESH() {
        return ADDRESH;
    }

    public String getEMAIL() {
        return EMAIL;
    }

    public double getBALANCE() {
        return BALANCE;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public void setCFNAME(String CFNAME) {
        this.CFNAME = CFNAME;
    }

    public void setCLNAME(String CLNAME) {
        this.CLNAME = CLNAME;
    }

    public void setDESCRIPTION(String DESCRIPTION) {
        this.DESCRIPTION = DESCRIPTION;
    }

    public void setSTATUS(String STATUS) {
        this.STATUS = STATUS;
    }

    public void setGENDER(String GENDER) {
        this.GENDER = GENDER;
    }

    public void setADDRESH(String ADDRESH) {
        this.ADDRESH = ADDRESH;
    }

    public void setEMAIL(String EMAIL) {
        this.EMAIL = EMAIL;
    }

    public void setBALANCE(double BALANCE) {
        this.BALANCE = BALANCE;
    }
    
    
    
}

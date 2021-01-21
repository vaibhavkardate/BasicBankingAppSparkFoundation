/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.util.Date;

/**
 *
 * @author vaibh
 */
public class Transectionentity {
    private int tid;
    private int from;
    private int to;
    private Date d;
    private double amount;

    public Transectionentity(int tid, int from, int to, Date d, double amount) {
        this.tid = tid;
        this.from = from;
        this.to = to;
        this.d = d;
        this.amount = amount;
    }

    public Transectionentity() {
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public int getFrom() {
        return from;
    }

    public void setFrom(int from) {
        this.from = from;
    }

    public int getTo() {
        return to;
    }

    public void setTo(int to) {
        this.to = to;
    }

    public Date getD() {
        return d;
    }

    public void setD(Date d) {
        this.d = d;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "Transectionentity{" + "tid=" + tid + ", from=" + from + ", to=" + to + ", d=" + d + ", amount=" + amount + '}';
    }
    
    
    
}

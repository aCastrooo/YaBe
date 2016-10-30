package com.cs336.pkg;

import java.sql.Timestamp;

/**
 * Created by Baltsar on 8/11/2016.
 */
public class Auction {
    private int auctionId;
    private String ownerEmail;
    private int reserve;
    private int autowin;
    private int itemid;
    private String winnerEmail;
    private Timestamp openTime;
    private Timestamp closeTime;

    public Auction(int auctionId, String ownerEmail, int itemid, int reserve, int autowin, String winnerEmail, Timestamp openTime, Timestamp closeTime) {
        this.auctionId = auctionId;
        this.ownerEmail = ownerEmail;
        this.itemid = itemid;
        this.reserve = reserve;
        this.autowin = autowin;
        this.winnerEmail = winnerEmail;
        this.openTime = openTime;
        this.closeTime = closeTime;
        this.itemid = itemid;
    }

    public int getAuctionId() {
        return auctionId;
    }

    public void setAuctionId(int auctionId) {
        this.auctionId = auctionId;
    }
    
    public int getItemId() {
        return itemid;
    }

    public void setItemId(int itemid) {
        this.itemid = itemid;
    }

    public String getOwnerEmail() {
        return ownerEmail;
    }

    public void setOwnerEmail(String ownerEmail) {
        this.ownerEmail = ownerEmail;
    }

    public int getReserve() {
        return reserve;
    }

    public void setReserve(int reserve) {
        this.reserve = reserve;
    }

    public int getAutowin() {
        return autowin;
    }

    public void setAutowin(int autowin) {
        this.autowin = autowin;
    }

    public String getWinnerEmail() {
        return winnerEmail;
    }

    public void setWinnerEmail(String winnerEmail) {
        this.winnerEmail = winnerEmail;
    }

    public Timestamp getOpenTime() {
        return openTime;
    }

    public void setOpenTime(Timestamp openTime) {
        this.openTime = openTime;
    }

    public Timestamp getCloseTime() {
        return closeTime;
    }

    public void setCloseTime(Timestamp closeTime) {
        this.closeTime = closeTime;
    }
}

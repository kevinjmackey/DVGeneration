package com.yrc.mcc.data.file.generated;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Arrays;

import com.yrc.mcc.core.core.DateType;
import com.yrc.mcc.core.core.TimeType;
import com.yrc.mcc.core.file.DbField;
import com.yrc.mcc.core.file.M204Rec;

@SuppressWarnings("serial")
public class Rmth_Generated extends M204Rec
{
    public DateType getCreateDate() { return getDateType("CREATE_DATE"); }
    public void setCreateDate(Object value) { setDateType("CREATE_DATE", value); }
    public DbField getCreateDateDbField() { return getDbField("CREATE_DATE"); }

    public String getInvBusTag() { return getString("INV_BUS_TAG"); }
    public void setInvBusTag(Object value) { setString("INV_BUS_TAG", value); }
    public DbField getInvBusTagDbField() { return getDbField("INV_BUS_TAG"); }

    public char getInvScacRole() { return getChar("INV_SCAC_ROLE"); }
    public void setInvScacRole(Object value) { setChar("INV_SCAC_ROLE", value); }
    public DbField getInvScacRoleDbField() { return getDbField("INV_SCAC_ROLE"); }

    public String getPmaTag() { return getString("PMA_TAG"); }
    public void setPmaTag(Object value) { setString("PMA_TAG", value); }
    public DbField getPmaTagDbField() { return getDbField("PMA_TAG"); }

    public DateType getPurgeAfterDate() { return getDateType("PURGE_AFTER_DATE"); }
    public void setPurgeAfterDate(Object value) { setDateType("PURGE_AFTER_DATE", value); }
    public DbField getPurgeAfterDateDbField() { return getDbField("PURGE_AFTER_DATE"); }

    public int getRmtAcctCode() { return getInt("RMT_ACCT_CODE"); }
    public void setRmtAcctCode(Object value) { setInt("RMT_ACCT_CODE", value); }
    public DbField getRmtAcctCodeDbField() { return getDbField("RMT_ACCT_CODE"); }

    public String getRmtAcctCodeTerm() { return getString("RMT_ACCT_CODE_TERM"); }
    public void setRmtAcctCodeTerm(Object value) { setString("RMT_ACCT_CODE_TERM", value); }
    public DbField getRmtAcctCodeTermDbField() { return getDbField("RMT_ACCT_CODE_TERM"); }

    public String getRmtAdvice() { return getString("RMT_ADVICE"); }
    public void setRmtAdvice(Object value) { setString("RMT_ADVICE", value); }
    public DbField getRmtAdviceDbField() { return getDbField("RMT_ADVICE"); }

    public double getRmtAmt() { return getDouble("RMT_AMT"); }
    public void setRmtAmt(Object value) { setDouble("RMT_AMT", value); }
    public DbField getRmtAmtDbField() { return getDbField("RMT_AMT"); }

    public DateType getRmtApplDate() { return getDateType("RMT_APPL_DATE"); }
    public void setRmtApplDate(Object value) { setDateType("RMT_APPL_DATE", value); }
    public DbField getRmtApplDateDbField() { return getDbField("RMT_APPL_DATE"); }

    public String getRmtCurr() { return getString("RMT_CURR"); }
    public void setRmtCurr(Object value) { setCharString("RMT_CURR", value); }
    public DbField getRmtCurrDbField() { return getDbField("RMT_CURR"); }

    public String getRmtPayerName() { return getString("RMT_PAYER_NAME"); }
    public void setRmtPayerName(Object value) { setString("RMT_PAYER_NAME", value); }
    public DbField getRmtPayerNameDbField() { return getDbField("RMT_PAYER_NAME"); }

    public String getRmtRefNbr() { return getString("RMT_REF_NBR"); }
    public void setRmtRefNbr(Object value) { setString("RMT_REF_NBR", value); }
    public DbField getRmtRefNbrDbField() { return getDbField("RMT_REF_NBR"); }

    public String getRmtRelatedRmtTag() { return getString("RMT_RELATED_RMT_TAG"); }
    public void setRmtRelatedRmtTag(Object value) { setString("RMT_RELATED_RMT_TAG", value); }
    public DbField getRmtRelatedRmtTagDbField() { return getDbField("RMT_RELATED_RMT_TAG"); }

    public char getRmtShpPayTrms() { return getChar("RMT_SHP_PAY_TRMS"); }
    public void setRmtShpPayTrms(Object value) { setChar("RMT_SHP_PAY_TRMS", value); }
    public DbField getRmtShpPayTrmsDbField() { return getDbField("RMT_SHP_PAY_TRMS"); }

    public String getRmtStatus() { return getString("RMT_STATUS"); }
    public void setRmtStatus(Object value) { setCharString("RMT_STATUS", value); }
    public DbField getRmtStatusDbField() { return getDbField("RMT_STATUS"); }

    public String getRmtTag() { return getString("RMT_TAG"); }
    public void setRmtTag(Object value) { setString("RMT_TAG", value); }
    public DbField getRmtTagDbField() { return getDbField("RMT_TAG"); }

    public String getShpPrimaryTag() { return getString("SHP_PRIMARY_TAG"); }
    public void setShpPrimaryTag(Object value) { setString("SHP_PRIMARY_TAG", value); }
    public DbField getShpPrimaryTagDbField() { return getDbField("SHP_PRIMARY_TAG"); }

    public String getWgpIdNbr() { return getString("WGP_ID_NBR"); }
    public void setWgpIdNbr(Object value) { setString("WGP_ID_NBR", value); }
    public DbField getWgpIdNbrDbField() { return getDbField("WGP_ID_NBR"); }


    public void getRmthPValues(com.yrc.mcc.data.model.RmthPTable rmthP) {
        setRecordKey(rmthP.getRecordKey());
        setModificationCount(rmthP.getModificationCount());
        setDtsDttmsp(rmthP.getDtsDttmsp());
        setCreateTs(rmthP.getCreateTs());
        setModifyTs(rmthP.getModifyTs());
        setModifyId(rmthP.getModifyId());
        setCreateDate(rmthP.getCreateDate());
        setInvBusTag(rmthP.getInvBusTag());
        setInvScacRole(rmthP.getInvScacRole());
        setPmaTag(rmthP.getPmaTag());
        setPurgeAfterDate(rmthP.getPurgeAfterDate());
        setRmtAcctCode(rmthP.getRmtAcctCode());
        setRmtAcctCodeTerm(rmthP.getRmtAcctCodeTerm());
        setRmtAdvice(rmthP.getRmtAdvice());
        setRmtAmt(rmthP.getRmtAmt());
        setRmtApplDate(rmthP.getRmtApplDate());
        setRmtCurr(rmthP.getRmtCurr());
        setRmtPayerName(rmthP.getRmtPayerName());
        setRmtRefNbr(rmthP.getRmtRefNbr());
        setRmtRelatedRmtTag(rmthP.getRmtRelatedRmtTag());
        setRmtShpPayTrms(rmthP.getRmtShpPayTrms());
        setRmtStatus(rmthP.getRmtStatus());
        setRmtTag(rmthP.getRmtTag());
        setShpPrimaryTag(rmthP.getShpPrimaryTag());
        setWgpIdNbr(rmthP.getWgpIdNbr());
    }

    public void setRmthPValues(com.yrc.mcc.data.model.RmthPTable rmthP) {
        rmthP.setRecordKey(getRecordKey());
        rmthP.setModificationCount(getModificationCount());
        rmthP.setDtsDttmsp(getDtsDttmsp());
        rmthP.setCreateTs(getCreateTs());
        rmthP.setModifyTs(getModifyTs());
        rmthP.setModifyId(getModifyId());
        rmthP.setCreateDate(getCreateDateDbField().get().getDate());
        rmthP.setInvBusTag(getInvBusTagDbField().get().getString());
        rmthP.setInvScacRole(getInvScacRoleDbField().get().getCharacter());
        rmthP.setPmaTag(getPmaTagDbField().get().getString());
        rmthP.setPurgeAfterDate(getPurgeAfterDateDbField().get().getDate());
        rmthP.setRmtAcctCode(getRmtAcctCodeDbField().get().getInteger());
        rmthP.setRmtAcctCodeTerm(getRmtAcctCodeTermDbField().get().getString());
        rmthP.setRmtAdvice(getRmtAdviceDbField().get().getString());
        rmthP.setRmtAmt(getRmtAmtDbField().get().getDecimal());
        rmthP.setRmtApplDate(getRmtApplDateDbField().get().getDate());
        rmthP.setRmtCurr(getRmtCurrDbField().get().getString());
        rmthP.setRmtPayerName(getRmtPayerNameDbField().get().getString());
        rmthP.setRmtRefNbr(getRmtRefNbrDbField().get().getString());
        rmthP.setRmtRelatedRmtTag(getRmtRelatedRmtTagDbField().get().getString());
        rmthP.setRmtShpPayTrms(getRmtShpPayTrmsDbField().get().getCharacter());
        rmthP.setRmtStatus(getRmtStatusDbField().get().getString());
        rmthP.setRmtTag(getRmtTagDbField().get().getString());
        rmthP.setShpPrimaryTag(getShpPrimaryTagDbField().get().getString());
        rmthP.setWgpIdNbr(getWgpIdNbrDbField().get().getString());
    }
    public void getRmthRValues(com.yrc.mcc.data.model.RmthRTable rmthR) {
        setRecordKey(rmthR.getRecordKey());
        setModificationCount(rmthR.getModificationCount());
        setDtsDttmsp(rmthR.getDtsDttmsp());
        setCreateTs(rmthR.getCreateTs());
        setModifyTs(rmthR.getModifyTs());
        setModifyId(rmthR.getModifyId());
        setCreateDate(rmthR.getCreateDate());
        setInvBusTag(rmthR.getInvBusTag());
        setPmaTag(rmthR.getPmaTag());
        setPurgeAfterDate(rmthR.getPurgeAfterDate());
        setRmtAcctCode(rmthR.getRmtAcctCode());
        setRmtAcctCodeTerm(rmthR.getRmtAcctCodeTerm());
        setRmtAdvice(rmthR.getRmtAdvice());
        setRmtAmt(rmthR.getRmtAmt());
        setRmtApplDate(rmthR.getRmtApplDate());
        setRmtCurr(rmthR.getRmtCurr());
        setRmtPayerName(rmthR.getRmtPayerName());
        setRmtRefNbr(rmthR.getRmtRefNbr());
        setRmtRelatedRmtTag(rmthR.getRmtRelatedRmtTag());
        setRmtShpPayTrms(rmthR.getRmtShpPayTrms());
        setRmtStatus(rmthR.getRmtStatus());
        setRmtTag(rmthR.getRmtTag());
        setShpPrimaryTag(rmthR.getShpPrimaryTag());
        setWgpIdNbr(rmthR.getWgpIdNbr());
    }

    public void setRmthRValues(com.yrc.mcc.data.model.RmthRTable rmthR) {
        rmthR.setRecordKey(getRecordKey());
        rmthR.setModificationCount(getModificationCount());
        rmthR.setDtsDttmsp(getDtsDttmsp());
        rmthR.setCreateTs(getCreateTs());
        rmthR.setModifyTs(getModifyTs());
        rmthR.setModifyId(getModifyId());
        rmthR.setCreateDate(getCreateDateDbField().get().getDate());
        rmthR.setInvBusTag(getInvBusTagDbField().get().getString());
        rmthR.setPmaTag(getPmaTagDbField().get().getString());
        rmthR.setPurgeAfterDate(getPurgeAfterDateDbField().get().getDate());
        rmthR.setRmtAcctCode(getRmtAcctCodeDbField().get().getInteger());
        rmthR.setRmtAcctCodeTerm(getRmtAcctCodeTermDbField().get().getString());
        rmthR.setRmtAdvice(getRmtAdviceDbField().get().getString());
        rmthR.setRmtAmt(getRmtAmtDbField().get().getDecimal());
        rmthR.setRmtApplDate(getRmtApplDateDbField().get().getDate());
        rmthR.setRmtCurr(getRmtCurrDbField().get().getString());
        rmthR.setRmtPayerName(getRmtPayerNameDbField().get().getString());
        rmthR.setRmtRefNbr(getRmtRefNbrDbField().get().getString());
        rmthR.setRmtRelatedRmtTag(getRmtRelatedRmtTagDbField().get().getString());
        rmthR.setRmtShpPayTrms(getRmtShpPayTrmsDbField().get().getCharacter());
        rmthR.setRmtStatus(getRmtStatusDbField().get().getString());
        rmthR.setRmtTag(getRmtTagDbField().get().getString());
        rmthR.setShpPrimaryTag(getShpPrimaryTagDbField().get().getString());
        rmthR.setWgpIdNbr(getWgpIdNbrDbField().get().getString());
    }


    public void getData(String table, int index, Object model) {
        switch (table) {
        case "RMTH_P":
            getRmthPValues((com.yrc.mcc.data.model.RmthPTable) model);
            break;
        case "RMTH_R":
            getRmthRValues((com.yrc.mcc.data.model.RmthRTable) model);
            break;
        }
    }

    public void setData(String table, int index, Object model) {
        switch (table) {
        case "RMTH_P":
            setRmthPValues((com.yrc.mcc.data.model.RmthPTable) model);
            break;
        case "RMTH_R":
            setRmthRValues((com.yrc.mcc.data.model.RmthRTable) model);
            break;
        }
    }

    public static HashMap<String, String> mainTables = new HashMap<String, String>();
    public static HashMap<String, String> childTables = new HashMap<String, String>();
    public static HashMap<String, Class<? extends Serializable>> tableClasses = new HashMap<String, Class<? extends Serializable>>();
    public static HashMap<String, String[]> dbMap = new HashMap<String, String[]>();
    public HashMap<String, String> getMainTables() { return mainTables; }
    public HashMap<String, String> getChildTables()  { return childTables; }
    public HashMap<String, Class<? extends Serializable>> getTableClasses()  { return tableClasses; }
    public HashMap<String, String[]> getDbMap() { return dbMap; }
    static {
        mainTables.put("RMTH_P", "P");
        tableClasses.put("RMTH_P", com.yrc.mcc.data.model.RmthPTable.class);

        mainTables.put("RMTH_R", "R");
        tableClasses.put("RMTH_R", com.yrc.mcc.data.model.RmthRTable.class);


        loadMapRmthP();
        loadMapRmthR();
    }

    private static void loadMapRmthP() {
        loadMap(dbMap, "P" ,"CREATE_DATE", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"INV_BUS_TAG", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"INV_SCAC_ROLE", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"PMA_TAG", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"PURGE_AFTER_DATE", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"RMT_ACCT_CODE", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"RMT_ACCT_CODE_TERM", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"RMT_ADVICE", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"RMT_AMT", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"RMT_APPL_DATE", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"RMT_CURR", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"RMT_PAYER_NAME", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"RMT_REF_NBR", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"RMT_RELATED_RMT_TAG", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"RMT_SHP_PAY_TRMS", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"RMT_STATUS", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"RMT_TAG", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"SHP_PRIMARY_TAG", "RMTH_P", "0");
        loadMap(dbMap, "P" ,"WGP_ID_NBR", "RMTH_P", "0");
    }

    private static void loadMapRmthR() {
        loadMap(dbMap, "R" ,"CREATE_DATE", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"INV_BUS_TAG", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"PMA_TAG", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"PURGE_AFTER_DATE", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"RMT_ACCT_CODE", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"RMT_ACCT_CODE_TERM", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"RMT_ADVICE", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"RMT_AMT", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"RMT_APPL_DATE", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"RMT_CURR", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"RMT_PAYER_NAME", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"RMT_REF_NBR", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"RMT_RELATED_RMT_TAG", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"RMT_SHP_PAY_TRMS", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"RMT_STATUS", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"RMT_TAG", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"SHP_PRIMARY_TAG", "RMTH_R", "0");
        loadMap(dbMap, "R" ,"WGP_ID_NBR", "RMTH_R", "0");
    }
}
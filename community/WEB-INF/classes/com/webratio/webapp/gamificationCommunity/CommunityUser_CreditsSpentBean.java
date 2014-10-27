package com.webratio.webapp.gamificationCommunity;

public class CommunityUser_CreditsSpentBean implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _OID;

    private java.math.BigDecimal value;

    public java.lang.Integer getOID() {
        return _OID;
    }

    public void setOID(java.lang.Integer _OID) {
        this._OID = _OID;
    }

    public java.math.BigDecimal getValue() {
        return value;
    }

    public void setValue(java.math.BigDecimal value) {
        this.value = value;
    }

    public String toString() {
        return (value != null) ? value.toString() : "";
    }
}

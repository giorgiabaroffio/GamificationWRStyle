package com.webratio.webapp.gamificationCommunity;

public class CommunityUser_CreditsAvailableBean implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _OID;

    private java.lang.Integer value;

    public java.lang.Integer getOID() {
        return _OID;
    }

    public void setOID(java.lang.Integer _OID) {
        this._OID = _OID;
    }

    public java.lang.Integer getValue() {
        return value;
    }

    public void setValue(java.lang.Integer value) {
        this.value = value;
    }

    public String toString() {
        return (value != null) ? value.toString() : "";
    }
}

package com.webratio.webapp.gamificationCommunity;

public class Presences implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.Integer _useroid;

    private java.lang.String _description;

    private java.sql.Timestamp _timestamp;

    private java.lang.Integer _WROWNERID;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.Integer getUseroid() {
        return _useroid;
    }

    public void setUseroid(java.lang.Integer _useroid) {
        this._useroid = _useroid;
    }

    public java.lang.String getDescription() {
        return _description;
    }

    public void setDescription(java.lang.String _description) {
        this._description = _description;
    }

    public java.sql.Timestamp getTimestamp() {
        return _timestamp;
    }

    public void setTimestamp(java.sql.Timestamp _timestamp) {
        this._timestamp = _timestamp;
    }

    public java.lang.Integer getWROWNERID() {
        return _WROWNERID;
    }

    public void setWROWNERID(java.lang.Integer _WROWNERID) {
        this._WROWNERID = _WROWNERID;
    }

    public float getSearchScore() {
        return _searchScore;
    }

    public void setSearchScore(float _searchScore) {
        this._searchScore = _searchScore;
    }

    public String toString() {
        java.lang.StringBuffer sb = new java.lang.StringBuffer();
        sb.append(super.toString());
        int n = sb.length() - 1;
        if (sb.charAt(n) == ']') {
            sb.setCharAt(n, ',');
        } else {
            sb.append('[');
        }
        if (_oid != null)
            sb.append("oid=" + _oid + ',');
        if (_useroid != null)
            sb.append("useroid=" + _useroid + ',');
        if (_description != null)
            sb.append("description=" + _description + ',');
        if (_timestamp != null)
            sb.append("timestamp=" + _timestamp + ',');
        if (_WROWNERID != null)
            sb.append("WROWNERID=" + _WROWNERID + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.gamificationCommunity.Presences)) {
            return false;
        }
        com.webratio.webapp.gamificationCommunity.Presences __other = (com.webratio.webapp.gamificationCommunity.Presences) obj;
        java.lang.Object key = null;
        java.lang.Object otherKey = null;
        key = this.getOid();
        otherKey = __other.getOid();
        if (key == null) {
            if (otherKey != null) {
                return false;
            }
        } else {
            if (otherKey == null) {
                return false;
            } else if (!key.equals(otherKey)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int hashCode = 0;
        java.lang.Object key = null;
        key = this.getOid();
        if (key != null) {
            hashCode |= key.hashCode();
        }
        return hashCode;
    }
}

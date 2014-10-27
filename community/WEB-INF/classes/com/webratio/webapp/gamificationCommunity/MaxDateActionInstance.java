package com.webratio.webapp.gamificationCommunity;

public class MaxDateActionInstance implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _actionTypeOid;

    private java.lang.Integer _rankOid;

    private java.sql.Timestamp _maxDate;

    private float _searchScore;

    public java.lang.Integer getActionTypeOid() {
        return _actionTypeOid;
    }

    public void setActionTypeOid(java.lang.Integer _actionTypeOid) {
        this._actionTypeOid = _actionTypeOid;
    }

    public java.lang.Integer getRankOid() {
        return _rankOid;
    }

    public void setRankOid(java.lang.Integer _rankOid) {
        this._rankOid = _rankOid;
    }

    public java.sql.Timestamp getMaxDate() {
        return _maxDate;
    }

    public void setMaxDate(java.sql.Timestamp _maxDate) {
        this._maxDate = _maxDate;
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
        if (_actionTypeOid != null)
            sb.append("actionTypeOid=" + _actionTypeOid + ',');
        if (_rankOid != null)
            sb.append("rankOid=" + _rankOid + ',');
        if (_maxDate != null)
            sb.append("maxDate=" + _maxDate + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.gamificationCommunity.MaxDateActionInstance)) {
            return false;
        }
        com.webratio.webapp.gamificationCommunity.MaxDateActionInstance __other = (com.webratio.webapp.gamificationCommunity.MaxDateActionInstance) obj;
        java.lang.Object key = null;
        java.lang.Object otherKey = null;
        key = this.getActionTypeOid();
        otherKey = __other.getActionTypeOid();
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
        key = this.getRankOid();
        otherKey = __other.getRankOid();
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
        key = this.getActionTypeOid();
        if (key != null) {
            hashCode |= key.hashCode();
        }
        key = this.getRankOid();
        if (key != null) {
            hashCode |= key.hashCode();
        }
        return hashCode;
    }
}

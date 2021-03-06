package com.webratio.webapp.gamificationCommunity;

public class ThematicArea implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _areaName;

    private java.util.Set _thematicAreaToGamifiedApplication = new java.util.HashSet();

    private java.util.Set _thematicAreaToActionType = new java.util.HashSet();

    private java.util.Set _thematicAreaToBadgeType = new java.util.HashSet();

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getAreaName() {
        return _areaName;
    }

    public void setAreaName(java.lang.String _areaName) {
        this._areaName = _areaName;
    }

    public java.util.Set getThematicAreaToGamifiedApplication() {
        return _thematicAreaToGamifiedApplication;
    }

    public void setThematicAreaToGamifiedApplication(java.util.Set _thematicAreaToGamifiedApplication) {
        this._thematicAreaToGamifiedApplication = _thematicAreaToGamifiedApplication;
    }

    public java.util.Set getThematicAreaToActionType() {
        return _thematicAreaToActionType;
    }

    public void setThematicAreaToActionType(java.util.Set _thematicAreaToActionType) {
        this._thematicAreaToActionType = _thematicAreaToActionType;
    }

    public java.util.Set getThematicAreaToBadgeType() {
        return _thematicAreaToBadgeType;
    }

    public void setThematicAreaToBadgeType(java.util.Set _thematicAreaToBadgeType) {
        this._thematicAreaToBadgeType = _thematicAreaToBadgeType;
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
        if (_areaName != null)
            sb.append("areaName=" + _areaName + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.gamificationCommunity.ThematicArea)) {
            return false;
        }
        com.webratio.webapp.gamificationCommunity.ThematicArea __other = (com.webratio.webapp.gamificationCommunity.ThematicArea) obj;
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

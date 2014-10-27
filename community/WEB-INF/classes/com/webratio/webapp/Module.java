package com.webratio.webapp;

public class Module implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _OID;

    private java.lang.String _moduleID;

    private java.lang.String _moduleName;

    private java.lang.String _moduleDomainName;

    private java.util.Set _defaultGroups = new java.util.HashSet();

    private java.util.Set _groups = new java.util.HashSet();

    private float _searchScore;

    public java.lang.Integer getOID() {
        return _OID;
    }

    public void setOID(java.lang.Integer _OID) {
        this._OID = _OID;
    }

    public java.lang.String getModuleID() {
        return _moduleID;
    }

    public void setModuleID(java.lang.String _moduleID) {
        this._moduleID = _moduleID;
    }

    public java.lang.String getModuleName() {
        return _moduleName;
    }

    public void setModuleName(java.lang.String _moduleName) {
        this._moduleName = _moduleName;
    }

    public java.lang.String getModuleDomainName() {
        return _moduleDomainName;
    }

    public void setModuleDomainName(java.lang.String _moduleDomainName) {
        this._moduleDomainName = _moduleDomainName;
    }

    public java.util.Set getDefaultGroups() {
        return _defaultGroups;
    }

    public void setDefaultGroups(java.util.Set _defaultGroups) {
        this._defaultGroups = _defaultGroups;
    }

    public java.util.Set getGroups() {
        return _groups;
    }

    public void setGroups(java.util.Set _groups) {
        this._groups = _groups;
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
        if (_OID != null)
            sb.append("OID=" + _OID + ',');
        if (_moduleID != null)
            sb.append("moduleID=" + _moduleID + ',');
        if (_moduleName != null)
            sb.append("moduleName=" + _moduleName + ',');
        if (_moduleDomainName != null)
            sb.append("moduleDomainName=" + _moduleDomainName + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.Module)) {
            return false;
        }
        com.webratio.webapp.Module __other = (com.webratio.webapp.Module) obj;
        java.lang.Object key = null;
        java.lang.Object otherKey = null;
        key = this.getOID();
        otherKey = __other.getOID();
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
        key = this.getOID();
        if (key != null) {
            hashCode |= key.hashCode();
        }
        return hashCode;
    }
}

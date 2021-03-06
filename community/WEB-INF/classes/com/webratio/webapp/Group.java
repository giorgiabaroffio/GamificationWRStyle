package com.webratio.webapp;

public class Group implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _OID;

    private java.lang.String _groupName;

    private java.util.Set _users = new java.util.HashSet();

    private java.util.Set _defaultUsers = new java.util.HashSet();

    private com.webratio.webapp.Module _defaultModule;

    private java.util.Set _modules = new java.util.HashSet();

    private float _searchScore;

    public java.lang.Integer getOID() {
        return _OID;
    }

    public void setOID(java.lang.Integer _OID) {
        this._OID = _OID;
    }

    public java.lang.String getGroupName() {
        return _groupName;
    }

    public void setGroupName(java.lang.String _groupName) {
        this._groupName = _groupName;
    }

    public java.util.Set getUsers() {
        return _users;
    }

    public void setUsers(java.util.Set _users) {
        this._users = _users;
    }

    public java.util.Set getDefaultUsers() {
        return _defaultUsers;
    }

    public void setDefaultUsers(java.util.Set _defaultUsers) {
        this._defaultUsers = _defaultUsers;
    }

    public com.webratio.webapp.Module getDefaultModule() {
        return _defaultModule;
    }

    public void setDefaultModule(com.webratio.webapp.Module _defaultModule) {
        this._defaultModule = _defaultModule;
    }

    public java.util.Set getModules() {
        return _modules;
    }

    public void setModules(java.util.Set _modules) {
        this._modules = _modules;
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
        if (_groupName != null)
            sb.append("groupName=" + _groupName + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.Group)) {
            return false;
        }
        com.webratio.webapp.Group __other = (com.webratio.webapp.Group) obj;
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

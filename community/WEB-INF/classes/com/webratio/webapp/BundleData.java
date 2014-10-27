package com.webratio.webapp;

public class BundleData implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _OID;

    private java.lang.String _locale;

    private java.lang.String _key;

    private java.lang.String _message;

    private float _searchScore;

    public java.lang.Integer getOID() {
        return _OID;
    }

    public void setOID(java.lang.Integer _OID) {
        this._OID = _OID;
    }

    public java.lang.String getLocale() {
        return _locale;
    }

    public void setLocale(java.lang.String _locale) {
        this._locale = _locale;
    }

    public java.lang.String getKey() {
        return _key;
    }

    public void setKey(java.lang.String _key) {
        this._key = _key;
    }

    public java.lang.String getMessage() {
        return _message;
    }

    public void setMessage(java.lang.String _message) {
        this._message = _message;
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
        if (_locale != null)
            sb.append("locale=" + _locale + ',');
        if (_key != null)
            sb.append("key=" + _key + ',');
        if (_message != null)
            sb.append("message=" + _message + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.BundleData)) {
            return false;
        }
        com.webratio.webapp.BundleData __other = (com.webratio.webapp.BundleData) obj;
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

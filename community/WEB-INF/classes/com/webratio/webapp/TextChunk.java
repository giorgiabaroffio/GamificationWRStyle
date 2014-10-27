package com.webratio.webapp;

public class TextChunk implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _key;

    private java.lang.String _message;

    private java.lang.String _languageCode;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
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

    public java.lang.String getLanguageCode() {
        return _languageCode;
    }

    public void setLanguageCode(java.lang.String _languageCode) {
        this._languageCode = _languageCode;
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
        if (_key != null)
            sb.append("key=" + _key + ',');
        if (_message != null)
            sb.append("message=" + _message + ',');
        if (_languageCode != null)
            sb.append("languageCode=" + _languageCode + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.TextChunk)) {
            return false;
        }
        com.webratio.webapp.TextChunk __other = (com.webratio.webapp.TextChunk) obj;
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

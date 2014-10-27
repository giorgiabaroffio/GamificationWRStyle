package com.webratio.webapp.gamificationCommunity;

public class Containers implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _languageCode;

    private java.lang.String _text;

    private java.lang.String _alias;

    private java.util.Set _containersToTextMailHeader = new java.util.HashSet();

    private java.util.Set _containersToTextMailFooter = new java.util.HashSet();

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getLanguageCode() {
        return _languageCode;
    }

    public void setLanguageCode(java.lang.String _languageCode) {
        this._languageCode = _languageCode;
    }

    public java.lang.String getText() {
        return _text;
    }

    public void setText(java.lang.String _text) {
        this._text = _text;
    }

    public java.lang.String getAlias() {
        return _alias;
    }

    public void setAlias(java.lang.String _alias) {
        this._alias = _alias;
    }

    public java.util.Set getContainersToTextMailHeader() {
        return _containersToTextMailHeader;
    }

    public void setContainersToTextMailHeader(java.util.Set _containersToTextMailHeader) {
        this._containersToTextMailHeader = _containersToTextMailHeader;
    }

    public java.util.Set getContainersToTextMailFooter() {
        return _containersToTextMailFooter;
    }

    public void setContainersToTextMailFooter(java.util.Set _containersToTextMailFooter) {
        this._containersToTextMailFooter = _containersToTextMailFooter;
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
        if (_languageCode != null)
            sb.append("languageCode=" + _languageCode + ',');
        if (_text != null)
            sb.append("text=" + _text + ',');
        if (_alias != null)
            sb.append("alias=" + _alias + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.gamificationCommunity.Containers)) {
            return false;
        }
        com.webratio.webapp.gamificationCommunity.Containers __other = (com.webratio.webapp.gamificationCommunity.Containers) obj;
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

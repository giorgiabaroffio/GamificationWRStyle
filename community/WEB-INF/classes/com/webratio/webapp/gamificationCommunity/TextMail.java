package com.webratio.webapp.gamificationCommunity;

public class TextMail implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _code;

    private java.lang.String _languageCode;

    private java.lang.String _body;

    private java.lang.String _description;

    private java.lang.String _subject;

    private com.webratio.webapp.gamificationCommunity.Containers _textMailToContainersHeader;

    private com.webratio.webapp.gamificationCommunity.Containers _textMailToContainersFooter;

    private java.util.Set _textMailToNotification = new java.util.HashSet();

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getCode() {
        return _code;
    }

    public void setCode(java.lang.String _code) {
        this._code = _code;
    }

    public java.lang.String getLanguageCode() {
        return _languageCode;
    }

    public void setLanguageCode(java.lang.String _languageCode) {
        this._languageCode = _languageCode;
    }

    public java.lang.String getBody() {
        return _body;
    }

    public void setBody(java.lang.String _body) {
        this._body = _body;
    }

    public java.lang.String getDescription() {
        return _description;
    }

    public void setDescription(java.lang.String _description) {
        this._description = _description;
    }

    public java.lang.String getSubject() {
        return _subject;
    }

    public void setSubject(java.lang.String _subject) {
        this._subject = _subject;
    }

    public com.webratio.webapp.gamificationCommunity.Containers getTextMailToContainersHeader() {
        return _textMailToContainersHeader;
    }

    public void setTextMailToContainersHeader(com.webratio.webapp.gamificationCommunity.Containers _textMailToContainersHeader) {
        this._textMailToContainersHeader = _textMailToContainersHeader;
    }

    public com.webratio.webapp.gamificationCommunity.Containers getTextMailToContainersFooter() {
        return _textMailToContainersFooter;
    }

    public void setTextMailToContainersFooter(com.webratio.webapp.gamificationCommunity.Containers _textMailToContainersFooter) {
        this._textMailToContainersFooter = _textMailToContainersFooter;
    }

    public java.util.Set getTextMailToNotification() {
        return _textMailToNotification;
    }

    public void setTextMailToNotification(java.util.Set _textMailToNotification) {
        this._textMailToNotification = _textMailToNotification;
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
        if (_code != null)
            sb.append("code=" + _code + ',');
        if (_languageCode != null)
            sb.append("languageCode=" + _languageCode + ',');
        if (_body != null)
            sb.append("body=" + _body + ',');
        if (_description != null)
            sb.append("description=" + _description + ',');
        if (_subject != null)
            sb.append("subject=" + _subject + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.gamificationCommunity.TextMail)) {
            return false;
        }
        com.webratio.webapp.gamificationCommunity.TextMail __other = (com.webratio.webapp.gamificationCommunity.TextMail) obj;
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

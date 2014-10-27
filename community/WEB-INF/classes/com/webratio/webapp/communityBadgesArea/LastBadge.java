package com.webratio.webapp.communityBadgesArea;

public class LastBadge implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _nickname;

    private java.lang.String _area;

    private java.lang.String _title;

    private java.sql.Date _date;

    private java.lang.String _imageRef;

    private java.lang.Object _image;

    private java.lang.Integer _WROWNERID;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getNickname() {
        return _nickname;
    }

    public void setNickname(java.lang.String _nickname) {
        this._nickname = _nickname;
    }

    public java.lang.String getArea() {
        return _area;
    }

    public void setArea(java.lang.String _area) {
        this._area = _area;
    }

    public java.lang.String getTitle() {
        return _title;
    }

    public void setTitle(java.lang.String _title) {
        this._title = _title;
    }

    public java.sql.Date getDate() {
        return _date;
    }

    public void setDate(java.sql.Date _date) {
        this._date = _date;
    }

    public java.lang.String getImageRef() {
        return _imageRef;
    }

    public void setImageRef(java.lang.String _imageRef) {
        this._imageRef = _imageRef;
    }

    public java.lang.Object getImage() {
        return _image;
    }

    public void setImage(java.lang.Object _image) {
        this._image = _image;
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
        if (_nickname != null)
            sb.append("nickname=" + _nickname + ',');
        if (_area != null)
            sb.append("area=" + _area + ',');
        if (_title != null)
            sb.append("title=" + _title + ',');
        if (_date != null)
            sb.append("date=" + _date + ',');
        if (_image != null)
            sb.append("image=" + _image + ',');
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
        if (!(obj instanceof com.webratio.webapp.communityBadgesArea.LastBadge)) {
            return false;
        }
        com.webratio.webapp.communityBadgesArea.LastBadge __other = (com.webratio.webapp.communityBadgesArea.LastBadge) obj;
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

package com.webratio.webapp.communityBadgesArea;

public class MostimportantBadge implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _area;

    private java.lang.String _title;

    private java.lang.Integer _importance;

    private java.lang.String _checkedImageRef;

    private java.lang.Object _checkedImage;

    private java.sql.Blob _checkedImageBinary;

    private java.lang.Integer _sortNumber;

    private java.lang.String _HDCheckedImageRef;

    private java.lang.Object _HDCheckedImage;

    private java.sql.Blob _HDCheckedImageBinary;

    private java.lang.Integer _useroid;

    private com.webratio.webapp.gamificationCommunity.CommunityUser _mostimportantBadgeToUsercrm;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
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

    public java.lang.Integer getImportance() {
        return _importance;
    }

    public void setImportance(java.lang.Integer _importance) {
        this._importance = _importance;
    }

    public java.lang.String getCheckedImageRef() {
        return _checkedImageRef;
    }

    public void setCheckedImageRef(java.lang.String _checkedImageRef) {
        this._checkedImageRef = _checkedImageRef;
    }

    public java.sql.Blob getCheckedImageBinary() {
        return _checkedImageBinary;
    }

    public void setCheckedImageBinary(java.sql.Blob _checkedImageBinary) {
        this._checkedImageBinary = _checkedImageBinary;
    }

    public java.lang.Object getCheckedImage() {
        return _checkedImage;
    }

    public void setCheckedImage(java.lang.Object _checkedImage) {
        this._checkedImage = _checkedImage;
    }

    public java.lang.Integer getSortNumber() {
        return _sortNumber;
    }

    public void setSortNumber(java.lang.Integer _sortNumber) {
        this._sortNumber = _sortNumber;
    }

    public java.lang.String getHDCheckedImageRef() {
        return _HDCheckedImageRef;
    }

    public void setHDCheckedImageRef(java.lang.String _HDCheckedImageRef) {
        this._HDCheckedImageRef = _HDCheckedImageRef;
    }

    public java.sql.Blob getHDCheckedImageBinary() {
        return _HDCheckedImageBinary;
    }

    public void setHDCheckedImageBinary(java.sql.Blob _HDCheckedImageBinary) {
        this._HDCheckedImageBinary = _HDCheckedImageBinary;
    }

    public java.lang.Object getHDCheckedImage() {
        return _HDCheckedImage;
    }

    public void setHDCheckedImage(java.lang.Object _HDCheckedImage) {
        this._HDCheckedImage = _HDCheckedImage;
    }

    public java.lang.Integer getUseroid() {
        return _useroid;
    }

    public void setUseroid(java.lang.Integer _useroid) {
        this._useroid = _useroid;
    }

    public com.webratio.webapp.gamificationCommunity.CommunityUser getMostimportantBadgeToUsercrm() {
        return _mostimportantBadgeToUsercrm;
    }

    public void setMostimportantBadgeToUsercrm(com.webratio.webapp.gamificationCommunity.CommunityUser _mostimportantBadgeToUsercrm) {
        this._mostimportantBadgeToUsercrm = _mostimportantBadgeToUsercrm;
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
        if (_area != null)
            sb.append("area=" + _area + ',');
        if (_title != null)
            sb.append("title=" + _title + ',');
        if (_importance != null)
            sb.append("importance=" + _importance + ',');
        if (_checkedImage != null)
            sb.append("checkedImage=" + _checkedImage + ',');
        if (_sortNumber != null)
            sb.append("sortNumber=" + _sortNumber + ',');
        if (_HDCheckedImage != null)
            sb.append("HDCheckedImage=" + _HDCheckedImage + ',');
        if (_useroid != null)
            sb.append("useroid=" + _useroid + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.communityBadgesArea.MostimportantBadge)) {
            return false;
        }
        com.webratio.webapp.communityBadgesArea.MostimportantBadge __other = (com.webratio.webapp.communityBadgesArea.MostimportantBadge) obj;
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

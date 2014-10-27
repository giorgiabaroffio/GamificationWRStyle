package com.webratio.webapp.gamificationCommunity;

public class BadgeType implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.Integer _level;

    private java.lang.String _description;

    private java.lang.String _checkedImageRef;

    private java.lang.Object _checkedImage;

    private java.sql.Blob _checkedImageBinary;

    private java.lang.String _title;

    private java.math.BigDecimal _neededScore;

    private java.lang.String _area;

    private java.lang.String _HDImageRef;

    private java.lang.Object _HDImage;

    private java.sql.Blob _HDImageBinary;

    private java.lang.Integer _sortNumber;

    private java.lang.String _HDCheckedImageRef;

    private java.lang.Object _HDCheckedImage;

    private java.sql.Blob _HDCheckedImageBinary;

    private java.lang.String _imageRef;

    private java.lang.Object _image;

    private java.sql.Blob _imageBinary;

    private java.lang.String _key;

    private java.lang.String _sortCombination;

    private com.webratio.webapp.gamificationCommunity.BadgeType_SortCombinationBean _sortCombinationBean;

    private java.lang.Boolean _active;

    private java.lang.String _thematicArea;

    private java.util.Set _gamificationDictionaryToBadgeAcquired = new java.util.HashSet();

    private java.util.Set _gamificationDictionaryToActionType = new java.util.HashSet();

    private com.webratio.webapp.gamificationCommunity.ThematicArea _badgeTypeToThematicArea;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.Integer getLevel() {
        return _level;
    }

    public void setLevel(java.lang.Integer _level) {
        this._level = _level;
    }

    public java.lang.String getDescription() {
        return _description;
    }

    public void setDescription(java.lang.String _description) {
        this._description = _description;
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

    public java.lang.String getTitle() {
        return _title;
    }

    public void setTitle(java.lang.String _title) {
        this._title = _title;
    }

    public java.math.BigDecimal getNeededScore() {
        return _neededScore;
    }

    public void setNeededScore(java.math.BigDecimal _neededScore) {
        this._neededScore = _neededScore;
    }

    public java.lang.String getArea() {
        return _area;
    }

    public void setArea(java.lang.String _area) {
        this._area = _area;
    }

    public java.lang.String getHDImageRef() {
        return _HDImageRef;
    }

    public void setHDImageRef(java.lang.String _HDImageRef) {
        this._HDImageRef = _HDImageRef;
    }

    public java.sql.Blob getHDImageBinary() {
        return _HDImageBinary;
    }

    public void setHDImageBinary(java.sql.Blob _HDImageBinary) {
        this._HDImageBinary = _HDImageBinary;
    }

    public java.lang.Object getHDImage() {
        return _HDImage;
    }

    public void setHDImage(java.lang.Object _HDImage) {
        this._HDImage = _HDImage;
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

    public java.lang.String getImageRef() {
        return _imageRef;
    }

    public void setImageRef(java.lang.String _imageRef) {
        this._imageRef = _imageRef;
    }

    public java.sql.Blob getImageBinary() {
        return _imageBinary;
    }

    public void setImageBinary(java.sql.Blob _imageBinary) {
        this._imageBinary = _imageBinary;
    }

    public java.lang.Object getImage() {
        return _image;
    }

    public void setImage(java.lang.Object _image) {
        this._image = _image;
    }

    public java.lang.String getKey() {
        return _key;
    }

    public void setKey(java.lang.String _key) {
        this._key = _key;
    }

    public java.lang.String getSortCombination() {
        if (_sortCombination != null) {
            return _sortCombination;
        }
        com.webratio.webapp.gamificationCommunity.BadgeType_SortCombinationBean __sortCombination = this.getSortCombinationBean();
        if (__sortCombination != null) {
            return __sortCombination.getValue();
        }
        return _sortCombination;
    }

    public void setSortCombination(java.lang.String _sortCombination) {
        this._sortCombination = _sortCombination;
    }

    public com.webratio.webapp.gamificationCommunity.BadgeType_SortCombinationBean getSortCombinationBean() {
        return _sortCombinationBean;
    }

    public void setSortCombinationBean(com.webratio.webapp.gamificationCommunity.BadgeType_SortCombinationBean _sortCombinationBean) {
        this._sortCombinationBean = _sortCombinationBean;
    }

    public java.lang.Boolean getActive() {
        return _active;
    }

    public void setActive(java.lang.Boolean _active) {
        this._active = _active;
    }

    public java.lang.String getThematicArea() {
        if (_thematicArea != null) {
            return _thematicArea;
        }
        java.lang.Object role12qObject = this.getBadgeTypeToThematicArea();
        if (role12qObject != null) {
            com.webratio.webapp.gamificationCommunity.ThematicArea role12q = role12qObject instanceof java.util.Set ? (((java.util.Set) role12qObject)
                    .isEmpty() ? null : (com.webratio.webapp.gamificationCommunity.ThematicArea) ((java.util.Set) role12qObject)
                    .iterator().next()) : (com.webratio.webapp.gamificationCommunity.ThematicArea) role12qObject;
            if (role12q != null) {
                return role12q.getAreaName();
            }
        }
        return _thematicArea;
    }

    public void setThematicArea(java.lang.String _thematicArea) {
        this._thematicArea = _thematicArea;
    }

    public java.util.Set getGamificationDictionaryToBadgeAcquired() {
        return _gamificationDictionaryToBadgeAcquired;
    }

    public void setGamificationDictionaryToBadgeAcquired(java.util.Set _gamificationDictionaryToBadgeAcquired) {
        this._gamificationDictionaryToBadgeAcquired = _gamificationDictionaryToBadgeAcquired;
    }

    public java.util.Set getGamificationDictionaryToActionType() {
        return _gamificationDictionaryToActionType;
    }

    public void setGamificationDictionaryToActionType(java.util.Set _gamificationDictionaryToActionType) {
        this._gamificationDictionaryToActionType = _gamificationDictionaryToActionType;
    }

    public com.webratio.webapp.gamificationCommunity.ThematicArea getBadgeTypeToThematicArea() {
        return _badgeTypeToThematicArea;
    }

    public void setBadgeTypeToThematicArea(com.webratio.webapp.gamificationCommunity.ThematicArea _badgeTypeToThematicArea) {
        this._badgeTypeToThematicArea = _badgeTypeToThematicArea;
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
        if (_level != null)
            sb.append("level=" + _level + ',');
        if (_description != null)
            sb.append("description=" + _description + ',');
        if (_checkedImage != null)
            sb.append("checkedImage=" + _checkedImage + ',');
        if (_title != null)
            sb.append("title=" + _title + ',');
        if (_neededScore != null)
            sb.append("neededScore=" + _neededScore + ',');
        if (_area != null)
            sb.append("area=" + _area + ',');
        if (_HDImage != null)
            sb.append("HDImage=" + _HDImage + ',');
        if (_sortNumber != null)
            sb.append("sortNumber=" + _sortNumber + ',');
        if (_HDCheckedImage != null)
            sb.append("HDCheckedImage=" + _HDCheckedImage + ',');
        if (_image != null)
            sb.append("image=" + _image + ',');
        if (_key != null)
            sb.append("key=" + _key + ',');
        if (_sortCombination != null)
            sb.append("sortCombination=" + _sortCombination + ',');
        if (_active != null)
            sb.append("active=" + _active + ',');
        if (_thematicArea != null)
            sb.append("thematicArea=" + _thematicArea + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.gamificationCommunity.BadgeType)) {
            return false;
        }
        com.webratio.webapp.gamificationCommunity.BadgeType __other = (com.webratio.webapp.gamificationCommunity.BadgeType) obj;
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

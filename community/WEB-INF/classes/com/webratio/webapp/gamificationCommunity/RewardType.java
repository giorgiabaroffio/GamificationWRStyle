package com.webratio.webapp.gamificationCommunity;

public class RewardType implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _title;

    private java.lang.String _description;

    private java.math.BigDecimal _neededPoints;

    private java.lang.Boolean _available;

    private java.lang.String _imageRef;

    private java.lang.Object _image;

    private java.sql.Blob _imageBinary;

    private java.lang.String _languageCode;

    private java.util.Set _rewardTypeToRewardInstance = new java.util.HashSet();

    private java.util.Set _rewardTypeToNotification = new java.util.HashSet();

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getTitle() {
        return _title;
    }

    public void setTitle(java.lang.String _title) {
        this._title = _title;
    }

    public java.lang.String getDescription() {
        return _description;
    }

    public void setDescription(java.lang.String _description) {
        this._description = _description;
    }

    public java.math.BigDecimal getNeededPoints() {
        return _neededPoints;
    }

    public void setNeededPoints(java.math.BigDecimal _neededPoints) {
        this._neededPoints = _neededPoints;
    }

    public java.lang.Boolean getAvailable() {
        return _available;
    }

    public void setAvailable(java.lang.Boolean _available) {
        this._available = _available;
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

    public java.lang.String getLanguageCode() {
        return _languageCode;
    }

    public void setLanguageCode(java.lang.String _languageCode) {
        this._languageCode = _languageCode;
    }

    public java.util.Set getRewardTypeToRewardInstance() {
        return _rewardTypeToRewardInstance;
    }

    public void setRewardTypeToRewardInstance(java.util.Set _rewardTypeToRewardInstance) {
        this._rewardTypeToRewardInstance = _rewardTypeToRewardInstance;
    }

    public java.util.Set getRewardTypeToNotification() {
        return _rewardTypeToNotification;
    }

    public void setRewardTypeToNotification(java.util.Set _rewardTypeToNotification) {
        this._rewardTypeToNotification = _rewardTypeToNotification;
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
        if (_title != null)
            sb.append("title=" + _title + ',');
        if (_description != null)
            sb.append("description=" + _description + ',');
        if (_neededPoints != null)
            sb.append("neededPoints=" + _neededPoints + ',');
        if (_available != null)
            sb.append("available=" + _available + ',');
        if (_image != null)
            sb.append("image=" + _image + ',');
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
        if (!(obj instanceof com.webratio.webapp.gamificationCommunity.RewardType)) {
            return false;
        }
        com.webratio.webapp.gamificationCommunity.RewardType __other = (com.webratio.webapp.gamificationCommunity.RewardType) obj;
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

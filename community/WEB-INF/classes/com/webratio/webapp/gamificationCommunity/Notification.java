package com.webratio.webapp.gamificationCommunity;

public class Notification implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.sql.Timestamp _creationDate;

    private java.lang.String _code;

    private java.lang.String _status;

    private java.sql.Timestamp _deliveryDate;

    private java.lang.String _languageCode;

    private java.lang.String _rewardTitle;

    private com.webratio.webapp.gamificationCommunity.TextMail _notificationToTextMail;

    private com.webratio.webapp.gamificationCommunity.CommunityUser _notificationToCommunityUser;

    private com.webratio.webapp.gamificationCommunity.RewardType _notificationToRewardType;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.sql.Timestamp getCreationDate() {
        return _creationDate;
    }

    public void setCreationDate(java.sql.Timestamp _creationDate) {
        this._creationDate = _creationDate;
    }

    public java.lang.String getCode() {
        return _code;
    }

    public void setCode(java.lang.String _code) {
        this._code = _code;
    }

    public java.lang.String getStatus() {
        return _status;
    }

    public void setStatus(java.lang.String _status) {
        this._status = _status;
    }

    public java.sql.Timestamp getDeliveryDate() {
        return _deliveryDate;
    }

    public void setDeliveryDate(java.sql.Timestamp _deliveryDate) {
        this._deliveryDate = _deliveryDate;
    }

    public java.lang.String getLanguageCode() {
        return _languageCode;
    }

    public void setLanguageCode(java.lang.String _languageCode) {
        this._languageCode = _languageCode;
    }

    public java.lang.String getRewardTitle() {
        if (_rewardTitle != null) {
            return _rewardTitle;
        }
        java.lang.Object role24xObject = this.getNotificationToRewardType();
        if (role24xObject != null) {
            com.webratio.webapp.gamificationCommunity.RewardType role24x = role24xObject instanceof java.util.Set ? (((java.util.Set) role24xObject)
                    .isEmpty() ? null : (com.webratio.webapp.gamificationCommunity.RewardType) ((java.util.Set) role24xObject)
                    .iterator().next()) : (com.webratio.webapp.gamificationCommunity.RewardType) role24xObject;
            if (role24x != null) {
                return role24x.getTitle();
            }
        }
        return _rewardTitle;
    }

    public void setRewardTitle(java.lang.String _rewardTitle) {
        this._rewardTitle = _rewardTitle;
    }

    public com.webratio.webapp.gamificationCommunity.TextMail getNotificationToTextMail() {
        return _notificationToTextMail;
    }

    public void setNotificationToTextMail(com.webratio.webapp.gamificationCommunity.TextMail _notificationToTextMail) {
        this._notificationToTextMail = _notificationToTextMail;
    }

    public com.webratio.webapp.gamificationCommunity.CommunityUser getNotificationToCommunityUser() {
        return _notificationToCommunityUser;
    }

    public void setNotificationToCommunityUser(com.webratio.webapp.gamificationCommunity.CommunityUser _notificationToCommunityUser) {
        this._notificationToCommunityUser = _notificationToCommunityUser;
    }

    public com.webratio.webapp.gamificationCommunity.RewardType getNotificationToRewardType() {
        return _notificationToRewardType;
    }

    public void setNotificationToRewardType(com.webratio.webapp.gamificationCommunity.RewardType _notificationToRewardType) {
        this._notificationToRewardType = _notificationToRewardType;
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
        if (_creationDate != null)
            sb.append("creationDate=" + _creationDate + ',');
        if (_code != null)
            sb.append("code=" + _code + ',');
        if (_status != null)
            sb.append("status=" + _status + ',');
        if (_deliveryDate != null)
            sb.append("deliveryDate=" + _deliveryDate + ',');
        if (_languageCode != null)
            sb.append("languageCode=" + _languageCode + ',');
        if (_rewardTitle != null)
            sb.append("rewardTitle=" + _rewardTitle + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.gamificationCommunity.Notification)) {
            return false;
        }
        com.webratio.webapp.gamificationCommunity.Notification __other = (com.webratio.webapp.gamificationCommunity.Notification) obj;
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

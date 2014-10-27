package com.webratio.webapp.gamificationCommunity;

public class NotificationMonthly implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _userOid;

    private java.lang.Integer _overallPosition;

    private java.lang.Integer _overallParticipation;

    private java.lang.Integer _sevenDaysPosition;

    private java.lang.Integer _sevenDaysParticipation;

    private java.lang.String _firstName;

    private java.lang.String _email;

    private java.lang.Integer _monthlyPoints;

    private java.lang.String _photo;

    private float _searchScore;

    public java.lang.Integer getUserOid() {
        return _userOid;
    }

    public void setUserOid(java.lang.Integer _userOid) {
        this._userOid = _userOid;
    }

    public java.lang.Integer getOverallPosition() {
        return _overallPosition;
    }

    public void setOverallPosition(java.lang.Integer _overallPosition) {
        this._overallPosition = _overallPosition;
    }

    public java.lang.Integer getOverallParticipation() {
        return _overallParticipation;
    }

    public void setOverallParticipation(java.lang.Integer _overallParticipation) {
        this._overallParticipation = _overallParticipation;
    }

    public java.lang.Integer getSevenDaysPosition() {
        return _sevenDaysPosition;
    }

    public void setSevenDaysPosition(java.lang.Integer _sevenDaysPosition) {
        this._sevenDaysPosition = _sevenDaysPosition;
    }

    public java.lang.Integer getSevenDaysParticipation() {
        return _sevenDaysParticipation;
    }

    public void setSevenDaysParticipation(java.lang.Integer _sevenDaysParticipation) {
        this._sevenDaysParticipation = _sevenDaysParticipation;
    }

    public java.lang.String getFirstName() {
        return _firstName;
    }

    public void setFirstName(java.lang.String _firstName) {
        this._firstName = _firstName;
    }

    public java.lang.String getEmail() {
        return _email;
    }

    public void setEmail(java.lang.String _email) {
        this._email = _email;
    }

    public java.lang.Integer getMonthlyPoints() {
        return _monthlyPoints;
    }

    public void setMonthlyPoints(java.lang.Integer _monthlyPoints) {
        this._monthlyPoints = _monthlyPoints;
    }

    public java.lang.String getPhoto() {
        return _photo;
    }

    public void setPhoto(java.lang.String _photo) {
        this._photo = _photo;
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
        if (_userOid != null)
            sb.append("userOid=" + _userOid + ',');
        if (_overallPosition != null)
            sb.append("overallPosition=" + _overallPosition + ',');
        if (_overallParticipation != null)
            sb.append("overallParticipation=" + _overallParticipation + ',');
        if (_sevenDaysPosition != null)
            sb.append("sevenDaysPosition=" + _sevenDaysPosition + ',');
        if (_sevenDaysParticipation != null)
            sb.append("sevenDaysParticipation=" + _sevenDaysParticipation + ',');
        if (_firstName != null)
            sb.append("firstName=" + _firstName + ',');
        if (_email != null)
            sb.append("email=" + _email + ',');
        if (_monthlyPoints != null)
            sb.append("monthlyPoints=" + _monthlyPoints + ',');
        if (_photo != null)
            sb.append("photo=" + _photo + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.gamificationCommunity.NotificationMonthly)) {
            return false;
        }
        com.webratio.webapp.gamificationCommunity.NotificationMonthly __other = (com.webratio.webapp.gamificationCommunity.NotificationMonthly) obj;
        java.lang.Object key = null;
        java.lang.Object otherKey = null;
        key = this.getUserOid();
        otherKey = __other.getUserOid();
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
        key = this.getUserOid();
        if (key != null) {
            hashCode |= key.hashCode();
        }
        return hashCode;
    }
}

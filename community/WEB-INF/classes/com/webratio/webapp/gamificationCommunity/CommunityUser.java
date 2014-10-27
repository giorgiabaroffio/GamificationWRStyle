package com.webratio.webapp.gamificationCommunity;

public class CommunityUser extends com.webratio.webapp.User implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.math.BigDecimal _participation;

    private java.math.BigDecimal _totalCredit;

    private java.math.BigDecimal _participation7Days;

    private java.lang.String _companyName;

    private java.lang.String _firstName;

    private java.lang.String _lastName;

    private java.lang.String _city;

    private java.lang.String _smallPhotoRef;

    private java.lang.Object _smallPhoto;

    private java.sql.Blob _smallPhotoBinary;

    private java.lang.String _twitter;

    private java.lang.String _country;

    private java.lang.String _geographicalArea;

    private java.lang.String _webSite;

    private java.lang.String _bigPhotoRef;

    private java.lang.Object _bigPhoto;

    private java.sql.Blob _bigPhotoBinary;

    private java.lang.String _bio;

    private java.lang.String _linkedin;

    private java.lang.Boolean _publicProfile;

    private java.lang.String _facebook;

    private java.lang.String _google;

    private java.lang.String _isoCode;

    private java.lang.Integer _creditsAvailable;

    private com.webratio.webapp.gamificationCommunity.CommunityUser_CreditsAvailableBean _creditsAvailableBean;

    private java.math.BigDecimal _creditsSpent;

    private com.webratio.webapp.gamificationCommunity.CommunityUser_CreditsSpentBean _creditsSpentBean;

    private java.sql.Date _birthDate;

    private java.sql.Timestamp _registrationDate;

    private java.util.Set _userHeadQuarterToAction = new java.util.HashSet();

    private java.util.Set _userHeadQuarterToBadgeAcquired = new java.util.HashSet();

    private java.util.Set _usercrmToMostimportantBadge = new java.util.HashSet();

    private java.util.Set _communityUserToNotification = new java.util.HashSet();

    private java.util.Set _communityUserToRewardInstance = new java.util.HashSet();

    private float _searchScore;

    public java.math.BigDecimal getParticipation() {
        return _participation;
    }

    public void setParticipation(java.math.BigDecimal _participation) {
        this._participation = _participation;
    }

    public java.math.BigDecimal getTotalCredit() {
        return _totalCredit;
    }

    public void setTotalCredit(java.math.BigDecimal _totalCredit) {
        this._totalCredit = _totalCredit;
    }

    public java.math.BigDecimal getParticipation7Days() {
        return _participation7Days;
    }

    public void setParticipation7Days(java.math.BigDecimal _participation7Days) {
        this._participation7Days = _participation7Days;
    }

    public java.lang.String getCompanyName() {
        return _companyName;
    }

    public void setCompanyName(java.lang.String _companyName) {
        this._companyName = _companyName;
    }

    public java.lang.String getFirstName() {
        return _firstName;
    }

    public void setFirstName(java.lang.String _firstName) {
        this._firstName = _firstName;
    }

    public java.lang.String getLastName() {
        return _lastName;
    }

    public void setLastName(java.lang.String _lastName) {
        this._lastName = _lastName;
    }

    public java.lang.String getCity() {
        return _city;
    }

    public void setCity(java.lang.String _city) {
        this._city = _city;
    }

    public java.lang.String getSmallPhotoRef() {
        return _smallPhotoRef;
    }

    public void setSmallPhotoRef(java.lang.String _smallPhotoRef) {
        this._smallPhotoRef = _smallPhotoRef;
    }

    public java.sql.Blob getSmallPhotoBinary() {
        return _smallPhotoBinary;
    }

    public void setSmallPhotoBinary(java.sql.Blob _smallPhotoBinary) {
        this._smallPhotoBinary = _smallPhotoBinary;
    }

    public java.lang.Object getSmallPhoto() {
        return _smallPhoto;
    }

    public void setSmallPhoto(java.lang.Object _smallPhoto) {
        this._smallPhoto = _smallPhoto;
    }

    public java.lang.String getTwitter() {
        return _twitter;
    }

    public void setTwitter(java.lang.String _twitter) {
        this._twitter = _twitter;
    }

    public java.lang.String getCountry() {
        return _country;
    }

    public void setCountry(java.lang.String _country) {
        this._country = _country;
    }

    public java.lang.String getGeographicalArea() {
        return _geographicalArea;
    }

    public void setGeographicalArea(java.lang.String _geographicalArea) {
        this._geographicalArea = _geographicalArea;
    }

    public java.lang.String getWebSite() {
        return _webSite;
    }

    public void setWebSite(java.lang.String _webSite) {
        this._webSite = _webSite;
    }

    public java.lang.String getBigPhotoRef() {
        return _bigPhotoRef;
    }

    public void setBigPhotoRef(java.lang.String _bigPhotoRef) {
        this._bigPhotoRef = _bigPhotoRef;
    }

    public java.sql.Blob getBigPhotoBinary() {
        return _bigPhotoBinary;
    }

    public void setBigPhotoBinary(java.sql.Blob _bigPhotoBinary) {
        this._bigPhotoBinary = _bigPhotoBinary;
    }

    public java.lang.Object getBigPhoto() {
        return _bigPhoto;
    }

    public void setBigPhoto(java.lang.Object _bigPhoto) {
        this._bigPhoto = _bigPhoto;
    }

    public java.lang.String getBio() {
        return _bio;
    }

    public void setBio(java.lang.String _bio) {
        this._bio = _bio;
    }

    public java.lang.String getLinkedin() {
        return _linkedin;
    }

    public void setLinkedin(java.lang.String _linkedin) {
        this._linkedin = _linkedin;
    }

    public java.lang.Boolean getPublicProfile() {
        return _publicProfile;
    }

    public void setPublicProfile(java.lang.Boolean _publicProfile) {
        this._publicProfile = _publicProfile;
    }

    public java.lang.String getFacebook() {
        return _facebook;
    }

    public void setFacebook(java.lang.String _facebook) {
        this._facebook = _facebook;
    }

    public java.lang.String getGoogle() {
        return _google;
    }

    public void setGoogle(java.lang.String _google) {
        this._google = _google;
    }

    public java.lang.String getIsoCode() {
        return _isoCode;
    }

    public void setIsoCode(java.lang.String _isoCode) {
        this._isoCode = _isoCode;
    }

    public java.lang.Integer getCreditsAvailable() {
        if (_creditsAvailable != null) {
            return _creditsAvailable;
        }
        com.webratio.webapp.gamificationCommunity.CommunityUser_CreditsAvailableBean __creditsAvailable = this
                .getCreditsAvailableBean();
        if (__creditsAvailable != null) {
            return __creditsAvailable.getValue();
        }
        return _creditsAvailable;
    }

    public void setCreditsAvailable(java.lang.Integer _creditsAvailable) {
        this._creditsAvailable = _creditsAvailable;
    }

    public com.webratio.webapp.gamificationCommunity.CommunityUser_CreditsAvailableBean getCreditsAvailableBean() {
        return _creditsAvailableBean;
    }

    public void setCreditsAvailableBean(
            com.webratio.webapp.gamificationCommunity.CommunityUser_CreditsAvailableBean _creditsAvailableBean) {
        this._creditsAvailableBean = _creditsAvailableBean;
    }

    public java.math.BigDecimal getCreditsSpent() {
        if (_creditsSpent != null) {
            return _creditsSpent;
        }
        com.webratio.webapp.gamificationCommunity.CommunityUser_CreditsSpentBean __creditsSpent = this.getCreditsSpentBean();
        if (__creditsSpent != null) {
            return __creditsSpent.getValue();
        }
        return _creditsSpent;
    }

    public void setCreditsSpent(java.math.BigDecimal _creditsSpent) {
        this._creditsSpent = _creditsSpent;
    }

    public com.webratio.webapp.gamificationCommunity.CommunityUser_CreditsSpentBean getCreditsSpentBean() {
        return _creditsSpentBean;
    }

    public void setCreditsSpentBean(com.webratio.webapp.gamificationCommunity.CommunityUser_CreditsSpentBean _creditsSpentBean) {
        this._creditsSpentBean = _creditsSpentBean;
    }

    public java.sql.Date getBirthDate() {
        return _birthDate;
    }

    public void setBirthDate(java.sql.Date _birthDate) {
        this._birthDate = _birthDate;
    }

    public java.sql.Timestamp getRegistrationDate() {
        return _registrationDate;
    }

    public void setRegistrationDate(java.sql.Timestamp _registrationDate) {
        this._registrationDate = _registrationDate;
    }

    public java.util.Set getUserHeadQuarterToAction() {
        return _userHeadQuarterToAction;
    }

    public void setUserHeadQuarterToAction(java.util.Set _userHeadQuarterToAction) {
        this._userHeadQuarterToAction = _userHeadQuarterToAction;
    }

    public java.util.Set getUserHeadQuarterToBadgeAcquired() {
        return _userHeadQuarterToBadgeAcquired;
    }

    public void setUserHeadQuarterToBadgeAcquired(java.util.Set _userHeadQuarterToBadgeAcquired) {
        this._userHeadQuarterToBadgeAcquired = _userHeadQuarterToBadgeAcquired;
    }

    public java.util.Set getUsercrmToMostimportantBadge() {
        return _usercrmToMostimportantBadge;
    }

    public void setUsercrmToMostimportantBadge(java.util.Set _usercrmToMostimportantBadge) {
        this._usercrmToMostimportantBadge = _usercrmToMostimportantBadge;
    }

    public java.util.Set getCommunityUserToNotification() {
        return _communityUserToNotification;
    }

    public void setCommunityUserToNotification(java.util.Set _communityUserToNotification) {
        this._communityUserToNotification = _communityUserToNotification;
    }

    public java.util.Set getCommunityUserToRewardInstance() {
        return _communityUserToRewardInstance;
    }

    public void setCommunityUserToRewardInstance(java.util.Set _communityUserToRewardInstance) {
        this._communityUserToRewardInstance = _communityUserToRewardInstance;
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
        if (_participation != null)
            sb.append("participation=" + _participation + ',');
        if (_totalCredit != null)
            sb.append("totalCredit=" + _totalCredit + ',');
        if (_participation7Days != null)
            sb.append("participation7Days=" + _participation7Days + ',');
        if (_companyName != null)
            sb.append("companyName=" + _companyName + ',');
        if (_firstName != null)
            sb.append("firstName=" + _firstName + ',');
        if (_lastName != null)
            sb.append("lastName=" + _lastName + ',');
        if (_city != null)
            sb.append("city=" + _city + ',');
        if (_smallPhoto != null)
            sb.append("smallPhoto=" + _smallPhoto + ',');
        if (_twitter != null)
            sb.append("twitter=" + _twitter + ',');
        if (_country != null)
            sb.append("country=" + _country + ',');
        if (_geographicalArea != null)
            sb.append("geographicalArea=" + _geographicalArea + ',');
        if (_webSite != null)
            sb.append("webSite=" + _webSite + ',');
        if (_bigPhoto != null)
            sb.append("bigPhoto=" + _bigPhoto + ',');
        if (_bio != null)
            sb.append("bio=" + _bio + ',');
        if (_linkedin != null)
            sb.append("linkedin=" + _linkedin + ',');
        if (_publicProfile != null)
            sb.append("publicProfile=" + _publicProfile + ',');
        if (_facebook != null)
            sb.append("facebook=" + _facebook + ',');
        if (_google != null)
            sb.append("google=" + _google + ',');
        if (_isoCode != null)
            sb.append("isoCode=" + _isoCode + ',');
        if (_creditsAvailable != null)
            sb.append("creditsAvailable=" + _creditsAvailable + ',');
        if (_creditsSpent != null)
            sb.append("creditsSpent=" + _creditsSpent + ',');
        if (_birthDate != null)
            sb.append("birthDate=" + _birthDate + ',');
        if (_registrationDate != null)
            sb.append("registrationDate=" + _registrationDate + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }
}

package com.webratio.webapp.gamificationCommunity;

public class Positions implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.String _nickname;

    private java.lang.Integer _participation;

    private java.lang.Integer _reputation;

    private java.lang.Integer _participationMonthly;

    private java.lang.Integer _participationCompany;

    private float _searchScore;

    public java.lang.String getNickname() {
        return _nickname;
    }

    public void setNickname(java.lang.String _nickname) {
        this._nickname = _nickname;
    }

    public java.lang.Integer getParticipation() {
        return _participation;
    }

    public void setParticipation(java.lang.Integer _participation) {
        this._participation = _participation;
    }

    public java.lang.Integer getReputation() {
        return _reputation;
    }

    public void setReputation(java.lang.Integer _reputation) {
        this._reputation = _reputation;
    }

    public java.lang.Integer getParticipationMonthly() {
        return _participationMonthly;
    }

    public void setParticipationMonthly(java.lang.Integer _participationMonthly) {
        this._participationMonthly = _participationMonthly;
    }

    public java.lang.Integer getParticipationCompany() {
        return _participationCompany;
    }

    public void setParticipationCompany(java.lang.Integer _participationCompany) {
        this._participationCompany = _participationCompany;
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
        if (_nickname != null)
            sb.append("nickname=" + _nickname + ',');
        if (_participation != null)
            sb.append("participation=" + _participation + ',');
        if (_reputation != null)
            sb.append("reputation=" + _reputation + ',');
        if (_participationMonthly != null)
            sb.append("participationMonthly=" + _participationMonthly + ',');
        if (_participationCompany != null)
            sb.append("participationCompany=" + _participationCompany + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.gamificationCommunity.Positions)) {
            return false;
        }
        com.webratio.webapp.gamificationCommunity.Positions __other = (com.webratio.webapp.gamificationCommunity.Positions) obj;
        java.lang.Object key = null;
        java.lang.Object otherKey = null;
        key = this.getNickname();
        otherKey = __other.getNickname();
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
        key = this.getNickname();
        if (key != null) {
            hashCode |= key.hashCode();
        }
        return hashCode;
    }
}

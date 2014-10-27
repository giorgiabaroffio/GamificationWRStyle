package com.webratio.webapp.gamificationCommunity;

public class ActionInstance implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.sql.Timestamp _date;

    private java.math.BigDecimal _score;

    private java.lang.String _actionArea;

    private com.webratio.webapp.gamificationCommunity.ActionInstance_ActionAreaBean _actionAreaBean;

    private java.lang.Boolean _reputation;

    private java.lang.Boolean _participation;

    private java.lang.String _name;

    private com.webratio.webapp.gamificationCommunity.ActionInstance_NameBean _nameBean;

    private java.lang.String _description;

    private java.lang.String _tag;

    private java.lang.String _link;

    private java.lang.String _executor;

    private java.lang.Integer _objectKey;

    private com.webratio.webapp.gamificationCommunity.CommunityUser _actionToUserHeadQuarter;

    private com.webratio.webapp.gamificationCommunity.ActionType _actionInstanceToActionType;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.sql.Timestamp getDate() {
        return _date;
    }

    public void setDate(java.sql.Timestamp _date) {
        this._date = _date;
    }

    public java.math.BigDecimal getScore() {
        return _score;
    }

    public void setScore(java.math.BigDecimal _score) {
        this._score = _score;
    }

    public java.lang.String getActionArea() {
        if (_actionArea != null) {
            return _actionArea;
        }
        com.webratio.webapp.gamificationCommunity.ActionInstance_ActionAreaBean __actionArea = this.getActionAreaBean();
        if (__actionArea != null) {
            return __actionArea.getValue();
        }
        return _actionArea;
    }

    public void setActionArea(java.lang.String _actionArea) {
        this._actionArea = _actionArea;
    }

    public com.webratio.webapp.gamificationCommunity.ActionInstance_ActionAreaBean getActionAreaBean() {
        return _actionAreaBean;
    }

    public void setActionAreaBean(com.webratio.webapp.gamificationCommunity.ActionInstance_ActionAreaBean _actionAreaBean) {
        this._actionAreaBean = _actionAreaBean;
    }

    public java.lang.Boolean getReputation() {
        if (_reputation != null) {
            return _reputation;
        }
        java.lang.Object role16xObject = this.getActionInstanceToActionType();
        if (role16xObject != null) {
            com.webratio.webapp.gamificationCommunity.ActionType role16x = role16xObject instanceof java.util.Set ? (((java.util.Set) role16xObject)
                    .isEmpty() ? null : (com.webratio.webapp.gamificationCommunity.ActionType) ((java.util.Set) role16xObject)
                    .iterator().next()) : (com.webratio.webapp.gamificationCommunity.ActionType) role16xObject;
            if (role16x != null) {
                return role16x.getReputation();
            }
        }
        return _reputation;
    }

    public void setReputation(java.lang.Boolean _reputation) {
        this._reputation = _reputation;
    }

    public java.lang.Boolean getParticipation() {
        if (_participation != null) {
            return _participation;
        }
        java.lang.Object role16xObject = this.getActionInstanceToActionType();
        if (role16xObject != null) {
            com.webratio.webapp.gamificationCommunity.ActionType role16x = role16xObject instanceof java.util.Set ? (((java.util.Set) role16xObject)
                    .isEmpty() ? null : (com.webratio.webapp.gamificationCommunity.ActionType) ((java.util.Set) role16xObject)
                    .iterator().next()) : (com.webratio.webapp.gamificationCommunity.ActionType) role16xObject;
            if (role16x != null) {
                return role16x.getParticipation();
            }
        }
        return _participation;
    }

    public void setParticipation(java.lang.Boolean _participation) {
        this._participation = _participation;
    }

    public java.lang.String getName() {
        if (_name != null) {
            return _name;
        }
        com.webratio.webapp.gamificationCommunity.ActionInstance_NameBean __name = this.getNameBean();
        if (__name != null) {
            return __name.getValue();
        }
        return _name;
    }

    public void setName(java.lang.String _name) {
        this._name = _name;
    }

    public com.webratio.webapp.gamificationCommunity.ActionInstance_NameBean getNameBean() {
        return _nameBean;
    }

    public void setNameBean(com.webratio.webapp.gamificationCommunity.ActionInstance_NameBean _nameBean) {
        this._nameBean = _nameBean;
    }

    public java.lang.String getDescription() {
        return _description;
    }

    public void setDescription(java.lang.String _description) {
        this._description = _description;
    }

    public java.lang.String getTag() {
        return _tag;
    }

    public void setTag(java.lang.String _tag) {
        this._tag = _tag;
    }

    public java.lang.String getLink() {
        return _link;
    }

    public void setLink(java.lang.String _link) {
        this._link = _link;
    }

    public java.lang.String getExecutor() {
        return _executor;
    }

    public void setExecutor(java.lang.String _executor) {
        this._executor = _executor;
    }

    public java.lang.Integer getObjectKey() {
        return _objectKey;
    }

    public void setObjectKey(java.lang.Integer _objectKey) {
        this._objectKey = _objectKey;
    }

    public com.webratio.webapp.gamificationCommunity.CommunityUser getActionToUserHeadQuarter() {
        return _actionToUserHeadQuarter;
    }

    public void setActionToUserHeadQuarter(com.webratio.webapp.gamificationCommunity.CommunityUser _actionToUserHeadQuarter) {
        this._actionToUserHeadQuarter = _actionToUserHeadQuarter;
    }

    public com.webratio.webapp.gamificationCommunity.ActionType getActionInstanceToActionType() {
        return _actionInstanceToActionType;
    }

    public void setActionInstanceToActionType(com.webratio.webapp.gamificationCommunity.ActionType _actionInstanceToActionType) {
        this._actionInstanceToActionType = _actionInstanceToActionType;
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
        if (_date != null)
            sb.append("date=" + _date + ',');
        if (_score != null)
            sb.append("score=" + _score + ',');
        if (_actionArea != null)
            sb.append("actionArea=" + _actionArea + ',');
        if (_reputation != null)
            sb.append("reputation=" + _reputation + ',');
        if (_participation != null)
            sb.append("participation=" + _participation + ',');
        if (_name != null)
            sb.append("name=" + _name + ',');
        if (_description != null)
            sb.append("description=" + _description + ',');
        if (_tag != null)
            sb.append("tag=" + _tag + ',');
        if (_link != null)
            sb.append("link=" + _link + ',');
        if (_executor != null)
            sb.append("executor=" + _executor + ',');
        if (_objectKey != null)
            sb.append("objectKey=" + _objectKey + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.gamificationCommunity.ActionInstance)) {
            return false;
        }
        com.webratio.webapp.gamificationCommunity.ActionInstance __other = (com.webratio.webapp.gamificationCommunity.ActionInstance) obj;
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

package com.webratio.webapp.gamificationCommunity;

public class ActionType implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _name;

    private java.math.BigDecimal _score;

    private java.lang.Boolean _reputation;

    private java.lang.Boolean _participation;

    private java.lang.String _area;

    private java.lang.String _description;

    private java.lang.Boolean _checkTimeElapsed;

    private java.lang.Integer _timeElapsed;

    private java.lang.Boolean _repeatable;

    private java.lang.Boolean _active;

    private java.util.Set _actionTypeToGamificationDictionary = new java.util.HashSet();

    private java.util.Set _actionTypeToActionInstance = new java.util.HashSet();

    private com.webratio.webapp.gamificationCommunity.ThematicArea _actionTypeToThematicArea;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getName() {
        return _name;
    }

    public void setName(java.lang.String _name) {
        this._name = _name;
    }

    public java.math.BigDecimal getScore() {
        return _score;
    }

    public void setScore(java.math.BigDecimal _score) {
        this._score = _score;
    }

    public java.lang.Boolean getReputation() {
        return _reputation;
    }

    public void setReputation(java.lang.Boolean _reputation) {
        this._reputation = _reputation;
    }

    public java.lang.Boolean getParticipation() {
        return _participation;
    }

    public void setParticipation(java.lang.Boolean _participation) {
        this._participation = _participation;
    }

    public java.lang.String getArea() {
        if (_area != null) {
            return _area;
        }
        java.lang.Object role10qObject = this.getActionTypeToThematicArea();
        if (role10qObject != null) {
            com.webratio.webapp.gamificationCommunity.ThematicArea role10q = role10qObject instanceof java.util.Set ? (((java.util.Set) role10qObject)
                    .isEmpty() ? null : (com.webratio.webapp.gamificationCommunity.ThematicArea) ((java.util.Set) role10qObject)
                    .iterator().next()) : (com.webratio.webapp.gamificationCommunity.ThematicArea) role10qObject;
            if (role10q != null) {
                return role10q.getAreaName();
            }
        }
        return _area;
    }

    public void setArea(java.lang.String _area) {
        this._area = _area;
    }

    public java.lang.String getDescription() {
        return _description;
    }

    public void setDescription(java.lang.String _description) {
        this._description = _description;
    }

    public java.lang.Boolean getCheckTimeElapsed() {
        return _checkTimeElapsed;
    }

    public void setCheckTimeElapsed(java.lang.Boolean _checkTimeElapsed) {
        this._checkTimeElapsed = _checkTimeElapsed;
    }

    public java.lang.Integer getTimeElapsed() {
        return _timeElapsed;
    }

    public void setTimeElapsed(java.lang.Integer _timeElapsed) {
        this._timeElapsed = _timeElapsed;
    }

    public java.lang.Boolean getRepeatable() {
        return _repeatable;
    }

    public void setRepeatable(java.lang.Boolean _repeatable) {
        this._repeatable = _repeatable;
    }

    public java.lang.Boolean getActive() {
        return _active;
    }

    public void setActive(java.lang.Boolean _active) {
        this._active = _active;
    }

    public java.util.Set getActionTypeToGamificationDictionary() {
        return _actionTypeToGamificationDictionary;
    }

    public void setActionTypeToGamificationDictionary(java.util.Set _actionTypeToGamificationDictionary) {
        this._actionTypeToGamificationDictionary = _actionTypeToGamificationDictionary;
    }

    public java.util.Set getActionTypeToActionInstance() {
        return _actionTypeToActionInstance;
    }

    public void setActionTypeToActionInstance(java.util.Set _actionTypeToActionInstance) {
        this._actionTypeToActionInstance = _actionTypeToActionInstance;
    }

    public com.webratio.webapp.gamificationCommunity.ThematicArea getActionTypeToThematicArea() {
        return _actionTypeToThematicArea;
    }

    public void setActionTypeToThematicArea(com.webratio.webapp.gamificationCommunity.ThematicArea _actionTypeToThematicArea) {
        this._actionTypeToThematicArea = _actionTypeToThematicArea;
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
        if (_name != null)
            sb.append("name=" + _name + ',');
        if (_score != null)
            sb.append("score=" + _score + ',');
        if (_reputation != null)
            sb.append("reputation=" + _reputation + ',');
        if (_participation != null)
            sb.append("participation=" + _participation + ',');
        if (_area != null)
            sb.append("area=" + _area + ',');
        if (_description != null)
            sb.append("description=" + _description + ',');
        if (_checkTimeElapsed != null)
            sb.append("checkTimeElapsed=" + _checkTimeElapsed + ',');
        if (_timeElapsed != null)
            sb.append("timeElapsed=" + _timeElapsed + ',');
        if (_repeatable != null)
            sb.append("repeatable=" + _repeatable + ',');
        if (_active != null)
            sb.append("active=" + _active + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.gamificationCommunity.ActionType)) {
            return false;
        }
        com.webratio.webapp.gamificationCommunity.ActionType __other = (com.webratio.webapp.gamificationCommunity.ActionType) obj;
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

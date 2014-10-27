SELECT al1.oid, sum(al2.score)
FROM community_user al1, action_instance al2, action_type al3
WHERE al3.reputation = true AND al1.oid = al2.rank_oid AND al2.action_type_oid = al3.oid AND al1.oid in(:user) AND al3.oid in(:action) 
GROUP BY al1.oid;
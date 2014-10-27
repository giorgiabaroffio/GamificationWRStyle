#input levelmin,levelmax,area,name,geo_area
#output nicknames,number_ris

import groovy.sql.Sql;
import java.sql.Connection;
import com.webratio.rtx.db.DBTransaction;
import com.webratio.rtx.db.HibernateService;
import com.webratio.rtx.core.BeanHelper;

def nicknames	
Connection conn = null
def dbId = "db1"

def databaseId = "db1"
def session = getDBSession(databaseId)

def are=BeanHelper.asStringArray(area)
def upper=null
def query=null
def empty=0

query="select u.oid from community_user r, user_information u where r.oid=u.oid  "

def wh=0
/*if((BeanHelper.isNullOrEmptyString(name))&&(BeanHelper.isNullOrEmptyString(area))&&(BeanHelper.isNullOrEmptyString(geo_area))&&(BeanHelper.asString(levelmin)=="1")&&(BeanHelper.asString(levelmax)=="9")&&(BeanHelper.isNullOrEmptyString(levelmin))&&(BeanHelper.isNullOrEmptyString(levelmax))){
	query=query
}*/
if(!BeanHelper.isNullOrEmptyString(name)){
upper=name.toUpperCase()
empty=1
	query=query+" and (upper(u.first_name) in ('"+upper+"') or upper(u.last_name) in ('"+upper+"') or upper(u.company_name) like upper('%"+name+"%'))" 
	wh=1
}
if(!BeanHelper.isNullOrEmptyString(geo_area)){
	empty=1
	query=query+" and u.area_geografica='"+geo_area+"'" 
	wh=1
}
if((!BeanHelper.isNullOrEmptyArray(are))&&(!BeanHelper.isNullOrEmptyString(area))){
	k=0
	empty=1
	query=query+" and u.oid in "
	while(are.size()>k){
		if(k==0){
			query=query+"(select a.oid from mostimportant_badge m,community_user a where m.rankoid=a.oid and importance>="+levelmin+" and importance<="+levelmax+" and area in ('"+are[k]+"')) "
		
		}else{
			query=query+" and u.oid in (select a.oid from mostimportant_badge m,community_user a where m.rankoid=a.oid and importance>="+levelmin+" and importance<="+levelmax+" and area in ('"+are[k]+"')) "
			}
		k++
	}
	 

}

if((BeanHelper.isNullOrEmptyString(area))&&(!BeanHelper.isNullOrEmptyString(levelmin))&&(!BeanHelper.isNullOrEmptyString(levelmax))&&((BeanHelper.asString(levelmin)!="0")||(BeanHelper.asString(levelmax)!="9"))){
	empty=1
	query=query+" and u.oid in "
	query=query+" (select a.oid from mostimportant_badge m,community_user a where m.rankoid=a.oid and importance>="+levelmin+" and importance<="+levelmax+"  )"
	
}
 println query
def list=[]
def ris=0
def result=null
if(empty==0){
//No filters
ris=1
}else{
result = session.createSQLQuery(query).list()
for (r in result){

	list.add(r)
	ris++
}
}
commit(session)
if(ris==0){
list.add("HQ.NoResults.HQ")
}
return ["nicknames" : list,
		"number_ris":ris]

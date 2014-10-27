#input Integer idBadgeDict, BigDecimal scoreBadgeDict, Integer[] user, BigDecimal[] userScore, Integer[] userGot
#output Integer[] newUser, Integer[] newBadge, today, BigDecimal[] score

import java.text.SimpleDateFormat;
import java.util.Date;
import com.webratio.rtx.core.BeanHelper;
import java.math.BigDecimal;
import java.util.Arrays;


BigDecimal[] userScore = userScore
Integer[] user = user
Integer[] userGot = userGot
scoreUsed = []  


SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
Date now = new Date();
def today = sdfDate.format(now);


def newBadge = []
def newUser = []
def i=0
while(user.size()>i){
	def k=0
		if(scoreBadgeDict<=userScore[i]){
			if(!BeanHelper.isNullOrEmptyArray(userGot)){
				if(!Arrays.asList(userGot).contains(user[i])){
					newUser.add(user[i])
					newBadge.add(idBadgeDict)
					scoreUsed.add(scoreBadgeDict)
				}
				}else{
					newUser.add(user[i])
					newBadge.add(idBadgeDict)
					scoreUsed.add(scoreBadgeDict)
			}
		}
i++
}

return["newUser"  : newUser,
	   "newBadge" : newBadge,
	   "today"    : today,
	   "score"    : scoreUsed] 
#input Timestamp max_date, Timestamp date, Integer elapsedActionTime, 
#output ris
import com.webratio.rtx.core.BeanHelper
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Calendar;
import java.sql.Timestamp;
def ris=false

Properties props = rtx.getVariableProperties()

if(BeanHelper.isNullOrEmptyString(elapsedActionTime)){
	elapsedActionTime = Integer.parseInt(props.getProperty("defaultCheckTimeElapsed"))
}

//println elapsedActionTime 
//println elapsedActionTime*60000
/*
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
Date parsedDate = dateFormat.parse(BeanHelper.asString(date));
Date parsedDatemax=dateFormat.parse(max_date);
Timestamp timestampnew = new Timestamp(parsedDate.getTime());
Timestamp timestampmax = new Timestamp(parsedDatemax.getTime());
*/


//def sott=timestampnew.getTime()- timestampmax.getTime()

def sott = date.getTime()- max_date.getTime()
if(sott>(elapsedActionTime*60000)){
	ris=true
}

return ["ris":ris]
#input Integer score_needed,Integer score_available
import com.webratio.rtx.RTXConstants
import com.webratio.rtx.core.BeanHelper

if(score_available>=score_needed){
	return [ "resultCode" : RTXConstants.SUCCESS_CODE ]
}else{
	 return [ "resultCode" : RTXConstants.ERROR_CODE ]
}
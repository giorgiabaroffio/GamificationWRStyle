#input Integer nickname, Boolean isPublic
import com.webratio.rtx.core.BeanHelper
import javax.servlet.http.HttpServletResponse
import com.webratio.rtx.RTXConstants
HttpServletResponse response = localContext.get(RTXConstants.HTTP_SERVLET_RESPONSE_KEY)

/*if (BeanHelper.isNullOrEmptyString(nickname)) {
	def loginUrl = rtx.getVariableProperties().get("login_webratioaccount_url")
	def callbackUrl = rtx.getVariableProperties().get("community_dashboard_url")
	loginUrl = loginUrl+"?pcp1l="+callbackUrl

	response.sendRedirect(loginUrl)
	return
}*/

if (isPublic != true) {
	response.sendRedirect(rtx.getVariableProperties().get("private_dashboard_url"))
	return
}
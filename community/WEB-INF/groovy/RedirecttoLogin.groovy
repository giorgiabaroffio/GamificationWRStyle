import javax.servlet.http.HttpServletResponse
import com.webratio.rtx.RTXConstants

HttpServletResponse response = localContext.get(RTXConstants.HTTP_SERVLET_RESPONSE_KEY)
Properties props = rtx.getVariableProperties()
def loginUrl = props.getProperty("login_webratioaccount_url")
def callbackUrl = props.getProperty("community_dashboard_url")
loginUrl = loginUrl+"?pcp1l="+callbackUrl

response.sendRedirect(loginUrl)
#input String[] title, String[] description, BigDecimal[] credits, lang, String image
#output email_code, next_gifts, gift_image
import com.webratio.rtx.core.SecurityConfig
import com.webratio.rtx.RTXConstants
import com.webratio.rtx.security.RTXSigner
import javax.servlet.ServletContext
import com.webratio.struts.UriBuilder
import com.webratio.rtx.security.DefaultUriSigner
import com.webratio.struts.Requests

String point = "Points"
String next_gifts = ""
String gift_image = ""
String email_code = "community.newReward.onlyOne"
def i = 0

String baseURL = rtx.getModelService().getProjectProperty("baseURL")
String path = baseURL + "/wr-resource/"
ServletContext context = rtx.getApplicationContext().get(RTXConstants.SERVLET_CONTEXT)
UriBuilder uriBuilder = Requests.newUriBuilder(context)
SecurityConfig securityConfig = rtx.getModelService().getBLOBSecurityConfig()
RTXSigner signer = Requests.getSigner(null, securityConfig)

if (signer != null) {
	uriBuilder.setSigner(new DefaultUriSigner(signer, true, 1))
	gift_image = path + uriBuilder.setPath(image).build()
}

if(lang == "es"){
	point = "Puntos"
}
if(lang == "it"){
	point = "Punti"
}
if(lang == "fr"){
	point = "Points"
}
if (title.size()>0){
	next_gifts = "<ul>"
	email_code = "community.newReward"
}

while(title.size()>i){
	next_gifts += "<li>"
	next_gifts += title[i] + " " + credits[i] + " " + point
	next_gifts += "</li>"
i++
}
if (title.size()>0){
	next_gifts += "</ul>"
}
return [ "next_gifts" :next_gifts, "email_code" : email_code, "gift_image" : gift_image ]
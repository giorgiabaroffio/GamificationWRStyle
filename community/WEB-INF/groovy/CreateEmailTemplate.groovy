#input String mailText, String mailHeader, String mailFooter
import com.webratio.rtx.RTXConstants
import com.webratio.rtx.core.BeanHelper

def backgroundColor = "#efefef"

if (BeanHelper.isNullOrEmptyString(mailText)){
	return [ "resultCode" : RTXConstants.ERROR_CODE ]
}
if (BeanHelper.isNullOrEmptyString(mailHeader)){
	mailHeader = " "
	backgroundColor = "#ffffff"
}
if (BeanHelper.isNullOrEmptyString(mailFooter)){
	mailFooter = " "
}
def fontFamilyDef = "font-family: 'Trebuchet MS', Verdana, Arial, Helvetica, sans-serif; "
def String finalMailText = ""

finalMailText+= "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\"> \n"
finalMailText+="<html><head><title>WebRatio Community Mail</title> \n"
finalMailText+="<style type=\"text/css\"> \n"
finalMailText+="  img { border: none; } \n"
finalMailText+="  body, td, div, p, h1, h2, h3 { "+fontFamilyDef+" } \n"
finalMailText+="  body { background-color: "+backgroundColor+" } \n"
finalMailText+="  div, p, td { color: rgb(102, 102, 102); font-size: 10pt; } \n"
finalMailText+="  p { margin: 3pt 0 } \n"
finalMailText+="</style> \n"
finalMailText+="</head><body> \n"
finalMailText+="<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\""
finalMailText+=" style=\"background-color: "+backgroundColor+" \" "
finalMailText+=">"
finalMailText+="<tr><td align=\"center\" style=\""+fontFamilyDef+"\" >"
finalMailText+="<table cellspacing=\"0\" cellpadding=\"0\" width=\"680\">"
finalMailText+="<tr><td style=\"width: 680px;\">"+mailHeader+"</td></tr>"
finalMailText+="<tr><td style=\"background-color: #FFFFFF;\">"+mailText+"</td></tr>"
finalMailText+="<tr><td>"+mailFooter+"</td></tr>"
finalMailText+="</table></td></tr></table>"
finalMailText+="</body></html>"

return finalMailText

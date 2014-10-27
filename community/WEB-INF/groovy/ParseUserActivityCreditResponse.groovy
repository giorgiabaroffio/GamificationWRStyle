#input String json
#output String[] userEmail, String[] actionName, String[] area
#output String[] description, String[] tag, String[] link, String[] executor
#output Timestamp[] time, Integer[] objectkey



import com.fasterxml.jackson.core.JsonFactory
import com.fasterxml.jackson.core.JsonGenerationException
import com.fasterxml.jackson.core.JsonParser
import com.fasterxml.jackson.core.JsonToken
import com.fasterxml.jackson.databind.JsonMappingException
//import org.codehaus.jackson.JsonFactory;
//import org.codehaus.jackson.JsonGenerationException;
//import org.codehaus.jackson.JsonParser;
//import org.codehaus.jackson.JsonToken;
//import org.codehaus.jackson.map.JsonMappingException;
import java.io.InputStream
import java.io.ByteArrayInputStream
import com.webratio.rtx.core.BeanHelper




//println "------------------------------------------------------------"

//println "print JSON values "+json

ArrayList userEmail = new ArrayList()
ArrayList actionName = new ArrayList()
ArrayList time = new ArrayList()
ArrayList area = new ArrayList()
ArrayList description = new ArrayList()
ArrayList tag = new ArrayList()
ArrayList link = new ArrayList()
ArrayList executor = new ArrayList()
ArrayList objectkey = new ArrayList()

JsonParser jParser = null
InputStream stream = null
 
try{

	JsonFactory jfactory = new JsonFactory();
	 
	stream = new ByteArrayInputStream(json.getBytes("UTF-8"));
	
	jParser = jfactory.createJsonParser(stream);
		while (jParser.nextToken() != JsonToken.END_ARRAY) {
	        
			String fieldname = jParser.getCurrentName();
			switch(fieldname) {
				case "email":
					jParser.nextToken()
					userEmail.add(jParser.getText())	
			        break
				case "area":
					jParser.nextToken()
					area.add(jParser.getText())	
			        break
				case "name":
					jParser.nextToken()
					actionName.add(jParser.getText())	
			        break
				case "description":
					jParser.nextToken()
					description.add(jParser.getText())	
			        break
				case "tag":
					jParser.nextToken()
					tag.add(jParser.getText())	
			        break
				case "link":
					jParser.nextToken()
					link.add(jParser.getText())	
			        break
				case "executor":
					jParser.nextToken()
					executor.add(jParser.getText())	
			        break
				case "time":
					jParser.nextToken()
					time.add(new java.sql.Timestamp(jParser.getLongValue()))	
			        break
				case "objectkey":
					jParser.nextToken()
					objectkey.add(jParser.getIntValue())	
			        break				        			        		        		        		        		        		        		        
			}
	
		 }
} catch(Exception e){
	 e.printStackTrace()
} finally {
	if(!BeanHelper.isNullOrEmptyString(jParser)){
		jParser.close();
    }
    if(!BeanHelper.isNullOrEmptyString(stream)){
    	stream.close();
    }	
}	  

return ["area": area, "actionName": actionName, "userEmail": userEmail, "tag": tag, "description": description, "executor": executor, "link": link, "time": time, "objectkey": objectkey]
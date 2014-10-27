#input String json
#output String[] userEmail, String[] firstName, String[] lastName, String[] password, String[] city, String[] country, String[] username
#output Boolean[] internal, Boolean[] publicProfile, Date[] birthdate, String[] geoArea, String[] isocode, String[] photoname, String photocode

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

 println json

ArrayList userEmail = new ArrayList()
ArrayList firstName = new ArrayList()
ArrayList lastName = new ArrayList()
ArrayList password = new ArrayList()
ArrayList city = new ArrayList()
ArrayList country = new ArrayList()
ArrayList username = new ArrayList()
ArrayList internal = new ArrayList()
ArrayList publicProfile = new ArrayList()
ArrayList birthdate = new ArrayList()
ArrayList geoArea = new ArrayList()
ArrayList isocode = new ArrayList()
ArrayList photoname = new ArrayList()
ArrayList photocode = new ArrayList()

println json

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
				case "firstname":
					jParser.nextToken()
					firstName.add(jParser.getText())	
			        break
				case "lastname":
					jParser.nextToken()
					lastName.add(jParser.getText())	
			        break
				case "username":
					jParser.nextToken()
					username.add(jParser.getText())	
			        break
				case "password":
					jParser.nextToken()
					password.add(jParser.getText())	
			        break
				case "city":
					jParser.nextToken()
					city.add(jParser.getText())	
			        break
				case "country":
					jParser.nextToken()
					country.add(jParser.getText())	
			        break
				case "isocode":
					jParser.nextToken()
					isocode.add(jParser.getText())	
			        break
				case "geoarea":
					jParser.nextToken()
					geoArea.add(jParser.getText())	
			        break
				case "photoname":
					jParser.nextToken()
					photoname.add(jParser.getText())
			        break
				case "photocode":
					jParser.nextToken()
					photocode.add(jParser.getText())	
			        break
				case "publicprofile":
					jParser.nextToken()
					publicProfile.add(jParser.getBooleanValue())
			        break
				case "internal":
					jParser.nextToken()
					internal.add(jParser.getBooleanValue())
			        break			        				        			        
				case "birthdate":
					jParser.nextToken()
					if(!BeanHelper.isNullOrEmptyString(jParser.getLongValue())){	
    					birthdate.add(new java.sql.Date(new java.sql.Timestamp(jParser.getLongValue()).getTime()))	
    				}else{						
						birthdate.add(null)	
					}
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

return ["lastName": lastName, "username": username, "userEmail": userEmail, "firstName": firstName, "password": password, "country": country, "city": city, "publicProfile": publicProfile, "photoname": photoname, "geoArea": geoArea, "photocode": photocode, "birthdate": birthdate, "isocode": isocode, "internal": internal]
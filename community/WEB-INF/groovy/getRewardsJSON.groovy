#input Double[] neededPoints, String[] rewardName, Integer[] rewardOID, String userEmail
#output String json




import com.fasterxml.jackson.core.JsonEncoding
import com.fasterxml.jackson.core.JsonFactory
import com.fasterxml.jackson.core.JsonGenerationException
import com.fasterxml.jackson.core.JsonGenerator
import com.fasterxml.jackson.databind.JsonMappingException
//import org.codehaus.jackson.JsonEncoding
//import org.codehaus.jackson.JsonFactory
//import org.codehaus.jackson.JsonGenerationException
//import org.codehaus.jackson.JsonGenerator
//import org.codehaus.jackson.map.JsonMappingException
import java.io.OutputStream
import java.io.ByteArrayOutputStream

def json = null

try {

    OutputStream out = new ByteArrayOutputStream()
    
    JsonFactory jfactory = new JsonFactory();

    /*** write to file ***/
    JsonGenerator jGenerator = jfactory.createJsonGenerator(out, JsonEncoding.UTF8);
  //  jGenerator.writeStartObject(); // {

  //  jGenerator.writeFieldName("actions");
    jGenerator.writeStartArray(); 
	rewardOID.eachWithIndex{obj, idx ->
	    jGenerator.writeStartObject(); 
	    jGenerator.writeStringField("rewardName", rewardName[idx]);  
	    jGenerator.writeNumberField("rewardID", obj); 
	    jGenerator.writeNumberField("neededPoints", neededPoints[idx]);
	    jGenerator.writeStringField("userEmail", userEmail); 
	    jGenerator.writeEndObject(); 
	}
	 jGenerator.writeEndArray();
	//jGenerator.writeEndObject();

    jGenerator.close();
    
    json = out.toString()

} catch (JsonGenerationException e) {

    e.printStackTrace();

} catch (JsonMappingException e) {

    e.printStackTrace();

} catch (IOException e) {

    e.printStackTrace();

}


return ["json": json]
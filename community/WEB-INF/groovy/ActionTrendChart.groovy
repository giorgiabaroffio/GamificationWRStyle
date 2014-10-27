#input String[] actionName, Date[] dates, Integer[] occurrence, Date minDate, Date maxDate
#output String json

//import org.codehaus.jackson.node.JsonNodeFactory
//import org.codehaus.jackson.node.ArrayNode
//import org.codehaus.jackson.node.ObjectNode
import com.fasterxml.jackson.databind.node.JsonNodeFactory
import com.fasterxml.jackson.databind.node.ArrayNode
import com.fasterxml.jackson.databind.node.ObjectNode
import com.webratio.rtx.core.BeanHelper

def json = null




def first = true
def tmpAction = null

def actionsDate = [:]
def actionsOccurrence = [:]
ArrayList datesAction = new ArrayList()
ArrayList occurrenceAction = new ArrayList()
ArrayList singleAction = new ArrayList()

actionName.eachWithIndex{obj,i ->
	if(first){
		tmpAction = obj
		first=false
		datesAction.add(dates[i])
		occurrenceAction.add(occurrence[i])
	}else{
		if(tmpAction != obj){
		    //Save data and change action
		    actionsDate[tmpAction] = datesAction
		    actionsOccurrence[tmpAction] = occurrenceAction
		    singleAction.add(tmpAction)
		    datesAction = new ArrayList()
		    occurrenceAction = new ArrayList()
		    
			tmpAction = obj
			
			datesAction.add(dates[i])
			occurrenceAction.add(occurrence[i])				

			if((actionName.size()-1) == i){
		    	actionsDate[tmpAction] = datesAction
		    	actionsOccurrence[tmpAction] = occurrenceAction
		    	singleAction.add(tmpAction)
			}
		}else{
			datesAction.add(dates[i])
			occurrenceAction.add(occurrence[i])				
			if((actionName.size()-1) == i){
		    	actionsDate[tmpAction] = datesAction
		    	actionsOccurrence[tmpAction] = occurrenceAction	
		    	singleAction.add(tmpAction)
			}			
		}		
	}	
}



//CREATE JSON OBJECT

 
def indexData = 1

try {

    ObjectNode root = JsonNodeFactory.instance.objectNode()
    ArrayNode seriesArray = JsonNodeFactory.instance.arrayNode()
 
    singleAction.eachWithIndex{obj,i->

    	ObjectNode seriesElement = JsonNodeFactory.instance.objectNode()
    	ArrayNode dataElementRoot = JsonNodeFactory.instance.arrayNode()
    	
    	actionsDate[obj].eachWithIndex{obj1, idx1->
    		ArrayNode dataElement = JsonNodeFactory.instance.arrayNode()
    		dataElement.add(obj1.getTime())
    		dataElement.add(actionsOccurrence[obj][idx1])
    		dataElementRoot.add(dataElement)
    	}
    	seriesElement.put("data",dataElementRoot)
    	seriesElement.put("label", obj)
    	seriesArray.add(seriesElement)
 
    	indexData++	
    }
    root.put("series",seriesArray)
	
	if(!BeanHelper.isNullOrEmptyString(minDate) && !BeanHelper.isNullOrEmptyString(maxDate)){
	    root.put("min",minDate.getTime())
	    root.put("max",maxDate.getTime())
    }
    
    json = root.toString() 

} catch (e) {
    e.printStackTrace();
} 
 
//println json
return ["json": json]
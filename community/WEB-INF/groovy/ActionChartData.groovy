#input String[] actionName
#output String json

//import org.codehaus.jackson.node.JsonNodeFactory
//import org.codehaus.jackson.node.ArrayNode
//import org.codehaus.jackson.node.ObjectNode
import com.fasterxml.jackson.databind.node.JsonNodeFactory
import com.fasterxml.jackson.databind.node.ArrayNode
import com.fasterxml.jackson.databind.node.ObjectNode


def first = true
def tmpAction = null
def count = 1



ArrayList actions = new ArrayList()
ArrayList countActions = new ArrayList()

actionName.eachWithIndex{obj,i ->
	if(first){
		tmpAction = obj
		first=false
		actions.add(obj)
		count = 1
	}else{
		if(tmpAction != obj){
			countActions.add(count)
			actions.add(obj)
			tmpAction = obj
			count = 1
			if((actionName.size()-1) == i){
				countActions.add(count)	
			}
		}else{
			count++
			if((actionName.size()-1) == i){
				countActions.add(count)	
			}			
		}		
	}	
}

/*CREATE JSON OBJECT*/
def json = null
def indexData = 1

try {

    ObjectNode root = JsonNodeFactory.instance.objectNode()
    ArrayNode seriesArray = JsonNodeFactory.instance.arrayNode()
    ArrayNode xaxistickArray = JsonNodeFactory.instance.arrayNode()

    
    //xaxistick elements
    actions.eachWithIndex{obj,i->
    	ObjectNode seriesElement = JsonNodeFactory.instance.objectNode()
    	ArrayNode dataElementRoot = JsonNodeFactory.instance.arrayNode()
    	ArrayNode dataElement = JsonNodeFactory.instance.arrayNode()
    	dataElement.add(indexData)
    	dataElement.add(countActions[i])
    	dataElementRoot.add(dataElement)
    	seriesElement.put("data",dataElementRoot)
    	seriesElement.put("label", obj)
    	seriesArray.add(seriesElement)
    	ArrayNode stickElement = JsonNodeFactory.instance.arrayNode()	
    	stickElement.add(indexData)
    	stickElement.add(obj)
    	xaxistickArray.add(stickElement) 
    	indexData++	
    }
    root.put("series",seriesArray)
    root.put("xaxistick", xaxistickArray)
    json = root.toString() 

} catch (e) {
    e.printStackTrace();
} 


return ["json": json]
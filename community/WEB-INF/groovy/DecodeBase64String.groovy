#input String[] photoName, String[] photoImage
#output photo

import org.apache.commons.io.IOUtils
import org.apache.commons.lang.StringUtils
import com.webratio.rtx.blob.ExternalBLOBData
import com.webratio.rtx.RTXBLOBData
import sun.misc.BASE64Decoder
import com.webratio.rtx.core.BeanHelper

def photo = null

try{
		
	if (!BeanHelper.isNullOrEmptyArray(photoName) && !BeanHelper.isNullOrEmptyArray(photoImage)) {
    	OutputStream out = null
    	try{
      		BASE64Decoder bd = new BASE64Decoder()
      		byte[] by = bd.decodeBuffer(photoImage[0])
      		def ext = StringUtils.substringAfterLast(photoName[0], ".")
      		File tempFile = File.createTempFile("photo", "." + ext)
      		tempFile.deleteOnExit()
      		out = new FileOutputStream(tempFile)
      		out.write(by)
      
     		 photo = new ExternalBLOBData(photoName[0], tempFile, rtx)
    	}catch(Exception e) {
     		e.printStackTrace()
    	}finally {
      		IOUtils.closeQuietly(out)
    	}
  	}
  	if (!BeanHelper.isNullOrEmptyArray(photoName) && BeanHelper.isNullOrEmptyArray(photoImage)) {
   		photo = null
  	}	
}catch(Exception er){
  		er.printStackTrace();
}

return ["photo": photo]




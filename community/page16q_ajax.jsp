<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page16q"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page16q.do${wrAjax ? '#!ajax=true' : ''}" styleId="page16qFormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page16q">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page16q"/>
				<input type="hidden" name="ln221q" value="<webratio:Link link="ln221q"/>">
				<input type="hidden" name="ln222q" value="<webratio:Link link="ln222q"/>">
					<input type="hidden" name="ln222q_sr" value="<webratio:Link link="ln222q" selectiveRefresh="true"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page16q"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page16q_grid_0', pageContext)}">
			<ControlData control="page16q_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_4 prefix_8 alpha omega agrd_8">
				<div class="wr-ajaxDiv" id="page16q_cell_8"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page16q_cell_12"></div>
			</div>
				<div class="clear"></div>
</div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page16q_cell_8,page16q_grid_0', pageContext)}">
			<ControlData control="page16q_cell_8" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu8q_0"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('enu8q_0,page16q_cell_8,page16q_grid_0', pageContext)}">
			<ControlData control="enu8q_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="left-bar">
	<h2 class="">Language</h2>
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu8q"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu8q"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld19q"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld19q" class="control-label col-md-2">language</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld19q" styleClass="wr-submitButtons:ln222q form-control " property="sfld19q" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld19qList" labelProperty="sfld19qLabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld19q", "change", function(event) { WREvent.observe(event, "page16q", "ln222q", $H({"isForm": true, "pressedLink": 'button:ln222q', "selectiveRefresh": true, "sourcePage": 'page16q'})); });
		</script>
					<c:set var="btFieldError"><html:errors property="sfld19q"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
		</div>
	</div></div>
</div>	
</div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page16q_cell_12,page16q_grid_0', pageContext)}">
			<ControlData control="page16q_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu6q_0"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('pwu6q_0,page16q_cell_12,page16q_grid_0', pageContext)}">
			<ControlData control="pwu6q_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu6q) and (pwu6q.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">Chunks</h2>
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu6qatt16p', pageContext)}">
	 		<a title="Key" id="pwu6qatt16p" onclick="return ajaxRequest('<webratio:Link link="pwu6qatt16p" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qatt16p', sourcePage: 'page16q'}))" class="  sort" href="<webratio:Link link="pwu6qatt16p" position="index"/>">							
			Key</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						            Message
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln223q', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu6q.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu6q.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
										<c:out value="${current.key}"/>
								</td>
								<td class=" text">
										<c:out value="${current.message}" escapeXml="false"/>
								</td>
			<c:if test="${webratio:isTargetAccessible('ln223q', pageContext)}">
									<td class=" smallcol">
										 <c:if test="${webratio:isTargetAccessible('ln223q', pageContext)}">
	 		<a title="Edit" id="ln223q" class=" " href="<webratio:Link link="ln223q" position="index"/>" >
			Edit</a>
	</c:if>
									</td>
			</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu6q.scroller.of gt 20}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu6q.scroller.current ne pwu6q.scroller.first}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu6qFirst', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu6qFirst" onclick="return ajaxRequest('<webratio:Link link="pwu6qFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qFirst', sourcePage: 'page16q'}))" class="  scroll" href="<webratio:Link link="pwu6qFirst" position="index"/>">							
			<span class="glyphicon "></span> </a>
	</c:if>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu6qFirst', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu6qFirst" onclick="return ajaxRequest('<webratio:Link link="pwu6qFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qFirst', sourcePage: 'page16q'}))" class="  scroll" href="<webratio:Link link="pwu6qFirst" position="index"/>">							
			<span class="glyphicon "></span> </a>
	</c:if>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu6q.scroller.current ne pwu6q.scroller.previous}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu6qPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu6qPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu6qPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qPrevious', sourcePage: 'page16q'}))" class="  scroll" href="<webratio:Link link="pwu6qPrevious" position="index"/>">							
			<span class="glyphicon "></span> </a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu6qPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu6qPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu6qPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qPrevious', sourcePage: 'page16q'}))" class="  scroll" href="<webratio:Link link="pwu6qPrevious" position="index"/>">							
			<span class="glyphicon "></span> </a>
	</c:if>
 </li>
		           	</c:otherwise>
	            </c:choose>
		        <c:choose>
	                <c:when test="${pwu6q.scroller.current ne pwu6q.scroller.next}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu6qNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu6qNext" onclick="return ajaxRequest('<webratio:Link link="pwu6qNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qNext', sourcePage: 'page16q'}))" class="  scroll" href="<webratio:Link link="pwu6qNext" position="index"/>">							
			<span class="glyphicon "></span> </a>
	</c:if>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu6qNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu6qNext" onclick="return ajaxRequest('<webratio:Link link="pwu6qNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qNext', sourcePage: 'page16q'}))" class="  scroll" href="<webratio:Link link="pwu6qNext" position="index"/>">							
			<span class="glyphicon "></span> </a>
	</c:if>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu6q.scroller.current ne pwu6q.scroller.last}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu6qLast', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu6qLast" onclick="return ajaxRequest('<webratio:Link link="pwu6qLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qLast', sourcePage: 'page16q'}))" class="  scroll" href="<webratio:Link link="pwu6qLast" position="index"/>">							
			<span class="glyphicon "></span> </a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu6qLast', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu6qLast" onclick="return ajaxRequest('<webratio:Link link="pwu6qLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qLast', sourcePage: 'page16q'}))" class="  scroll" href="<webratio:Link link="pwu6qLast" position="index"/>">							
			<span class="glyphicon "></span> </a>
	</c:if>
 </li>
	               </c:otherwise>
	            </c:choose>
	    </ul>
	    </div>
	</c:if>
			</div>
		</div>
</div>
</c:when>
<c:otherwise>
<div class="left-bar">
	<h2 class="">Chunks</h2>
		<div class="alert alert-info empty-message ">
			<bean:message key="emptyUnitMessage"/>
		</div>
</div>
</c:otherwise>
</c:choose>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<![CDATA[
		</html:form>
	]]>
</PageRefresh>
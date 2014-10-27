<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page22p"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page22p.do${wrAjax ? '#!ajax=true' : ''}" styleId="page22pFormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page22p">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page22p"/>
				<input type="hidden" name="ln149p" value="<webratio:Link link="ln149p"/>">
				<input type="hidden" name="ln150p" value="<webratio:Link link="ln150p"/>">
					<input type="hidden" name="ln150p_sr" value="<webratio:Link link="ln150p" selectiveRefresh="true"/>">
				<input type="hidden" name="ln152p" value="<webratio:Link link="ln152p"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page22p"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page22p_grid_0', pageContext)}">
			<ControlData control="page22p_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page22p_cell_0"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page22p_cell_12"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page22p_cell_0,page22p_grid_0', pageContext)}">
			<ControlData control="page22p_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu12p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu12p_0,page22p_cell_0,page22p_grid_0', pageContext)}">
			<ControlData control="enu12p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="left-bar">
	<h2 class="">Search</h2>
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu12p"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu12p"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld19p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld19p" class="control-label col-md-2">language</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld19p" styleClass="wr-submitButtons:ln149p,ln150p form-control " property="sfld19p" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld19pList" labelProperty="sfld19pLabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld19p", "change", function(event) { WREvent.observe(event, "page22p", "ln150p", $H({"isForm": true, "pressedLink": 'button:ln150p', "selectiveRefresh": true, "sourcePage": 'page22p'})); });
		</script>
					<c:set var="btFieldError"><html:errors property="sfld19p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="msfld1p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="msfld1p" class="control-label col-md-2">Availability</label>
					<div class="controls col-md-10">
					<c:forEach var="current" varStatus="status" items="${page22pFormBean.map.msfld1pList}">
				 <label class="checkbox-inline" for="msf_msfld1p_${status.index}">
				  <html:multibox styleClass="wr-submitButtons:ln149p,ln150p " property="msfld1p" value="${current}" disabled="false" styleId="msf_msfld1p_${status.index}"/>
					   <c:out value="${page22pFormBean.map.msfld1pLabelList[status.index]}"/>
				 </label>
			</c:forEach>
					<c:set var="btFieldError"><html:errors property="msfld1p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld45p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld45p" class="control-label col-md-2">Needed points</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld45p" styleClass="wr-submitButtons:ln149p,ln150p  form-control " property="fld45p" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld45p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld46p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld46p" class="control-label col-md-2">Keyword</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld46p" styleClass="wr-submitButtons:ln149p,ln150p  form-control " property="fld46p" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld46p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln149p', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln149p', pageContext)}">
			<button title="Search" onclick="$('#page22pFormBean')[0].target='_self'" class="btn  btn-default " id="button:ln149p" name="button:ln149p" type="submit" value="Search">
			Search</button>
	</c:if>
			</c:if>
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
		<c:if test="${webratio:isLayoutRefreshed('page22p_cell_12,page22p_grid_0', pageContext)}">
			<ControlData control="page22p_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu7p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu7p_0,page22p_cell_12,page22p_grid_0', pageContext)}">
			<ControlData control="pwu7p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty pwu7p) and (pwu7p.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Rewards
		</h2>
	</div>
	<div class="panel-body">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="">
						     	Title
					        </th>
					        <th scope="col" class="">
						     	Description
					        </th>
					        <th scope="col" class="">
						     	Needed Points
					        </th>
					        <th scope="col" class="">
						     	Available
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln70p', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu7p.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu7p.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
										<c:out value="${current.title}"/>
								</td>
								<td class=" text">
										<c:out value="${current.description}" escapeXml="false"/>
								</td>
								<td class=" decimal">
										<fmt:formatNumber value="${current.neededPoints}" pattern="${decimalPattern}"/>
								</td>
								<td class=" boolean">
										<c:if test="${not(empty current.available)}">
  <c:choose>
    <c:when test="${current.available}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								</td>
			<c:if test="${webratio:isTargetAccessible('ln70p', pageContext)}">
									<td class=" smallcol">
										 <c:if test="${webratio:isTargetAccessible('ln70p', pageContext)}">
	 		<a title="Modify" id="ln70p" class=" " href="<webratio:Link link="ln70p" position="index"/>" >
			Modify</a>
	</c:if>
									</td>
			</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu7p.scroller.of gt 20}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu7p.scroller.current ne pwu7p.scroller.first}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu7pFirst', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu7pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu7pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pFirst', sourcePage: 'page22p'}))" class="  scroll" href="<webratio:Link link="pwu7pFirst" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu7pFirst', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu7pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu7pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pFirst', sourcePage: 'page22p'}))" class="  scroll" href="<webratio:Link link="pwu7pFirst" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu7p.scroller.current ne pwu7p.scroller.previous}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu7pPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu7pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu7pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pPrevious', sourcePage: 'page22p'}))" class="  scroll" href="<webratio:Link link="pwu7pPrevious" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu7pPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu7pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu7pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pPrevious', sourcePage: 'page22p'}))" class="  scroll" href="<webratio:Link link="pwu7pPrevious" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu7p.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu7p.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu7pBlock" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu7pBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pBlock', sourcePage: 'page22p'}))">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu7p.scroller.current ne pwu7p.scroller.next}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu7pNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu7pNext" onclick="return ajaxRequest('<webratio:Link link="pwu7pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pNext', sourcePage: 'page22p'}))" class="  scroll" href="<webratio:Link link="pwu7pNext" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu7pNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu7pNext" onclick="return ajaxRequest('<webratio:Link link="pwu7pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pNext', sourcePage: 'page22p'}))" class="  scroll" href="<webratio:Link link="pwu7pNext" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu7p.scroller.current ne pwu7p.scroller.last}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu7pLast', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu7pLast" onclick="return ajaxRequest('<webratio:Link link="pwu7pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pLast', sourcePage: 'page22p'}))" class="  scroll" href="<webratio:Link link="pwu7pLast" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu7pLast', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu7pLast" onclick="return ajaxRequest('<webratio:Link link="pwu7pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pLast', sourcePage: 'page22p'}))" class="  scroll" href="<webratio:Link link="pwu7pLast" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
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
</div>
</c:if>
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
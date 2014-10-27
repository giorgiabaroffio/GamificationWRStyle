<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page37p"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page37p.do${wrAjax ? '#!ajax=true' : ''}" styleId="page37pFormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page37p">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page37p"/>
				<input type="hidden" name="ln136p" value="<webratio:Link link="ln136p"/>">
				<input type="hidden" name="ln143p" value="<webratio:Link link="ln143p"/>">
					<input type="hidden" name="ln143p_sr" value="<webratio:Link link="ln143p" selectiveRefresh="true"/>">
				<input type="hidden" name="ln148p" value="<webratio:Link link="ln148p"/>">
					<input type="hidden" name="ln148p_sr" value="<webratio:Link link="ln148p" selectiveRefresh="true"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page37p"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page37p_grid_0', pageContext)}">
			<ControlData control="page37p_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page37p_cell_0"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page37p_cell_12"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page37p_cell_0,page37p_grid_0', pageContext)}">
			<ControlData control="page37p_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu19p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu19p_0,page37p_cell_0,page37p_grid_0', pageContext)}">
			<ControlData control="enu19p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="left-bar">
	<h2 class="">Search</h2>
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu19p"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu19p"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld18p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld18p" class="control-label col-md-2">Event</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld18p" styleClass="wr-submitButtons:ln136p,ln143p,ln148p form-control " property="sfld18p" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld18pList" labelProperty="sfld18pLabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld18p", "change", function(event) { WREvent.observe(event, "page37p", "ln143p", $H({"isForm": true, "pressedLink": 'button:ln143p', "selectiveRefresh": true, "sourcePage": 'page37p'})); });
		</script>
					<c:set var="btFieldError"><html:errors property="sfld18p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld8p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld8p" class="control-label col-md-2">Status</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld8p" styleClass="wr-submitButtons:ln136p,ln143p,ln148p form-control " property="sfld8p" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld8pList" labelProperty="sfld8pLabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld8p", "change", function(event) { WREvent.observe(event, "page37p", "ln148p", $H({"isForm": true, "pressedLink": 'button:ln148p', "selectiveRefresh": true, "sourcePage": 'page37p'})); });
		</script>
					<c:set var="btFieldError"><html:errors property="sfld8p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld41p_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld41p_locale" class="control-label col-md-2">Creation date</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld41p_locale" styleClass="wr-submitButtons:ln136p,ln143p,ln148p form-control " property="fld41p_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld41p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld41p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld41p_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld41p_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld41p_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld41p_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld42p_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld42p_locale" class="control-label col-md-2">Delivery date</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld42p_locale" styleClass="wr-submitButtons:ln136p,ln143p,ln148p form-control " property="fld42p_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld42p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld42p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld42p_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld42p_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld42p_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld42p_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld40p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld40p" class="control-label col-md-2">email</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld40p" styleClass="wr-submitButtons:ln136p,ln143p,ln148p  form-control " property="fld40p" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld40p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln136p', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln136p', pageContext)}">
			<button title="Search" onclick="$('#page37pFormBean')[0].target='_self'" class="btn  btn-default " id="button:ln136p" name="button:ln136p" type="submit" value="Search">
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
		<c:if test="${webratio:isLayoutRefreshed('page37p_cell_12,page37p_grid_0', pageContext)}">
			<ControlData control="page37p_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu12p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu12p_0,page37p_cell_12,page37p_grid_0', pageContext)}">
			<ControlData control="pwu12p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty pwu12p) and (pwu12p.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">Events</h2>
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="">
						            Email
					        </th>
					        <th scope="col" class="">
						            Description
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu12patt84x', pageContext)}">
	 		<a title="Creation Date" id="pwu12patt84x" onclick="return ajaxRequest('<webratio:Link link="pwu12patt84x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12patt84x', sourcePage: 'page37p'}))" class="  sort" href="<webratio:Link link="pwu12patt84x" position="index"/>">							
			Creation Date</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu12patt89x', pageContext)}">
	 		<a title="Delivery Date" id="pwu12patt89x" onclick="return ajaxRequest('<webratio:Link link="pwu12patt89x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12patt89x', sourcePage: 'page37p'}))" class="  sort" href="<webratio:Link link="pwu12patt89x" position="index"/>">							
			Delivery Date</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						            Status
					        </th>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu12p.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu12p.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
										<c:out value="${current.notificationToCommunityUser_email}"/>
								</td>
								<td class=" string">
										<c:out value="${current.notificationToTextMail_description}"/>
								</td>
								<td class=" timestamp">
										<fmt:formatDate value="${current.creationDate}" pattern="${timestampPattern}"/>
								</td>
								<td class=" timestamp">
										<fmt:formatDate value="${current.deliveryDate}" pattern="${timestampPattern}"/>
								</td>
								<td class=" string">
										<c:out value="${current.status}"/>
								</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu12p.scroller.of gt 10}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu12p.scroller.current ne pwu12p.scroller.first}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu12pFirst', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu12pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu12pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pFirst', sourcePage: 'page37p'}))" class="  scroll" href="<webratio:Link link="pwu12pFirst" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu12pFirst', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu12pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu12pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pFirst', sourcePage: 'page37p'}))" class="  scroll" href="<webratio:Link link="pwu12pFirst" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu12p.scroller.current ne pwu12p.scroller.previous}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu12pPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu12pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu12pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pPrevious', sourcePage: 'page37p'}))" class="  scroll" href="<webratio:Link link="pwu12pPrevious" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu12pPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu12pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu12pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pPrevious', sourcePage: 'page37p'}))" class="  scroll" href="<webratio:Link link="pwu12pPrevious" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu12p.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu12p.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu12pBlock" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu12pBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pBlock', sourcePage: 'page37p'}))">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu12p.scroller.current ne pwu12p.scroller.next}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu12pNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu12pNext" onclick="return ajaxRequest('<webratio:Link link="pwu12pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pNext', sourcePage: 'page37p'}))" class="  scroll" href="<webratio:Link link="pwu12pNext" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu12pNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu12pNext" onclick="return ajaxRequest('<webratio:Link link="pwu12pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pNext', sourcePage: 'page37p'}))" class="  scroll" href="<webratio:Link link="pwu12pNext" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu12p.scroller.current ne pwu12p.scroller.last}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu12pLast', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu12pLast" onclick="return ajaxRequest('<webratio:Link link="pwu12pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pLast', sourcePage: 'page37p'}))" class="  scroll" href="<webratio:Link link="pwu12pLast" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu12pLast', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu12pLast" onclick="return ajaxRequest('<webratio:Link link="pwu12pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pLast', sourcePage: 'page37p'}))" class="  scroll" href="<webratio:Link link="pwu12pLast" position="index"/>">							
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
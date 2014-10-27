<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page18p"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page18p.do${wrAjax ? '#!ajax=true' : ''}" styleId="page18pFormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page18p">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page18p"/>
				<input type="hidden" name="ln116p" value="<webratio:Link link="ln116p"/>">
				<input type="hidden" name="ln120p" value="<webratio:Link link="ln120p"/>">
					<input type="hidden" name="ln120p_sr" value="<webratio:Link link="ln120p" selectiveRefresh="true"/>">
				<input type="hidden" name="ln122p" value="<webratio:Link link="ln122p"/>">
					<input type="hidden" name="ln122p_sr" value="<webratio:Link link="ln122p" selectiveRefresh="true"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page18p"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page18p_grid_0', pageContext)}">
			<ControlData control="page18p_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_6 suffix_6 alpha omega agrd_12">
				<div class="wr-ajaxDiv" id="page18p_cell_0"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page18p_cell_12"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page18p_cell_24"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page18p_cell_0,page18p_grid_0', pageContext)}">
			<ControlData control="page18p_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau2x_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('dau2x_0,page18p_cell_0,page18p_grid_0', pageContext)}">
			<ControlData control="dau2x_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty dau2x) and (dau2x.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">User</h2>
		<div class="plain ">
			<div class="plain DataUnit">
			    <table>
			            <tr>
			        		  	<td class=" value integer">    
<fmt:formatNumber value="${dau2x.data.OID}" pattern="${integerPattern}"/> 
  </td>
			        		  	<td class=" value string">    
<c:out value="${dau2x.data.firstName}"/> 
  </td>
			        		  	<td class=" value string">    
<c:out value="${dau2x.data.lastName}"/> 
  </td>
								</tr>
								<tr class="row">
			                   	</tr>
				  <tr>
				  <td colspan="3">
			           <table>
			               <tr>
			               </tr>
			           </table>
			        </td>
			      </tr>  
			    </table> 
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
		<c:if test="${webratio:isLayoutRefreshed('page18p_cell_12,page18p_grid_0', pageContext)}">
			<ControlData control="page18p_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu7p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu7p_0,page18p_cell_12,page18p_grid_0', pageContext)}">
			<ControlData control="enu7p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Search
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu7p"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu7p"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld4p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld4p" class="control-label col-md-2">Area</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld4p" styleClass="wr-submitButtons:ln116p,ln120p,ln122p form-control " property="sfld4p" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld4pList" labelProperty="sfld4pLabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld4p", "change", function(event) { WREvent.observe(event, "page18p", "ln120p", $H({"isForm": true, "pressedLink": 'button:ln120p', "selectiveRefresh": true, "sourcePage": 'page18p'})); });
		</script>
					<c:set var="btFieldError"><html:errors property="sfld4p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld6p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld6p" class="control-label col-md-2">Name</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld6p" styleClass="wr-submitButtons:ln116p,ln120p,ln122p form-control " property="sfld6p" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld6pList" labelProperty="sfld6pLabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld6p", "change", function(event) { WREvent.observe(event, "page18p", "ln122p", $H({"isForm": true, "pressedLink": 'button:ln122p', "selectiveRefresh": true, "sourcePage": 'page18p'})); });
		</script>
					<c:set var="btFieldError"><html:errors property="sfld6p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld13p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld13p" class="control-label col-md-2">Description</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld13p" styleClass="wr-submitButtons:ln116p,ln120p,ln122p  form-control " property="fld13p" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld13p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld14p_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld14p_locale" class="control-label col-md-2">From</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld14p_locale" styleClass="wr-submitButtons:ln116p,ln120p,ln122p form-control " property="fld14p_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld14p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld14p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld14p_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld14p_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld14p_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld14p_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld15p_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld15p_locale" class="control-label col-md-2">To</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld15p_locale" styleClass="wr-submitButtons:ln116p,ln120p,ln122p form-control " property="fld15p_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld15p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld15p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld15p_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld15p_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld15p_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld15p_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln116p', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln116p', pageContext)}">
			<button title="Search" onclick="$('#page18pFormBean')[0].target='_self'" class="btn  btn-default " id="button:ln116p" name="button:ln116p" type="submit" value="Search">
			Search</button>
	</c:if>
			</c:if>
		</div>
	</div></div>
</div>	
	</div>
</div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page18p_cell_24,page18p_grid_0', pageContext)}">
			<ControlData control="page18p_cell_24" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu8p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu8p_0,page18p_cell_24,page18p_grid_0', pageContext)}">
			<ControlData control="pwu8p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu8p) and (pwu8p.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">Actions</h2>
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="">
						            Action Area
					        </th>
					        <th scope="col" class="">
						            Name
					        </th>
					        <th scope="col" class="">
						            Description
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu8patt51x', pageContext)}">
	 		<a title="Date" id="pwu8patt51x" onclick="return ajaxRequest('<webratio:Link link="pwu8patt51x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8patt51x', sourcePage: 'page18p'}))" class="  sort" href="<webratio:Link link="pwu8patt51x" position="index"/>">							
			Date</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						            Score
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln94q', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu8p.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu8p.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
										<c:out value="${current.actionArea}"/>
								</td>
								<td class=" string">
										<c:out value="${current.name}"/>
								</td>
								<td class=" string">
										<c:out value="${current.description}"/>
								</td>
								<td class=" timestamp">
										<fmt:formatDate value="${current.date}" pattern="${timestampPattern}"/>
								</td>
								<td class=" decimal">
										<fmt:formatNumber value="${current.score}" pattern="${decimalPattern}"/>
								</td>
			<c:if test="${webratio:isTargetAccessible('ln94q', pageContext)}">
									<td class=" smallcol">
										 <c:set var="_wr_message"><bean:message key="linkConfirmMessage"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('ln94q', pageContext)}">
	 		<a title="Delete" id="ln94q" class=" " href="<webratio:Link link="ln94q" position="index"/>"  onclick="return confirm('<c:out value="${_wr_message}"/>')">
			Delete</a>
	</c:if>
									</td>
			</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu8p.scroller.of gt 20}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu8p.scroller.current ne pwu8p.scroller.first}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu8pFirst', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu8pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu8pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pFirst', sourcePage: 'page18p'}))" class="  scroll" href="<webratio:Link link="pwu8pFirst" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu8pFirst', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu8pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu8pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pFirst', sourcePage: 'page18p'}))" class="  scroll" href="<webratio:Link link="pwu8pFirst" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu8p.scroller.current ne pwu8p.scroller.previous}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu8pPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu8pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu8pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pPrevious', sourcePage: 'page18p'}))" class="  scroll" href="<webratio:Link link="pwu8pPrevious" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu8pPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu8pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu8pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pPrevious', sourcePage: 'page18p'}))" class="  scroll" href="<webratio:Link link="pwu8pPrevious" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu8p.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu8p.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu8pBlock" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu8pBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pBlock', sourcePage: 'page18p'}))">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu8p.scroller.current ne pwu8p.scroller.next}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu8pNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu8pNext" onclick="return ajaxRequest('<webratio:Link link="pwu8pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pNext', sourcePage: 'page18p'}))" class="  scroll" href="<webratio:Link link="pwu8pNext" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu8pNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu8pNext" onclick="return ajaxRequest('<webratio:Link link="pwu8pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pNext', sourcePage: 'page18p'}))" class="  scroll" href="<webratio:Link link="pwu8pNext" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu8p.scroller.current ne pwu8p.scroller.last}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu8pLast', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu8pLast" onclick="return ajaxRequest('<webratio:Link link="pwu8pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pLast', sourcePage: 'page18p'}))" class="  scroll" href="<webratio:Link link="pwu8pLast" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu8pLast', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu8pLast" onclick="return ajaxRequest('<webratio:Link link="pwu8pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pLast', sourcePage: 'page18p'}))" class="  scroll" href="<webratio:Link link="pwu8pLast" position="index"/>">							
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
</c:when>
<c:otherwise>
<div class="left-bar">
	<h2 class="">Actions</h2>
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
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page32p"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page32p.do${wrAjax ? '#!ajax=true' : ''}" styleId="page32pFormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page32p">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page32p"/>
				<input type="hidden" name="ln216p" value="<webratio:Link link="ln216p"/>">
				<input type="hidden" name="ln217p" value="<webratio:Link link="ln217p"/>">
					<input type="hidden" name="ln217p_sr" value="<webratio:Link link="ln217p" selectiveRefresh="true"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page32p"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page32p_grid_0', pageContext)}">
			<ControlData control="page32p_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page32p_cell_0"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page32p_cell_12"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page32p_cell_0,page32p_grid_0', pageContext)}">
			<ControlData control="page32p_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu25p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu25p_0,page32p_cell_0,page32p_grid_0', pageContext)}">
			<ControlData control="enu25p_0" type="text/html">
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
	    <c:set var="btFieldError"><html:errors property="enu25p"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu25p"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld30p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld30p" class="control-label col-md-2">Language</label>
					<div class="controls col-md-10">
					<c:if test="${webratio:evaluateCondition('cexpr7p', null, pageContext)}"><html:hidden property="sfld30p"/></c:if>
				<html:select styleId="sfld30p" styleClass="wr-submitButtons:ln216p,ln217p form-control " property="sfld30p" disabled="${webratio:evaluateCondition('cexpr7p', null, pageContext)}">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld30pList" labelProperty="sfld30pLabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld30p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld29p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld29p" class="control-label col-md-2">Name</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld29p" styleClass="wr-submitButtons:ln216p,ln217p form-control " property="sfld29p" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld29pList" labelProperty="sfld29pLabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld29p", "change", function(event) { WREvent.observe(event, "page32p", "ln217p", $H({"isForm": true, "pressedLink": 'button:ln217p', "selectiveRefresh": true, "sourcePage": 'page32p'})); });
		</script>
					<c:set var="btFieldError"><html:errors property="sfld29p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld58p_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld58p_locale" class="control-label col-md-2">From</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld58p_locale" styleClass="wr-submitButtons:ln216p,ln217p form-control " property="fld58p_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld58p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld58p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld58p_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld58p_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld58p_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld58p_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld57p_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld57p_locale" class="control-label col-md-2">To</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld57p_locale" styleClass="wr-submitButtons:ln216p,ln217p form-control " property="fld57p_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld57p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld57p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld57p_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld57p_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld57p_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld57p_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln216p', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln216p', pageContext)}">
			<button title="Search" onclick="$('#page32pFormBean')[0].target='_self'" class="btn  btn-default " id="button:ln216p" name="button:ln216p" type="submit" value="Search">
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
		<c:if test="${webratio:isLayoutRefreshed('page32p_cell_12,page32p_grid_0', pageContext)}">
			<ControlData control="page32p_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu13p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu13p_0,page32p_cell_12,page32p_grid_0', pageContext)}">
			<ControlData control="pwu13p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu13p) and (pwu13p.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">Rewards</h2>
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
						             <c:if test="${webratio:isTargetAccessible('pwu13patt102p', pageContext)}">
	 		<a title="Date" id="pwu13patt102p" onclick="return ajaxRequest('<webratio:Link link="pwu13patt102p" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13patt102p', sourcePage: 'page32p'}))" class="  sort" href="<webratio:Link link="pwu13patt102p" position="index"/>">							
			Date</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						            Score
					        </th>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu13p.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu13p.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
										<c:out value="${current.rewardInstanceToRewardType_title}"/>
								</td>
								<td class=" timestamp">
										<fmt:formatDate value="${current.date}" pattern="${timestampPattern}"/>
								</td>
								<td class=" decimal">
										<fmt:formatNumber value="${current.score}" pattern="${decimalPattern}"/>
								</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu13p.scroller.of gt 20}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu13p.scroller.current ne pwu13p.scroller.first}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu13pFirst', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu13pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu13pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pFirst', sourcePage: 'page32p'}))" class="  scroll" href="<webratio:Link link="pwu13pFirst" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu13pFirst', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu13pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu13pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pFirst', sourcePage: 'page32p'}))" class="  scroll" href="<webratio:Link link="pwu13pFirst" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu13p.scroller.current ne pwu13p.scroller.previous}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu13pPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu13pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu13pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pPrevious', sourcePage: 'page32p'}))" class="  scroll" href="<webratio:Link link="pwu13pPrevious" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu13pPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu13pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu13pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pPrevious', sourcePage: 'page32p'}))" class="  scroll" href="<webratio:Link link="pwu13pPrevious" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu13p.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu13p.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu13pBlock" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu13pBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pBlock', sourcePage: 'page32p'}))">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu13p.scroller.current ne pwu13p.scroller.next}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu13pNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu13pNext" onclick="return ajaxRequest('<webratio:Link link="pwu13pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pNext', sourcePage: 'page32p'}))" class="  scroll" href="<webratio:Link link="pwu13pNext" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu13pNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu13pNext" onclick="return ajaxRequest('<webratio:Link link="pwu13pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pNext', sourcePage: 'page32p'}))" class="  scroll" href="<webratio:Link link="pwu13pNext" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu13p.scroller.current ne pwu13p.scroller.last}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu13pLast', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu13pLast" onclick="return ajaxRequest('<webratio:Link link="pwu13pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pLast', sourcePage: 'page32p'}))" class="  scroll" href="<webratio:Link link="pwu13pLast" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu13pLast', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu13pLast" onclick="return ajaxRequest('<webratio:Link link="pwu13pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pLast', sourcePage: 'page32p'}))" class="  scroll" href="<webratio:Link link="pwu13pLast" position="index"/>">							
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
	<h2 class="">Rewards</h2>
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
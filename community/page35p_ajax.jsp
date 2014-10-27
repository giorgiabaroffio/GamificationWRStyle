<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page35p"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page35p.do${wrAjax ? '#!ajax=true' : ''}" styleId="page35pFormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page35p">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page35p"/>
				<input type="hidden" name="ln144p" value="<webratio:Link link="ln144p"/>">
					<input type="hidden" name="ln144p_sr" value="<webratio:Link link="ln144p" selectiveRefresh="true"/>">
				<input type="hidden" name="ln146p" value="<webratio:Link link="ln146p"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page35p"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page35p_grid_0', pageContext)}">
			<ControlData control="page35p_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_4 prefix_8 alpha omega agrd_8">
				<div class="wr-ajaxDiv" id="page35p_cell_8"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page35p_cell_12"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page35p_cell_8,page35p_grid_0', pageContext)}">
			<ControlData control="page35p_cell_8" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu18p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu18p_0,page35p_cell_8,page35p_grid_0', pageContext)}">
			<ControlData control="enu18p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="left-bar">
	<h2 class="">Language</h2>
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu18p"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu18p"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld12p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld12p" class="control-label col-md-2">language</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld12p" styleClass="wr-submitButtons:ln144p form-control " property="sfld12p" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld12pList" labelProperty="sfld12pLabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld12p", "change", function(event) { WREvent.observe(event, "page35p", "ln144p", $H({"isForm": true, "pressedLink": 'button:ln144p', "selectiveRefresh": true, "sourcePage": 'page35p'})); });
		</script>
					<c:set var="btFieldError"><html:errors property="sfld12p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
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
		<c:if test="${webratio:isLayoutRefreshed('page35p_cell_12,page35p_grid_0', pageContext)}">
			<ControlData control="page35p_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu16p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu16p_0,page35p_cell_12,page35p_grid_0', pageContext)}">
			<ControlData control="pwu16p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu16p) and (pwu16p.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">Containers</h2>
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu16patt81x', pageContext)}">
	 		<a title="Alias" id="pwu16patt81x" onclick="return ajaxRequest('<webratio:Link link="pwu16patt81x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu16patt81x', sourcePage: 'page35p'}))" class="  sort" href="<webratio:Link link="pwu16patt81x" position="index"/>">							
			Alias</a>
	</c:if>
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln130p', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln126p', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu16p.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu16p.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
										<c:out value="${current.alias}"/>
								</td>
			<c:if test="${webratio:isTargetAccessible('ln130p', pageContext)}">
									<td class=" smallcol">
										 <c:if test="${webratio:isTargetAccessible('ln130p', pageContext)}">
	 		<a title="Modify" id="ln130p" class=" " href="<webratio:Link link="ln130p" position="index"/>" >
			Modify</a>
	</c:if>
									</td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln126p', pageContext)}">
									<td class=" smallcol">
										 <c:if test="${webratio:isTargetAccessible('ln126p', pageContext)}">
	 		<a title="Delete" id="ln126p" onclick="return ajaxRequest('<webratio:Link link="ln126p" position="index"/>', $H({pressedLink: 'ln126p', sourcePage: 'page35p'}))" class=" " href="<webratio:Link link="ln126p" position="index"/>">							
			Delete</a>
	</c:if>
									</td>
			</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
			</div>
		</div>
</div>
</c:when>
<c:otherwise>
<div class="left-bar">
	<h2 class="">Containers</h2>
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
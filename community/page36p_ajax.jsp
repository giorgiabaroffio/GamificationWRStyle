<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page36p"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page36p.do${wrAjax ? '#!ajax=true' : ''}" styleId="page36pFormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page36p">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page36p"/>
				<input type="hidden" name="ln157p" value="<webratio:Link link="ln157p"/>">
					<input type="hidden" name="ln157p_sr" value="<webratio:Link link="ln157p" selectiveRefresh="true"/>">
				<input type="hidden" name="ln158p" value="<webratio:Link link="ln158p"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page36p"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page36p_grid_0', pageContext)}">
			<ControlData control="page36p_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_4 prefix_8 alpha omega agrd_8">
				<div class="wr-ajaxDiv" id="page36p_cell_8"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page36p_cell_12"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page36p_cell_8,page36p_grid_0', pageContext)}">
			<ControlData control="page36p_cell_8" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu16p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu16p_0,page36p_cell_8,page36p_grid_0', pageContext)}">
			<ControlData control="enu16p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="left-bar">
	<h2 class="">Language</h2>
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu16p"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu16p"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld11p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld11p" class="control-label col-md-2">language</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld11p" styleClass="wr-submitButtons:ln157p form-control " property="sfld11p" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld11pList" labelProperty="sfld11pLabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld11p", "change", function(event) { WREvent.observe(event, "page36p", "ln157p", $H({"isForm": true, "pressedLink": 'button:ln157p', "selectiveRefresh": true, "sourcePage": 'page36p'})); });
		</script>
					<c:set var="btFieldError"><html:errors property="sfld11p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
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
		<c:if test="${webratio:isLayoutRefreshed('page36p_cell_12,page36p_grid_0', pageContext)}">
			<ControlData control="page36p_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu4p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu4p_0,page36p_cell_12,page36p_grid_0', pageContext)}">
			<ControlData control="pwu4p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty pwu4p) and (pwu4p.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">Mails</h2>
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu4patt33x', pageContext)}">
	 		<a title="Code" id="pwu4patt33x" onclick="return ajaxRequest('<webratio:Link link="pwu4patt33x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu4patt33x', sourcePage: 'page36p'}))" class="  sort" href="<webratio:Link link="pwu4patt33x" position="index"/>">							
			Code</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						            Description
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln159p', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln160p', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu4p.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu4p.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
										<c:out value="${current.code}"/>
								</td>
								<td class=" string">
										<c:out value="${current.description}"/>
								</td>
			<c:if test="${webratio:isTargetAccessible('ln159p', pageContext)}">
									<td class=" smallcol">
										 <c:if test="${webratio:isTargetAccessible('ln159p', pageContext)}">
	 		<a title="Modify" id="ln159p" class=" " href="<webratio:Link link="ln159p" position="index"/>" >
			Modify</a>
	</c:if>
									</td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln160p', pageContext)}">
									<td class=" smallcol">
										 <c:if test="${webratio:isTargetAccessible('ln160p', pageContext)}">
	 		<a title="Preview" id="ln160p" class=" " href="<webratio:Link link="ln160p" position="index"/>" target="_blank"  >
			Preview</a>
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
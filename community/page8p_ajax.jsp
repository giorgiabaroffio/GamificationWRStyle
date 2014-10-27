<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page8p"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page8p.do${wrAjax ? '#!ajax=true' : ''}" styleId="page8pFormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page8p">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page8p"/>
				<input type="hidden" name="ln55p" value="<webratio:Link link="ln55p"/>">
				<input type="hidden" name="ln56p" value="<webratio:Link link="ln56p"/>">
				<input type="hidden" name="ln97p" value="<webratio:Link link="ln97p"/>">
					<input type="hidden" name="ln97p_sr" value="<webratio:Link link="ln97p" selectiveRefresh="true"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page8p"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page8p_grid_0', pageContext)}">
			<ControlData control="page8p_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page8p_cell_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page8p_cell_0,page8p_grid_0', pageContext)}">
			<ControlData control="page8p_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu2p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu2p_0,page8p_cell_0,page8p_grid_0', pageContext)}">
			<ControlData control="enu2p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			New action
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu2p"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu2p"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="fld2p_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld2p_locale" class="control-label col-md-2">Date</label>
					<div class="controls col-md-10">
					<div class="input-calendar input-group">
				<html:text  styleId="fld2p_locale" styleClass="wr-submitButtons:ln55p,ln56p,ln97p form-control " property="fld2p_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld2p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld2p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.timestampConfigFromJava("${timestampPattern}");
									$('#fld2p_locale').datetimepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>,
										timeFormat: pattern.timeFormat,
										ampm: pattern.ampm,
										separator: pattern.separator
									});
									$('#fld2p_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld2p_locale').datetimepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld2p_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld1p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld1p" class="control-label col-md-2">Action</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld1p" styleClass="wr-submitButtons:ln55p,ln56p,ln97p form-control " property="sfld1p" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld1pList" labelProperty="sfld1pLabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld1p", "change", function(event) { WREvent.observe(event, "page8p", "ln97p", $H({"isForm": true, "pressedLink": 'button:ln97p', "selectiveRefresh": true, "sourcePage": 'page8p'})); });
		</script>
					<c:set var="btFieldError"><html:errors property="sfld1p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld3p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld3p" class="control-label col-md-2">Description</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld3p" styleClass="wr-submitButtons:ln55p,ln56p,ln97p  form-control " property="fld3p" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld3p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld4p_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld4p_locale" class="control-label col-md-2">Score</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld4p_locale" styleClass="wr-submitButtons:ln55p,ln56p,ln97p  form-control " property="fld4p_locale" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld4p_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln55p', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln55p', pageContext)}">
			<button title="Save" onclick="$('#page8pFormBean')[0].target='_self'" class="btn  btn-default " id="button:ln55p" name="button:ln55p" type="submit" value="Save">
			Save</button>
	</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln56p', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln56p', pageContext)}">
			<button title="Back" onclick="$('#page8pFormBean')[0].target='_self'" class="btn  btn-default " id="button:ln56p" name="button:ln56p" type="submit" value="Back">
			Back</button>
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
		<![CDATA[
		</html:form>
	]]>
</PageRefresh>
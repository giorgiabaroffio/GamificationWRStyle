<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page31p"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page31p.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		]]>
		<HiddenFields page="page31p">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page31p"/>
				<input type="hidden" name="ln191p" value="<webratio:Link link="ln191p"/>"/>
					<input type="hidden" name="ln191p_sr" value="<webratio:Link link="ln191p" selectiveRefresh="true"/>"/>
				<input type="hidden" name="ln192p" value="<webratio:Link link="ln192p"/>"/>
				<input type="hidden" name="ln224p" value="<webratio:Link link="ln224p"/>"/>
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page31p"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('mpage2x_customlocation_0', pageContext)}">
			<ControlData control="mpage2x_customlocation_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="wr-ajaxDiv" id="mpage2x_grid_0"></div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('mpage2x_grid_0,mpage2x_customlocation_0', pageContext)}">
			<ControlData control="mpage2x_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="mpage2x_cell_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('mpage2x_cell_0,mpage2x_grid_0,mpage2x_customlocation_0', pageContext)}">
			<ControlData control="mpage2x_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau6x_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('dau6x_0,mpage2x_cell_0,mpage2x_grid_0,mpage2x_customlocation_0', pageContext)}">
			<ControlData control="dau6x_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty dau6x) and (dau6x.dataSize gt 0)}">
		<div class="plain userUnit ">
			<div class="plain DataUnit">
				<table>
					<tr>
						<td class=" value string">    
<c:out value="${dau6x.data.userName}"/> 
  </td>
			<c:if test="${webratio:isTargetAccessible('ln54x', pageContext)}">
						<td>
						<a href="<webratio:Link escapeXml="true" link="ln54x" position="index"/>" class="button">Logout</a>
						</td>
			</c:if>
					</tr>  
				</table> 
				<div class="clear">&nbsp;</div>
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
		<c:if test="${webratio:isLayoutRefreshed('page31p_grid_0', pageContext)}">
			<ControlData control="page31p_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page31p_cell_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page31p_cell_0,page31p_grid_0', pageContext)}">
			<ControlData control="page31p_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu24p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu24p_0,page31p_cell_0,page31p_grid_0', pageContext)}">
			<ControlData control="enu24p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="left-bar">
	<h2 class="">New Reward</h2>
	 <div class="plain ">
		<div class="plain EntryUnit">
				<table>
					<tr>
						<td colspan="2" class="error">
							<html:errors property="enu24p" />
						</td>
					</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Language
							</th>
						   </tr><tr class="row">		
						<td valign="middle" nowrap="nowrap" class=" value">
								<c:if test="${webratio:evaluateCondition('cexpr4p', null, pageContext)}"><html:hidden property="sfld27p"/></c:if>
				<html:select styleId="sfld27p" styleClass="wr-submitButtons:ln192p,ln191p,ln224p form-control  selectionfield" property="sfld27p" disabled="${webratio:evaluateCondition('cexpr4p', null, pageContext)}">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld27pList" labelProperty="sfld27pLabelList"/>
				</html:select>
						</td>
						    </tr>
							<tr>
								<td class="error"><c:set var="btFieldError"><html:errors property="sfld27p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Date * 
							</th>
						   </tr><tr class="row">		
						<td valign="middle" nowrap="nowrap" class=" value">
								<div class="input-calendar input-group">
				<html:text  styleId="fld55p_locale" styleClass="wr-submitButtons:ln192p,ln191p,ln224p form-control  field" property="fld55p_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld55p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld55p_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.timestampConfigFromJava("${timestampPattern}");
									$('#fld55p_locale').datetimepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>,
										timeFormat: pattern.timeFormat,
										ampm: pattern.ampm,
										separator: pattern.separator
									});
									$('#fld55p_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld55p_locale').datetimepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
						</td>
						    </tr>
							<tr>
								<td class="error"><c:set var="btFieldError"><html:errors property="fld55p_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Reward * 
							</th>
						   </tr><tr class="row">		
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld26p" styleClass="wr-submitButtons:ln192p,ln191p,ln224p form-control  selectionfield" property="sfld26p" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld26pList" labelProperty="sfld26pLabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld26p", "change", function(event) { WREvent.observe(event, "page31p", "ln191p", $H({"isForm": true, "pressedLink": 'button:ln191p', "selectiveRefresh": true, "sourcePage": 'page31p'})); });
		</script>
						</td>
						    </tr>
							<tr>
								<td class="error"><c:set var="btFieldError"><html:errors property="sfld26p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Score * 
							</th>
						   </tr><tr class="row">		
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:text   styleId="fld56p" styleClass="wr-submitButtons:ln192p,ln191p,ln224p  form-control  field" property="fld56p" readonly="false"/>
						</td>
						    </tr>
							<tr>
								<td class="error"><c:set var="btFieldError"><html:errors property="fld56p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if></td>
					 	</tr>
					<tr>
						<td colspan="2">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('ln192p', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln192p', pageContext)}">
			<input title="Save" onclick="$('page31pFormBean').target='_self'" class="save  button"  style="background-image:url('style/img/Save.png'); background-position: left; background-repeat: no-repeat; padding-left: 20px;" id="button:ln192p" name="button:ln192p" type="submit" value="Save">
	</c:if>
 </td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln224p', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln224p', pageContext)}">
			<input title="Back" onclick="$('page31pFormBean').target='_self'" class="back  button"  style="background-image:url('style/img/Back.png'); background-position: left; background-repeat: no-repeat; padding-left: 20px;" id="button:ln224p" name="button:ln224p" type="submit" value="Back">
	</c:if>
 </td>
			</c:if>
					</tr>
				    </table>
				   </td>
			   </tr>
		  </table>
		</div>
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
		<![CDATA[
		</html:form>
	]]>
</PageRefresh>
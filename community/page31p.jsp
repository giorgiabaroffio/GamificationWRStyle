<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html; charset=UTF-8"%> 
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<webratio:Page page="page31p"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<html:xhtml/>
<head>
  <base href="<%=wrBaseURI%>"/> 
  <title>Reward</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <c:set var="wrAjaxDebugLevel" value="full"/>
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery", "wr-resver": "1.7.2"}-->
	<script src="<webratio:Resource path="WRResources/script.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-utils-supportscripts", "wr-resver": "7.2.6"}-->
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "jquery-ui-style", "wr-resver": "1.9.2"}-->
	<script src="<webratio:Resource path="WRResources/ajax/jquery-ui/jquery-ui.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery-ui", "wr-resver": "1.9.2"}-->
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "wr-ui-style", "wr-resver": "7.2.6"}-->
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext))}">
	<script src="<webratio:Resource path="${webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext)}"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-runtime", "wr-resver": "7.2.6"}-->
<c:if test="${not wrAjax and not webratio:isWindow(pageContext)}">
	<script type="text/javascript">
		<c:choose>
			<c:when test="${wrBoxed}">
				(wr._configs = (wr._configs || {}))["${wrClientAppName}"] = (function() {
					var app = new wr.app.App("${wrClientAppName}");
					app.configure({
			</c:when>
			<c:otherwise>
				(function() { 
					wr.getApp().mergeConfig({
			</c:otherwise>
		</c:choose>
			log: {
				implementation: "wr.log.LogPlugin",
				appenders: [
					"wr.log.HtmlAppender"
				],
				categories: {
					<c:choose>
						<c:when test="${wrAjaxDebugLevel eq 'full'}">
							"": wr.log.Level.DEBUG
						</c:when>
						<c:otherwise>
							"": wr.log.Level.WARN,
							"wr.logic.AjaxRequestActor._response": wr.log.Level.DEBUG,
							"wr.ui.html.ElementViewer._code": wr.log.Level.DEBUG,
							"wr.widgets": wr.log.Level.DEBUG
						</c:otherwise>
					</c:choose>
				}
			},
		ui: {
			implementation: "wr.ui.UIPlugin",
			factories: {
				"display": "wr.ui.DisplayControlFactory",
				"window": "wr.ui.WindowControlFactory",
				"default": "wr.ui.ViewerBasedControlFactory"
			},
			display: { 
				factory: "display", 
				viewer: "wr.ui.web.BrowserViewer",
				views: {
					"${wrCurrentWindowName}": {
						factory: "window",
						viewer: "${wrBoxed ? 'wr.ui.web.BoxViewer' : 'wr.ui.web.WindowViewer'}",
						viewerConfig: { <c:if test="${wrBoxed}">boxSelector: "#wr-${wrClientAppName}"</c:if> },
						views: {
							"${wrCurrentWindowName}_page": {
								viewer: "wr.ui.html.ContainerElementViewer",
								viewerConfig: { containersFilter: ".wr-ajaxDiv" }
							}
						}
					}
				}
			}
		},
		nav: {
			implementation: "wr.nav.NavPlugin",
			routers: [ {
				name: "wr.nav.PropagationRouter",
				priority: -50
			}, {
				name: "wr.nav.HttpWebRouter",
				priority: -100
			} ]
		},
		logic: {
			implementation: "wr.logic.LogicPlugin"
		},
		oldajax: {
			implementation: "wr.LegacyAjaxPlugin",
				containersFilter: ".wr-ajaxDiv"
			}
		<c:choose>
			<c:when test="${wrBoxed}">
					}).chain(function() {
						app.init();
					}).chain(function() {
						app.start();
					});
				});
			</c:when>
			<c:otherwise>
					});
				})();
			</c:otherwise>
		</c:choose>
	</script>
</c:if>
			</c:if>
			<!--[if lt IE 9]>
	<script src="<webratio:Resource path="BootstrapStyle/js/html5shiv.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "html5shiv"}-->
			<![endif]-->
			<!--[if lt IE 9]>
	<script src="<webratio:Resource path="BootstrapStyle/js/respond.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "respond"}-->
			<![endif]-->
	<script src="<webratio:Resource path="BootstrapStyle/dist/js/bootstrap.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "bootstrap-js"}-->
	<link href="<webratio:Resource path="builtin/960_Fluid_Nestable_12.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "wr-960gs-12"}-->
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BUILTIN/jquery-ui-datepicker-lang', 'WRResources/ajax/jquery-ui/i18n/', pageContext))}">
	<script src="<webratio:Resource path="${webratio:expandLayoutResourceContent('BUILTIN/jquery-ui-datepicker-lang', 'WRResources/ajax/jquery-ui/i18n/', pageContext)}"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery-ui-datepicker-lang", "wr-resver": "1.9.2"}-->
			</c:if>
	<link href="<webratio:Resource path="WRResources/timepicker/jquery-ui-timepicker-addon.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "richardson-timepicker-style", "wr-resver": "1.4.5"}-->
	<link href="<webratio:Resource path="style/css/style.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "style"}-->
	<link href="<webratio:Resource path="builtin/grid_elements.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "wr-ui-gridsystem"}-->
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BootstrapStyle/bootstrap-css', 'BootstrapStyle/dist/css/', pageContext))}">
	<link href="<webratio:Resource path="${webratio:expandLayoutResourceContent('BootstrapStyle/bootstrap-css', 'BootstrapStyle/dist/css/', pageContext)}"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "bootstrap-css"}-->
			</c:if>
	<link href="<webratio:Resource path="BootstrapStyle/css/app.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "app-css"}-->
	<script src="<webratio:Resource path="BootstrapStyle/js/app.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "app-js"}-->
	<script src="<webratio:Resource path="WRResources/timepicker/jquery-ui-timepicker-addon.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "richardson-timepicker", "wr-resver": "1.4.5"}-->
	<script src="<webratio:Resource path="WRResources/ajax/webratio/calendar-utils.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-calendar-utils", "wr-resver": "7.2.6"}-->
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BUILTIN/richardson-timepicker-lang', 'WRResources/timepicker/i18n/', pageContext))}">
	<script src="<webratio:Resource path="${webratio:expandLayoutResourceContent('BUILTIN/richardson-timepicker-lang', 'WRResources/timepicker/i18n/', pageContext)}"/>" type="text/javascript"></script><!--[data] {"wr-resname": "richardson-timepicker-lang", "wr-resver": "1.4.5"}-->
			</c:if>
<script type="text/javascript">if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
</head>
<body>
<c:if test="${not webratio:isWindow(pageContext)}">
<div class="body">
<div class="bg-bottom"></div>
<div class="container">
</c:if>
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
			<html:form action="form_page31p.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		<div class="wr-ajaxDiv" id="page31pHiddenFields">
			<html:hidden property="lastURL" styleId="lastURL_page31p"/>
				<input type="hidden" name="ln191p" value="<webratio:Link link="ln191p"/>"/>
					<input type="hidden" name="ln191p_sr" value="<webratio:Link link="ln191p" selectiveRefresh="true"/>"/>
				<input type="hidden" name="ln192p" value="<webratio:Link link="ln192p"/>"/>
				<input type="hidden" name="ln224p" value="<webratio:Link link="ln224p"/>"/>
		</div>
	<c:if test="${not webratio:isWindow(pageContext)}">
	<div class="top-bar">
		<div class="logo">
			<a href="page1q.do" title="<bean:message key="go to homepage"/>">Webratio CRM</a>
		</div>
		<div class="user-profile">
			<div class="wr-ajaxDiv" id="mpage2x_customlocation_0"><div class="wr-ajaxDiv" id="mpage2x_grid_0">
<div class="wr-ajaxDiv" id="mpage2x_cell_0">
	<div class="wr-ajaxDiv" id="dau6x_0">
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
    </div>
</div>
</div></div>
		</div>
	</div>
	<div class="lm">
		<ul>
				<li><c:if test="${webratio:isTargetAccessible('page1q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page1q.link"/>">
   Gamification Area
</a>
			</c:if>
				<ul>
					<li><c:if test="${webratio:isTargetAccessible('page1q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page1q.link"/>">
   Manage Gamified Application
</a>
			</c:if>
 </li>
					<li><c:if test="${webratio:isTargetAccessible('page25q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page25q.link"/>">
   Manage Thematic Area
</a>
			</c:if>
 </li>
					<li><c:if test="${webratio:isTargetAccessible('page20x.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page20x.link"/>">
   Manage Action
</a>
			</c:if>
 </li>
					<li><c:if test="${webratio:isTargetAccessible('page4x.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page4x.link"/>">
   Manage Badge Area
</a>
			</c:if>
 </li>
					<li><c:if test="${webratio:isTargetAccessible('page22x.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page22x.link"/>">
   Manage Badge
</a>
			</c:if>
 </li>
				</ul>
				</li>
				<li><c:if test="${webratio:isTargetAccessible('page22p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page22p.link"/>">
   Rewards Area
</a>
			</c:if>
				<ul>
					<li><c:if test="${webratio:isTargetAccessible('page22p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page22p.link"/>">
   Manage Rewards
</a>
			</c:if>
 </li>
				</ul>
				</li>
				<li class="current"><c:if test="${webratio:isTargetAccessible('page4p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page4p.link"/>">
   Community Users Area
</a>
			</c:if>
				</li>
				<li><c:if test="${webratio:isTargetAccessible('page7q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page7q.link"/>">
   Administrator Users Area
</a>
			</c:if>
				</li>
				<li><c:if test="${webratio:isTargetAccessible('page36p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page36p.link"/>">
   Notification Area
</a>
			</c:if>
				<ul>
					<li><c:if test="${webratio:isTargetAccessible('page36p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page36p.link"/>">
   Text Mail
</a>
			</c:if>
 </li>
					<li><c:if test="${webratio:isTargetAccessible('page35p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page35p.link"/>">
   Manage Containers
</a>
			</c:if>
 </li>
					<li><c:if test="${webratio:isTargetAccessible('page37p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page37p.link"/>">
   Notification Events
</a>
			</c:if>
 </li>
				</ul>
				</li>
				<li><c:if test="${webratio:isTargetAccessible('page16q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page16q.link"/>">
   Text Management Area
</a>
			</c:if>
				<ul>
					<li><c:if test="${webratio:isTargetAccessible('page16q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page16q.link"/>">
   Text Chunks
</a>
			</c:if>
 </li>
					<li><c:if test="${webratio:isTargetAccessible('page17q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page17q.link"/>">
   Text Labels
</a>
			</c:if>
 </li>
				</ul>
				</li>
		</ul>
		<div class="clear">&nbsp;</div>
	</div>
	<div class="content">
	</c:if>
		<div class="page-title<c:if test="${not webratio:isWindow(pageContext)}"> ajaxPopup</c:if>">
			<h1>Reward
			</h1>
			<ul class="page-links">
			</ul>
		</div>
		<div class="wr-ajaxDiv" id="page31p_grid_0">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page31p_cell_0">
	<div class="wr-ajaxDiv" id="enu24p_0">
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
</div>
</div>
			</div>
				<div class="clear"></div>
</div>
</div>
	<c:if test="${not webratio:isWindow(pageContext)}"></div></c:if>
		</html:form>
		<script type="text/javascript">
			if (typeof wr !== "undefined" && wr.getApp().isConfigurable()) {
				wr.getApp().mergeConfig({
					"ui+": {
						autoFocusFirstWindow: true
					}
				});
			}
		</script>
	<script type="application/json" class="wr-linkInfos">
		<webratio:LinkInfos page="page31p"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page31p" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page31p"/>
	</script>
</webratio:CollectScripts>
<c:if test="${wrBoxed}">
		</div>
		<c:if test="${not wrAjax}">
			<script type="text/javascript">
				jQuery(function($) {
					wr.ui.html.addRemoveListener($("#wr-${wrClientAppName}")[0], $.proxy(wr.runScoped, this, "${wrClientAppName}", wr.LegacyAjaxPlugin.exit));
				});
				wr._configs["${wrClientAppName}"]();
			</script>
		</c:if>
		<c:if test="${not(empty inlineScripts)}">
			<script type="text/javascript">
				wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
					${inlineScripts}
				});
			</script>
		</c:if>
</c:if>
<c:if test="${not webratio:isWindow(pageContext)}">	
    <div class="wr-footer">
      <span>generated by</span>
      <a target="_blank" title="WebRatio | Business Agility and IT Standards for building your custom enterprise applications" href="http://www.webratio.com"><span class="blu">Web</span><img style="width: 8px; height: 8px; border: 0px;" alt="Generated by WebRatio" src="style/img/GeneratedByWebRatio.png" /><span class="red">Ratio</span></a><sup>&reg;</sup>
    </div>
	<div class="clear">&nbsp;</div>       
</div>
</div>
</c:if>
</body>
</html>
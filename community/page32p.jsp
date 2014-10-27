<!DOCTYPE html>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<% response.setHeader("X-UA-Compatible", "IE=edge"); %>
<webratio:Page page="page32p"/>
<html lang="${LanguageISOCtxParam}">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
	    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<base href="<%=wrBaseURI%>"/> 
		<title>Rewards History</title>
		<c:set var="bootstrap-theme" value="default"/>
		<c:set var="wrAjaxDebugLevel" value="full"/>
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet" data-wr-resname="jquery-ui-style" data-wr-resver="1.9.2">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-ui-style" data-wr-resver="7.2.6">
	<link href="<webratio:Resource path="builtin/960_Fluid_Nestable_12.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-960gs-12">
	<link href="<webratio:Resource path="style/css/style.css"/>" type="text/css" rel="stylesheet" data-wr-resname="style">
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BootstrapStyle/bootstrap-css', 'BootstrapStyle/dist/css/', pageContext))}">
	<link href="<webratio:Resource path="${webratio:expandLayoutResourceContent('BootstrapStyle/bootstrap-css', 'BootstrapStyle/dist/css/', pageContext)}"/>" type="text/css" rel="stylesheet" data-wr-resname="bootstrap-css">
			</c:if>
	<link href="<webratio:Resource path="builtin/grid_elements.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-ui-gridsystem">
	<link href="<webratio:Resource path="BootstrapStyle/css/app.css"/>" type="text/css" rel="stylesheet" data-wr-resname="app-css">
<script>if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
		<c:set var="wrAjaxDebugLevel" value="full"/>
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" data-wr-resname="jquery" data-wr-resver="1.7.2"></script>
	<script src="<webratio:Resource path="WRResources/script.js"/>" data-wr-resname="wr-utils-supportscripts" data-wr-resver="7.2.6"></script>
	<script src="<webratio:Resource path="WRResources/ajax/jquery-ui/jquery-ui.min.js"/>" data-wr-resname="jquery-ui" data-wr-resver="1.9.2"></script>
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext))}">
	<script src="<webratio:Resource path="${webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext)}"/>" data-wr-resname="wr-runtime" data-wr-resver="7.2.6"></script>
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
	<script src="<webratio:Resource path="BootstrapStyle/js/html5shiv.min.js"/>" data-wr-resname="html5shiv"></script>
			<![endif]-->
			<!--[if lt IE 9]>
	<script src="<webratio:Resource path="BootstrapStyle/js/respond.min.js"/>" data-wr-resname="respond"></script>
			<![endif]-->
	<script src="<webratio:Resource path="BootstrapStyle/dist/js/bootstrap.min.js"/>" data-wr-resname="bootstrap-js"></script>
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BUILTIN/jquery-ui-datepicker-lang', 'WRResources/ajax/jquery-ui/i18n/', pageContext))}">
	<script src="<webratio:Resource path="${webratio:expandLayoutResourceContent('BUILTIN/jquery-ui-datepicker-lang', 'WRResources/ajax/jquery-ui/i18n/', pageContext)}"/>" data-wr-resname="jquery-ui-datepicker-lang" data-wr-resver="1.9.2"></script>
			</c:if>
	<script src="<webratio:Resource path="BootstrapStyle/js/app.min.js"/>" data-wr-resname="app-js"></script>
	<script src="<webratio:Resource path="WRResources/ajax/webratio/calendar-utils.js"/>" data-wr-resname="wr-calendar-utils" data-wr-resver="7.2.6"></script>
<script>if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
	</head>
<body class="bootstrap-default">
<a href="#main-content" class="sr-only">Skip to main content</a>
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
			<html:form action="form_page32p.do${wrAjax ? '#!ajax=true' : ''}" styleId="page32pFormBean" enctype="multipart/form-data">
		<div class="wr-ajaxDiv" id="page32pHiddenFields">
			<html:hidden property="lastURL" styleId="lastURL_page32p"/>
				<input type="hidden" name="ln216p" value="<webratio:Link link="ln216p"/>">
				<input type="hidden" name="ln217p" value="<webratio:Link link="ln217p"/>">
					<input type="hidden" name="ln217p_sr" value="<webratio:Link link="ln217p" selectiveRefresh="true"/>">
		</div>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="page1q.do">WebRatio</a>
			</div>
			<div class="navbar-collapse collapse">		      
	            <ul class="nav navbar-nav" role="menu">
			<c:if test="${webratio:isTargetAccessible('page1q.link', pageContext)}">
								<li class="dropdown">
									<a href="<webratio:Link escapeXml="true" link="page1q.link"/>" class="dropdown-toggle" data-toggle="dropdown" data-target="#">Gamification Area<span class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
			<c:if test="${webratio:isTargetAccessible('page1q.link', pageContext)}">
														<li><c:if test="${webratio:isTargetAccessible('page1q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page1q.link"/>">
   Manage Gamified Application
</a>
			</c:if>
 </li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page25q.link', pageContext)}">
														<li><c:if test="${webratio:isTargetAccessible('page25q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page25q.link"/>">
   Manage Thematic Area
</a>
			</c:if>
 </li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page20x.link', pageContext)}">
														<li><c:if test="${webratio:isTargetAccessible('page20x.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page20x.link"/>">
   Manage Action
</a>
			</c:if>
 </li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page4x.link', pageContext)}">
														<li><c:if test="${webratio:isTargetAccessible('page4x.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page4x.link"/>">
   Manage Badge Area
</a>
			</c:if>
 </li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page22x.link', pageContext)}">
														<li><c:if test="${webratio:isTargetAccessible('page22x.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page22x.link"/>">
   Manage Badge
</a>
			</c:if>
 </li>
			</c:if>
									</ul>
								</li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page22p.link', pageContext)}">
								<li class="dropdown">
									<a href="<webratio:Link escapeXml="true" link="page22p.link"/>" class="dropdown-toggle" data-toggle="dropdown" data-target="#">Rewards Area<span class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
			<c:if test="${webratio:isTargetAccessible('page22p.link', pageContext)}">
														<li><c:if test="${webratio:isTargetAccessible('page22p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page22p.link"/>">
   Manage Rewards
</a>
			</c:if>
 </li>
			</c:if>
									</ul>
								</li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page4p.link', pageContext)}">
								<li class="active"><a href="<webratio:Link escapeXml="true" link="page4p.link"/>">Community Users Area</a></li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page7q.link', pageContext)}">
								<li><a href="<webratio:Link escapeXml="true" link="page7q.link"/>">Administrator Users Area</a></li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page36p.link', pageContext)}">
								<li class="dropdown">
									<a href="<webratio:Link escapeXml="true" link="page36p.link"/>" class="dropdown-toggle" data-toggle="dropdown" data-target="#">Notification Area<span class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
			<c:if test="${webratio:isTargetAccessible('page36p.link', pageContext)}">
														<li><c:if test="${webratio:isTargetAccessible('page36p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page36p.link"/>">
   Text Mail
</a>
			</c:if>
 </li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page35p.link', pageContext)}">
														<li><c:if test="${webratio:isTargetAccessible('page35p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page35p.link"/>">
   Manage Containers
</a>
			</c:if>
 </li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page37p.link', pageContext)}">
														<li><c:if test="${webratio:isTargetAccessible('page37p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page37p.link"/>">
   Notification Events
</a>
			</c:if>
 </li>
			</c:if>
									</ul>
								</li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page16q.link', pageContext)}">
								<li class="dropdown">
									<a href="<webratio:Link escapeXml="true" link="page16q.link"/>" class="dropdown-toggle" data-toggle="dropdown" data-target="#">Text Management Area<span class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
			<c:if test="${webratio:isTargetAccessible('page16q.link', pageContext)}">
														<li><c:if test="${webratio:isTargetAccessible('page16q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page16q.link"/>">
   Text Chunks
</a>
			</c:if>
 </li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page17q.link', pageContext)}">
														<li><c:if test="${webratio:isTargetAccessible('page17q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page17q.link"/>">
   Text Labels
</a>
			</c:if>
 </li>
			</c:if>
									</ul>
								</li>
			</c:if>
	            </ul>
	            <div class="nav navbar-right user-location">
	            </div>
			</div>
		</div>
	</nav>
<div class="container container-fixed-top-padding">
	<ol class="breadcrumb" aria-label="breadcrumbs">
		 <li><c:if test="${webratio:isTargetAccessible('page4p.link', pageContext)}">	
 <a class="small" href="<webratio:Link link="page4p.link"/>">
   Community Users Area
</a>
			</c:if>
 </li>
		<li class="active">Rewards History</li>
	</ol>
	<div class="page-header clearfix">
			<h1>Rewards History</h1>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div id="main-content" role="main">
			<div class="wr-ajaxDiv" id="page32p_grid_0">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page32p_cell_0">
	<div class="wr-ajaxDiv" id="enu25p_0">
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
</div></div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page32p_cell_12">
	<div class="wr-ajaxDiv" id="pwu13p_0">
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
</div>
</div>
			</div>
				<div class="clear"></div>
</div>
</div>
			</div>
		</div>
	</div>
	<hr class="footer-bar"/>
	<footer class="copy-footer" role="contentinfo">
		<p class="text-center">Generated by <a href="http://www.webratio.com" target="_blank" title="High Productivity Web and Mobile App Dev Platform">WebRatio<sup>&reg;</sup></a></p>
	</footer>
</div>
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
		<webratio:LinkInfos page="page32p"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page32p" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page32p"/>
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
</body>
</html>
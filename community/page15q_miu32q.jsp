<!DOCTYPE html>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<% response.setHeader("X-UA-Compatible", "IE=edge"); %>
<webratio:Page page="page15q"/>
<html lang="${LanguageISOCtxParam}">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
	    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<base href="<%=wrBaseURI%>"/> 
		<title>New Action</title>
		<c:set var="bootstrap-theme" value="default"/>
		<c:set var="wrAjaxDebugLevel" value="full"/>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet" data-wr-resname="jquery-ui-style" data-wr-resver="1.9.2">
			</c:if>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-ui-style" data-wr-resver="7.2.6">
			</c:if>
	<link href="<webratio:Resource path="builtin/960_Fluid_Nestable_12.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-960gs-12">
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BootstrapStyle/bootstrap-css', 'BootstrapStyle/dist/css/', pageContext))}">
	<link href="<webratio:Resource path="${webratio:expandLayoutResourceContent('BootstrapStyle/bootstrap-css', 'BootstrapStyle/dist/css/', pageContext)}"/>" type="text/css" rel="stylesheet" data-wr-resname="bootstrap-css">
			</c:if>
	<link href="<webratio:Resource path="builtin/grid_elements.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-ui-gridsystem">
	<link href="<webratio:Resource path="BootstrapStyle/css/app.css"/>" type="text/css" rel="stylesheet" data-wr-resname="app-css">
<script>if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
		<c:set var="wrAjaxDebugLevel" value="full"/>
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" data-wr-resname="jquery" data-wr-resver="1.7.2"></script>
	<script src="<webratio:Resource path="WRResources/script.js"/>" data-wr-resname="wr-utils-supportscripts" data-wr-resver="7.2.6"></script>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<script src="<webratio:Resource path="WRResources/ajax/jquery-ui/jquery-ui.min.js"/>" data-wr-resname="jquery-ui" data-wr-resver="1.9.2"></script>
			</c:if>
			<c:if test="${(wrBoxed or wrAjaxCalling) and not(empty webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext))}">
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
	<script src="<webratio:Resource path="BootstrapStyle/js/app.min.js"/>" data-wr-resname="app-js"></script>
<script>if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
	</head>
<body class="bootstrap-default">
<a href="#main-content" class="sr-only">Skip to main content</a>
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
			<html:form action="form_page15q_miu32q.do${wrAjax ? '#!ajax=true' : ''}" styleId="page15q_miu32qFormBean" enctype="multipart/form-data">
			<html:hidden property="lastURL" styleId="lastURL_page15q_miu32q"/>
				<input type="hidden" name="ln165q" value="<webratio:Link link="ln165q"/>">
				<input type="hidden" name="ln166q" value="<webratio:Link link="ln166q"/>">
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
								<li class="active dropdown">
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
								<li><a href="<webratio:Link escapeXml="true" link="page4p.link"/>">Community Users Area</a></li>
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
		 <li><c:if test="${webratio:isTargetAccessible('page1q.link', pageContext)}">	
 <a class="small" href="<webratio:Link link="page1q.link"/>">
   Gamification Area
</a>
			</c:if>
 </li>
		<li class="active">New Action</li>
	</ol>
	<div class="page-header clearfix">
			<h1>New Action</h1>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div id="main-content" role="main">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			New Action
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu7q"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu7q"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld18q"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld18q" class="control-label col-md-2">Thematic Area</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld18q" styleClass="wr-submitButtons:ln165q,ln166q form-control " property="sfld18q" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld18qList" labelProperty="sfld18qLabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld18q"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld14q"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld14q" class="control-label col-md-2">Name</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld14q" styleClass="wr-submitButtons:ln165q,ln166q  form-control " property="fld14q" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld14q"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld21q"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld21q" class="control-label col-md-2">Description</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld21q" styleClass="wr-submitButtons:ln165q,ln166q  form-control " property="fld21q" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld21q"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld13q_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld13q_locale" class="control-label col-md-2">Score</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld13q_locale" styleClass="wr-submitButtons:ln165q,ln166q  form-control " property="fld13q_locale" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld13q_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld5q"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld5q" class="control-label col-md-2">Participation</label>
					<div class="controls col-md-10">
					<label class="radio-inline" for="bool_sfld5q_0">
					<html:radio property="sfld5q" value="true" styleId="bool_sfld5q_0" styleClass="wr-submitButtons:ln165q,ln166q" disabled="false">
		      		  <bean:message key="boolean.yes"/>
		      		</html:radio>
				</label>
				<label class="radio-inline" for="bool_sfld5q_1">
	  				<html:radio property="sfld5q" value="false" styleId="bool_sfld5q_1" styleClass="wr-submitButtons:ln165q,ln166q" disabled="false">
		      		  <bean:message key="boolean.no"/>
		      		</html:radio>
				</label>
					<c:set var="btFieldError"><html:errors property="sfld5q"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld6q"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld6q" class="control-label col-md-2">Reputation</label>
					<div class="controls col-md-10">
					<label class="radio-inline" for="bool_sfld6q_0">
					<html:radio property="sfld6q" value="true" styleId="bool_sfld6q_0" styleClass="wr-submitButtons:ln165q,ln166q" disabled="false">
		      		  <bean:message key="boolean.yes"/>
		      		</html:radio>
				</label>
				<label class="radio-inline" for="bool_sfld6q_1">
	  				<html:radio property="sfld6q" value="false" styleId="bool_sfld6q_1" styleClass="wr-submitButtons:ln165q,ln166q" disabled="false">
		      		  <bean:message key="boolean.no"/>
		      		</html:radio>
				</label>
					<c:set var="btFieldError"><html:errors property="sfld6q"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld7q"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld7q" class="control-label col-md-2">Repeatable</label>
					<div class="controls col-md-10">
					<label class="radio-inline" for="bool_sfld7q_0">
					<html:radio property="sfld7q" value="true" styleId="bool_sfld7q_0" styleClass="wr-submitButtons:ln165q,ln166q" disabled="false">
		      		  <bean:message key="boolean.yes"/>
		      		</html:radio>
				</label>
				<label class="radio-inline" for="bool_sfld7q_1">
	  				<html:radio property="sfld7q" value="false" styleId="bool_sfld7q_1" styleClass="wr-submitButtons:ln165q,ln166q" disabled="false">
		      		  <bean:message key="boolean.no"/>
		      		</html:radio>
				</label>
					<c:set var="btFieldError"><html:errors property="sfld7q"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld17q"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld17q" class="control-label col-md-2">Check Time Elapsed</label>
					<div class="controls col-md-10">
					<label class="radio-inline" for="bool_sfld17q_0">
					<html:radio property="sfld17q" value="true" styleId="bool_sfld17q_0" styleClass="wr-submitButtons:ln165q,ln166q" disabled="false">
		      		  <bean:message key="boolean.yes"/>
		      		</html:radio>
				</label>
				<label class="radio-inline" for="bool_sfld17q_1">
	  				<html:radio property="sfld17q" value="false" styleId="bool_sfld17q_1" styleClass="wr-submitButtons:ln165q,ln166q" disabled="false">
		      		  <bean:message key="boolean.no"/>
		      		</html:radio>
				</label>
					<c:set var="btFieldError"><html:errors property="sfld17q"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld22q_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld22q_locale" class="control-label col-md-2">Time Elapsed (minutes)</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld22q_locale" styleClass="wr-submitButtons:ln165q,ln166q  form-control " property="fld22q_locale" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld22q_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld25q_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld25q_locale" class="control-label col-md-2">Active</label>
					<div class="controls col-md-10">
					<label class="radio-inline" for="bool_fld25q_0">
  					<html:radio styleClass="wr-submitButtons:ln165q,ln166q " styleId="bool_fld25q_0" property="fld25q_locale" value="true" disabled="false"/>
					<bean:message key="boolean.yes"/>
				</label>
				<label class="radio-inline" for="bool_fld25q_1">
  					<html:radio styleClass="wr-submitButtons:ln165q,ln166q " styleId="bool_fld25q_1" property="fld25q_locale" value="false" disabled="false"/>
					<bean:message key="boolean.no"/>
				</label>
		<c:if test="false">
			<html:hidden property="fld25q_locale"/>
		</c:if>
					<c:set var="btFieldError"><html:errors property="fld25q_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln165q', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln165q', pageContext)}">
			<button title="Save" onclick="$('#page15q_miu32qFormBean')[0].target='_self'" class="btn  btn-default " id="button:ln165q" name="button:ln165q" type="submit" value="Save">
			Save</button>
	</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln166q', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln166q', pageContext)}">
			<button title="Back" onclick="$('#page15q_miu32qFormBean')[0].target='_self'" class="btn  btn-default " id="button:ln166q" name="button:ln166q" type="submit" value="Back">
			Back</button>
	</c:if>
			</c:if>
		</div>
	</div></div>
</div>	
	</div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
<c:if test="${not(empty mssu4q) and (mssu4q.dataSize gt 0)}">
	<div class="alert alert-info ">
		<c:forEach var="current" varStatus="status" items="${mssu4q.data}">
			<c:set var="index" value="${status.index}"/>
			<p>
					<c:out value="${current}"/>
				</p>
		</c:forEach>
	</div>
</c:if>
			</div>
				<div class="clear"></div>
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
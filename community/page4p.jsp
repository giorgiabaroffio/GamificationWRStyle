<!DOCTYPE html>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<% response.setHeader("X-UA-Compatible", "IE=edge"); %>
<webratio:Page page="page4p"/>
<html lang="${LanguageISOCtxParam}">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
	    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<base href="<%=wrBaseURI%>"/> 
		<title>Users list</title>
		<c:set var="bootstrap-theme" value="default"/>
		<c:set var="wrAjaxDebugLevel" value="full"/>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet" data-wr-resname="jquery-ui-style" data-wr-resver="1.9.2">
			</c:if>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-ui-style" data-wr-resver="7.2.6">
			</c:if>
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
			<html:form action="form_page4p.do${wrAjax ? '#!ajax=true' : ''}" styleId="page4pFormBean" enctype="multipart/form-data">
			<html:hidden property="lastURL" styleId="lastURL_page4p"/>
				<input type="hidden" name="ln114p" value="<webratio:Link link="ln114p"/>">
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
		<li class="active">Users list</li>
	</ol>
	<div class="page-header clearfix">
			<h1>Users list</h1>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div id="main-content" role="main">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Search
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="">
	    <c:set var="btFieldError"><html:errors property="enu1p"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu1p"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="fld9p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld9p" class="control-label">First Name</label>
					<div class="controls">
					<html:text   styleId="fld9p" styleClass="wr-submitButtons:ln114p  form-control " property="fld9p" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld9p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld10p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld10p" class="control-label">Last Name</label>
					<div class="controls">
					<html:text   styleId="fld10p" styleClass="wr-submitButtons:ln114p  form-control " property="fld10p" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld10p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld11p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld11p" class="control-label">Email</label>
					<div class="controls">
					<html:text   styleId="fld11p" styleClass="wr-submitButtons:ln114p  form-control " property="fld11p" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld11p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln114p', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln114p', pageContext)}">
			<button title="Search" onclick="$('#page4pFormBean')[0].target='_self'" class="btn  btn-default " id="button:ln114p" name="button:ln114p" type="submit" value="Search">
			Search</button>
	</c:if>
			</c:if>
		</div>
</div>	
	</div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
<c:choose>
<c:when test="${not(empty pwu6p) and (pwu6p.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">Users</h2>
		<div class="plain long-menu">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu6puserOID', pageContext)}">
	 		<a title="OID" id="pwu6puserOID" class="  sort" href="<webratio:Link link="pwu6puserOID" position="index"/>" >
			OID</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt113p', pageContext)}">
	 		<a title="First Name" id="pwu6patt113p" class="  sort" href="<webratio:Link link="pwu6patt113p" position="index"/>" >
			First Name</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt114p', pageContext)}">
	 		<a title="Last Name" id="pwu6patt114p" class="  sort" href="<webratio:Link link="pwu6patt114p" position="index"/>" >
			Last Name</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt56x', pageContext)}">
	 		<a title="Participation" id="pwu6patt56x" class="  sort" href="<webratio:Link link="pwu6patt56x" position="index"/>" >
			Participation</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt319x', pageContext)}">
	 		<a title="Participation 7 Days" id="pwu6patt319x" class="  sort" href="<webratio:Link link="pwu6patt319x" position="index"/>" >
			Participation 7 Days</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt57x', pageContext)}">
	 		<a title="Total Credit" id="pwu6patt57x" class="  sort" href="<webratio:Link link="pwu6patt57x" position="index"/>" >
			Total Credit</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt96p', pageContext)}">
	 		<a title="Credits Spent" id="pwu6patt96p" class="  sort" href="<webratio:Link link="pwu6patt96p" position="index"/>" >
			Credits Spent</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt110p', pageContext)}">
	 		<a title="Credits Available" id="pwu6patt110p" class="  sort" href="<webratio:Link link="pwu6patt110p" position="index"/>" >
			Credits Available</a>
	</c:if>
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln49p', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln48p', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln119q', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu6p.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu6p.currentIndex eq index}">class="info"</c:if>>	
								<td class=" integer">
										<fmt:formatNumber value="${current.OID}" pattern="${integerPattern}"/>
								</td>
								<td class=" string">
										<c:out value="${current.firstName}"/>
								</td>
								<td class=" string">
										<c:out value="${current.lastName}"/>
								</td>
								<td class=" decimal">
										<fmt:formatNumber value="${current.participation}" pattern="${decimalPattern}"/>
								</td>
								<td class=" decimal">
										<fmt:formatNumber value="${current.participation7Days}" pattern="${decimalPattern}"/>
								</td>
								<td class=" decimal">
										<fmt:formatNumber value="${current.totalCredit}" pattern="${decimalPattern}"/>
								</td>
								<td class=" decimal">
										<fmt:formatNumber value="${current.creditsSpent}" pattern="${decimalPattern}"/>
								</td>
								<td class=" integer">
										<fmt:formatNumber value="${current.creditsAvailable}" pattern="${integerPattern}"/>
								</td>
			<c:if test="${webratio:isTargetAccessible('ln49p', pageContext)}">
									<td class=" smallcol">
										 <c:if test="${webratio:isTargetAccessible('ln49p', pageContext)}">
	 		<a title="View Actions History" id="ln49p" class=" " href="<webratio:Link link="ln49p" position="index"/>" >
			View Actions History</a>
	</c:if>
									</td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln48p', pageContext)}">
									<td class=" smallcol">
										 <c:if test="${webratio:isTargetAccessible('ln48p', pageContext)}">
	 		<a title="View Rewards History" id="ln48p" class=" " href="<webratio:Link link="ln48p" position="index"/>" >
			View Rewards History</a>
	</c:if>
									</td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln119q', pageContext)}">
									<td class=" smallcol">
										 <c:set var="_wr_message"><bean:message key="linkConfirmMessage"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('ln119q', pageContext)}">
	 		<a title="Delete" id="ln119q" class=" " href="<webratio:Link link="ln119q" position="index"/>"  onclick="return confirm('<c:out value="${_wr_message}"/>')">
			Delete</a>
	</c:if>
									</td>
			</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu6p.scroller.of gt 20}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu6p.scroller.current ne pwu6p.scroller.first}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu6pFirst', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu6pFirst" class="  scroll" href="<webratio:Link link="pwu6pFirst" position="index"/>" >
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu6pFirst', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.First"/>" id="pwu6pFirst" class="  scroll" href="<webratio:Link link="pwu6pFirst" position="index"/>" >
			<bean:message key="PowerIndex.First"/></a>
	</c:if>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu6p.scroller.current ne pwu6p.scroller.previous}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu6pPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu6pPrevious" class="  scroll" href="<webratio:Link link="pwu6pPrevious" position="index"/>" >
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu6pPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu6pPrevious" class="  scroll" href="<webratio:Link link="pwu6pPrevious" position="index"/>" >
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu6p.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu6p.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu6pBlock" position="index"/>"  onclick="">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu6p.scroller.current ne pwu6p.scroller.next}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu6pNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu6pNext" class="  scroll" href="<webratio:Link link="pwu6pNext" position="index"/>" >
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu6pNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu6pNext" class="  scroll" href="<webratio:Link link="pwu6pNext" position="index"/>" >
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu6p.scroller.current ne pwu6p.scroller.last}">
	     	            <li> <c:if test="${webratio:isTargetAccessible('pwu6pLast', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu6pLast" class="  scroll" href="<webratio:Link link="pwu6pLast" position="index"/>" >
			<bean:message key="PowerIndex.Last"/></a>
	</c:if>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <c:if test="${webratio:isTargetAccessible('pwu6pLast', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Last"/>" id="pwu6pLast" class="  scroll" href="<webratio:Link link="pwu6pLast" position="index"/>" >
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
	<h2 class="">Users</h2>
		<div class="alert alert-info empty-message long-menu">
			<bean:message key="emptyUnitMessage"/>
		</div>
</div>
</c:otherwise>
</c:choose>
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
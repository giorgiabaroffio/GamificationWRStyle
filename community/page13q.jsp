<!DOCTYPE html>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<% response.setHeader("X-UA-Compatible", "IE=edge"); %>
<webratio:Page page="page13q"/>
<html lang="${LanguageISOCtxParam}">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
	    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<base href="<%=wrBaseURI%>"/> 
		<title><bean:message key="Reward Details"/></title>
		<c:set var="bootstrap-theme" value="default"/>
		<c:set var="wrAjaxDebugLevel" value="full"/>
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet" data-wr-resname="jquery-ui-style" data-wr-resver="1.9.2">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-ui-style" data-wr-resver="7.2.6">
	<link href="<webratio:Resource path="builtin/960_Fluid_Nestable_12.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-960gs-12">
	<link href="<webratio:Resource path="BootstrapStyle/css/community.css"/>" type="text/css" rel="stylesheet" data-wr-resname="community-css">
	<link href="<webratio:Resource path="wrdefault/css/default.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wrdefault-style">
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
	<script src="<webratio:Resource path="BootstrapStyle/js/app.min.js"/>" data-wr-resname="app-js"></script>
<script>if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
	</head>
<body class="bootstrap-default">
<a href="#main-content" class="sr-only">Skip to main content</a>
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
		<script type="text/javascript">
			if (typeof wr !== "undefined") {
				WRAjax.onReady(function() {
					wr.getApp().getPlugin("ui").configureViews(null, {
						_oldajax_ww: {
							factory: "window",
							viewer: "wr.ui.jquery.WaitDialogViewer"
						}
					});
				});
			}
		</script>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="pcu1o.do">My Dashboard</a>
			</div>
			<div class="navbar-collapse collapse">		      
	            <ul class="nav navbar-nav" role="menu">
			<c:if test="${webratio:isTargetAccessible('page5p.link', pageContext)}">
								<li><a href="<webratio:Link escapeXml="true" link="page5p.link"/>"><bean:message key="Getting Started"/></a></li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('pcu4q.link', pageContext)}">
								<li><a href="<webratio:Link escapeXml="true" link="pcu4q.link"/>"><bean:message key="Leaderboards"/></a></li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page12q.link', pageContext)}">
								<li class="active"><a href="<webratio:Link escapeXml="true" link="page12q.link"/>"><bean:message key="Rewards"/></a></li>
			</c:if>
	            </ul>
	            <div class="nav navbar-right user-location">
	            	<c:if test="${not(empty dau1q) and (dau1q.dataSize gt 0)}">
	<ul class="nav navbar-nav navbar-right">
		<li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">${LanguageISOCtxParam} <span class="caret"></span></a>
      <ul class="dropdown-menu">
		<li>
			<c:if test="${webratio:isTargetAccessible('ln11q', pageContext)}">
			   <c:if test="${webratio:isTargetAccessible('ln11q', pageContext)}">
	 		<a title="<bean:message key="English"/>" id="ln11q" class=" " href="<webratio:Link link="ln11q" position="index"/>" >
			<bean:message key="English"/></a>
	</c:if>
			</c:if>
		</li>
		<li>
			<c:if test="${webratio:isTargetAccessible('ln2q', pageContext)}">
			   <c:if test="${webratio:isTargetAccessible('ln2q', pageContext)}">
	 		<a title="<bean:message key="Italian"/>" id="ln2q" class=" " href="<webratio:Link link="ln2q" position="index"/>" >
			<bean:message key="Italian"/></a>
	</c:if>
			</c:if>
		</li>
      </ul>	
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">
	<bean:message key="Welcome"/> 
<c:out value="${dau1q.data.userName}"/> 
			<span class="caret"></span></a>
			<ul class="dropdown-menu">
			<c:if test="${webratio:isTargetAccessible('ln47q', pageContext)}">
				  <li> <c:if test="${webratio:isTargetAccessible('ln47q', pageContext)}">
	 		<a title="<bean:message key="Logout"/>" id="ln47q" class=" " href="<webratio:Link link="ln47q" position="index"/>" >
			<bean:message key="Logout"/></a>
	</c:if>
 </li>
			</c:if>
			</ul>
		</li>
	</ul>
</c:if>
	            </div>
			</div>
		</div>
	</nav>
<div class="container container-fixed-top-padding">
	<div class="page-header clearfix">
			<h1><bean:message key="Reward Details"/></h1>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div id="main-content" role="main">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
<div class="container_12">
			<div class="grid_4 suffix_8 alpha omega agrd_8">
	<span class="rewardTablePoints value string">
	<c:out value="${dau5q.data.title}"/>
	</span>
			</div>
				<div class="clear"></div>
			<div class="grid_4 alpha agrd_8">
	<span class=" value blob">
  <c:if test="${not (empty dau5q.data.image)}">
		<img   src="<webratio:BLOB value="${dau5q.data.image}"/>" alt="<c:out value="${dau5q.data.image.name}"/>" title="<c:out value="${dau5q.data.image.name}"/>"/> 
  </c:if>
	</span>
			</div>
			<div class="grid_8 omega agrd_16">
	<div class="row ">
	<div class="labelWrapper col-md-2">
	<label class=" header"><bean:message key="Description"/></label>
</div>
	<div class=" col-md-10">
	<span class=" value text">
  	<c:out value="${dau5q.data.description}" escapeXml="false"/>
	</span>
</div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_4 suffix_8 alpha omega agrd_8">
	<div class="row rewardTablePoints">
	<div class="labelWrapper col-md-2">
	<label class="rewardTablePoints header"><bean:message key="Needed Points"/></label>
</div>
	<div class=" col-md-10">
	<span class="rewardTablePoints value decimal">
	<fmt:formatNumber value="${dau5q.data.neededPoints}" pattern="${decimalPattern}"/>
	</span>
</div>
</div>
			</div>
				<div class="clear"></div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_3 suffix_9 alpha omega agrd_6">
	<c:if test="${webratio:evaluateCondition('cexpr1q', null, pageContext)}"><c:if test="${webratio:isTargetAccessible('ln151q', pageContext)}">
	 		<a title="<bean:message key="Get Reward"/>" id="ln151q" onclick="return ajaxRequest('<webratio:Link link="ln151q" position="index"/>', $H({pressedLink: 'ln151q', sourcePage: 'page13q', waitingWindow: $H({message: '<bean:message key="ajax.computingRequest"/>', width: 200, height: 100, duration: 1000, className: ''})}))" class="btn  btn-default " href="<webratio:Link link="ln151q" position="index"/>">							
			<bean:message key="Get Reward"/></a>
	</c:if></c:if>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
	<c:if test="${not(webratio:evaluateCondition('cexpr1q', null, pageContext))}">
<c:if test="${not(empty mssu2q) and (mssu2q.dataSize gt 0)}">
	<div class="alert alert-info ">
		<c:forEach var="current" varStatus="status" items="${mssu2q.data}">
			<c:set var="index" value="${status.index}"/>
			<p>
					<bean:message key="${current}"/>
				</p>
		</c:forEach>
	</div>
</c:if>
</c:if>
			</div>
				<div class="clear"></div>
			<div class="grid_1 prefix_11 alpha omega agrd_2">
  <div class="plain ">
    <div class="plain NoOpContentUnit">
      <table align="left">
        <tr>
           <td>
             <table>
                 <tr>
			<c:if test="${webratio:isTargetAccessible('ln158q', pageContext)}">
                 <td nowrap="nowrap">
                    <c:if test="${webratio:isTargetAccessible('ln158q', pageContext)}">
	 		<a title="<bean:message key="Go Back"/>" id="ln158q" class="btn  btn-default  link" href="<webratio:Link link="ln158q" position="index"/>" >
			<bean:message key="Go Back"/></a>
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
	<script type="application/json" class="wr-linkInfos">
		<webratio:LinkInfos page="page13q"/>
	</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page13q"/>
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
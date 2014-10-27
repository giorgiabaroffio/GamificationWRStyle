<!DOCTYPE html>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<% response.setHeader("X-UA-Compatible", "IE=edge"); %>
<webratio:Page page="page9q"/>
<html lang="${LanguageISOCtxParam}">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
	    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<base href="<%=wrBaseURI%>"/> 
		<title><bean:message key="Headquarter"/></title>
		<c:set var="bootstrap-theme" value="default"/>
		<c:set var="wrAjaxDebugLevel" value="full"/>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet" data-wr-resname="jquery-ui-style" data-wr-resver="1.9.2">
			</c:if>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-ui-style" data-wr-resver="7.2.6">
			</c:if>
	<link href="<webratio:Resource path="builtin/960_Fluid_Nestable_12.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-960gs-12">
	<link href="<webratio:Resource path="BootstrapStyle/css/community.css"/>" type="text/css" rel="stylesheet" data-wr-resname="community-css">
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
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="page9q.do">Community</a>
			</div>
			<div class="navbar-collapse collapse">		      
	            <ul class="nav navbar-nav" role="menu">
								<li><a href="<webratio:Link escapeXml="true" link="page8q.link"/>"><bean:message key="Getting Started"/></a></li>
	            </ul>
	            <div class="nav navbar-right user-location">
	            	<ul class="nav navbar-nav navbar-right">
		<li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">${LanguageISOCtxParam} <span class="caret"></span></a>
      <ul class="dropdown-menu">
		<li>
			   <a title="<bean:message key="English"/>" id="ln14q" class=" " href="<webratio:Link link="ln14q" position="index"/>" >
			<bean:message key="English"/></a>
		</li>
		<li>
			   <a title="<bean:message key="Italian"/>" id="ln6q" class=" " href="<webratio:Link link="ln6q" position="index"/>" >
			<bean:message key="Italian"/></a>
		</li>
      </ul>
    </li>
			  <li> <a title="<bean:message key="Login"/>" id="ln4q" class=" " href="<webratio:Link link="ln4q" position="index"/>" >
			<bean:message key="Login"/></a>
 </li>
	</ul>
	            </div>
			</div>
		</div>
	</nav>
<div class="container container-fixed-top-padding">
	<div class="page-header clearfix">
			<h1><bean:message key="Headquarter"/></h1>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div id="main-content" role="main">
<div class="container_12">
			<div class="grid_4 alpha agrd_8">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="HQ.rank.7Days.home"/>
		</h2>
	</div>
	<div class="panel-body">
<div class="rank-index">
	<c:choose>
	<c:when test="${not(empty hinu1q) and (hinu1q.dataSize gt 0)}">
		<c:forEach var="level1current" varStatus="level1status" items="${hinu1q.data}">
			<c:set var="level1" value="${level1status.index}" />
<c:set var="index" value="${level1+1}"/>
<c:if test="${not (empty preIndex)}">
	<c:set var="index" value="${preIndex}"/>
</c:if>
<div class="user-rank<c:if test="${index % 2 eq 1}"> alternate</c:if>">
	<c:choose>
  		<c:when test="${index lt 10}">
    		<c:set var="counter" value="1"/>
    	</c:when>
  		<c:when test="${(index ge 10) && (index lt 100)}">
    		<c:set var="counter" value="2"/>
 		 </c:when>
  		<c:when test="${(index ge 100) && (index lt 1000)}">
   			<c:set var="counter" value="3"/>
  		</c:when>
 		<c:when test="${(index ge 1000) && (index lt 10000)}">
    		<c:set var="counter" value="4"/>
  		</c:when>
  		<c:when test="${(index ge 10000) && (index lt 100000)}">
    		<c:set var="counter" value="5"/>
  		</c:when>
	</c:choose>
	<div class="photo-place place-n${counter}">
		<c:choose>
		  <c:when test="${index == 1}">
		   	<div class="place_rank first">${index}</div>
		  </c:when>
		  <c:when test="${index == 2}">
		  	<div class="place_rank second">${index}</div>
		  </c:when>
		    <c:when test="${index == 3}">
		   <div class="place_rank third">${index}</div>
		  </c:when>
	      <c:otherwise>
	     	<div class="place_rank other">${index}</div>
	      </c:otherwise>
		</c:choose>
			<a href="<webratio:Link escapeXml="true" link="ln69q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
				<c:choose>
					<c:when test="${not empty level1current.smallPhoto}">
						<img src="<webratio:BLOB value="${level1current.smallPhoto}" />"/> 
					</c:when>
					<c:otherwise>
						<img src="BootstrapStyle/img/profile_small.jpg" /> 
					</c:otherwise>
				</c:choose>
			</a>
		</div>
		<div class="title">
			<h3>
				<a href="<webratio:Link escapeXml="true" link="ln69q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
					<c:out value="${level1current.firstName}"/> <c:out value="${level1current.lastName}"/>&nbsp;
				</a>
			</h3>
		</div>
		<div class="points"><fmt:formatNumber value="${level1current.participation7Days}" pattern="${decimalPattern}"/> <bean:message key="Points"/></div>
		<!-- Badge -->
		<div class="badge-list">
	<c:forEach items="${level1current.hiulvl1qdata}" var="level2current" varStatus="level2status">
		<c:set var="level2" value="${level2status.index}" />
			<div style="display:inline-block;">
				<div class="tip">
					<c:choose>
						<c:when test="${not empty level2current.checkedImage}">
							<img src="<webratio:BLOB value="${level2current.checkedImage}"/>" alt="${level2current.title} <c:if test="${level2current.importance ne 0}">- <bean:message key="Level"/> ${level2current.importance}</c:if>" title="${level2current.title} <c:if test="${level2current.importance ne 0}">- <bean:message key="Level"/> ${level2current.importance}</c:if>"/> 
						</c:when>
						<c:otherwise>
							${level2current.title} <c:if test="${level2current.importance ne 0}">- <bean:message key="Level"/> ${level2current.importance}</c:if>
						</c:otherwise>
				    </c:choose>
				</div>
			</div>	
	</c:forEach>
		</div>
</div>
		</c:forEach> 		
 	</c:when>
	<c:otherwise>
				<c:out value="${dau4q.data.message}" escapeXml="false"/>
	</c:otherwise>
</c:choose>	
</div> 
	</div>
</div>
			</div>
			<div class="grid_4 agrd_8">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="Latest Badge"/>
		</h2>
	</div>
	<div class="panel-body">
<c:if test="${not(empty inu1q) and (inu1q.dataSize gt 0)}">
<div class="latest-badges">
	<c:forEach var="current" varStatus="status" items="${inu1q.data}">
		<c:set var="index" value="${status.index}"/>
			<div class="element <c:if test="${index mod 2 eq 0}">alternate</c:if>">
				<c:choose>
					<c:when test="${not(empty current.badgeAcquiredToUserHeadQuarter_firstName)}">
						<c:set var="level2" value="${current.badgeAcquiredToGamificationDictionary_level}"/>
						<c:set var="title2" value="Forum ${current.badgeAcquiredToGamificationDictionary_title}"/>   
					</c:when>
					<c:otherwise>
						<c:set var="level2" value="0"/>
	      				<c:set var="title2" value="Forum No badges"/>
					</c:otherwise>
				</c:choose>
				<div  style="float:left; margin-right:5px">					  <c:choose>
						<c:when test="${not empty current.badgeAcquiredToGamificationDictionary_checkedImage}">
							<img src="<webratio:BLOB value="${current.badgeAcquiredToGamificationDictionary_checkedImage}"/>" alt="<c:out value="${current.badgeAcquiredToGamificationDictionary_title}"/> - <bean:message key="Level"/> ${level2}" title="<c:out value="${current.badgeAcquiredToGamificationDictionary_title}"/> - <bean:message key="Level"/> ${level2}"/> 
						</c:when>
						<c:otherwise>
						</c:otherwise>
				     </c:choose>
				 </div>
    			<div class="title"><h3 style="font-size: 16px !important;"><c:out value="${current.badgeAcquiredToGamificationDictionary_title}"/> - <bean:message key="Level"/> ${level2}</h3></div>
   				<div class="user-info" style="font-size: 12px !important;">
   					<a href="<webratio:Link escapeXml="true" link="ln43q" position="index"/>"  title="<bean:message key="forum.goToDashboard"/>">
   						<c:set var="community_name" value="${current.badgeAcquiredToUserHeadQuarter_firstName} ${current.badgeAcquiredToUserHeadQuarter_lastName}"/>
   						<c:out value="${community_name}"/>
   					</a>
   				</div>
			</div>	
	</c:forEach>
	<p>
 		 <a title="<bean:message key="Go to ranking"/>" id="ln23q" class="btn  btn-default  btn btn-primary latest-badge" href="<webratio:Link link="ln23q" position="index"/>" >
			<bean:message key="Go to ranking"/></a>
	</p>
</div>
</c:if>
	</div>
</div>
			</div>
			<div class="grid_4 omega agrd_8">
<c:if test="${not(empty dau3q) and (dau3q.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="Getting Started"/>
		</h2>
	</div>
	<div class="panel-body">
		<div class="getting-started">
				<div class="value"><c:out value="${dau3q.data.message}" escapeXml="false"/></div>
			<p class="unit-actions">
				 <a title="<bean:message key="Getting Started"/>" id="ln33q" class="btn  btn-primary read-more" href="<webratio:Link link="ln33q" position="index"/>" >
			<bean:message key="Getting Started"/></a>
			</p>
		</div>
	</div>
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
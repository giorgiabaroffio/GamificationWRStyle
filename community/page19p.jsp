<!DOCTYPE html>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<% response.setHeader("X-UA-Compatible", "IE=edge"); %>
<webratio:Page page="page19p"/>
<html lang="${LanguageISOCtxParam}">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
	    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<base href="<%=wrBaseURI%>"/> 
		<title><bean:message key="History points"/></title>
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
			<html:form action="form_page19p.do${wrAjax ? '#!ajax=true' : ''}" styleId="page19pFormBean" enctype="multipart/form-data">
		<div class="wr-ajaxDiv" id="page19pHiddenFields">
			<html:hidden property="lastURL" styleId="lastURL_page19p"/>
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
								<li><a href="<webratio:Link escapeXml="true" link="page12q.link"/>"><bean:message key="Rewards"/></a></li>
			</c:if>
	            </ul>
	            <div class="nav navbar-right user-location">
	            	<div class="wr-ajaxDiv" id="mpage2q_customlocation_0"><div class="wr-ajaxDiv" id="mpage2q_grid_0">
<div class="wr-ajaxDiv" id="mpage2q_cell_0">
	<div class="wr-ajaxDiv" id="dau1q_0">
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
</div></div>
	            </div>
			</div>
		</div>
	</nav>
<div class="container container-fixed-top-padding">
	<div class="page-header clearfix">
			<h1><bean:message key="History points"/></h1>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div id="main-content" role="main">
			<div class="wr-ajaxDiv" id="page19p_grid_0">
<div class="container_12">
			<div class="grid_4 alpha container_4 agrd_8">
			<div class="grid_4 alpha omega agrd_8">
				<div class="wr-ajaxDiv" id="page19p_cell_0">
	<div class="wr-ajaxDiv" id="dau2p_0">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="Points"/>
		</h2>
	</div>
	<div class="panel-body">
	<div class="content">
		<div class="element-wrapper points last">
			<div class="title"><bean:message key="community.available.points"/>: <h3><fmt:formatNumber value="${dau2p.data.creditsAvailable}" pattern="${decimalPattern}"/></h3></div>
			<div class="title"><bean:message key="community.total.points"/>: <h2><fmt:formatNumber value="${dau2p.data.totalCredit}" pattern="${decimalPattern}"/></h2></div>
			<div class="title"><bean:message key="community.spent.points"/>: <h2><fmt:formatNumber value="${dau2p.data.creditsSpent}" pattern="${decimalPattern}"/></h2></div>
		</div>
 	</div>
	</div>
</div></div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_4 alpha omega agrd_8">
				<div class="wr-ajaxDiv" id="page19p_cell_13">
	<div class="wr-ajaxDiv" id="pwu5p_0">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="Rewards History"/>
		</h2>
	</div>
	<div class="panel-body">
<c:choose>
	<c:when test="${not(empty pwu5p) and (pwu5p.dataSize gt 0)}">
	   <c:forEach var="current" varStatus="status" items="${pwu5p.data}" >
		<c:set var="index" value="${status.index}"/>
		 <div class="element-wrapper">
		  <div class="title" title="${current.rewardInstanceToRewardType_title}"><h3>${current.rewardInstanceToRewardType_title}</h3></div>
		  <div class="subtitle"><fmt:formatNumber value="${current.score}" pattern="${decimalPattern}"/> <bean:message key="Points"/></div>
		  <div class="subtitle"><fmt:formatDate value="${current.date}" pattern="${timestampPattern}"/></div>
		 </div>
		</c:forEach>
		<c:if test="${pwu5p.scroller.last gt 1}">
			<div class="pagination center rank">
				<div class="pagination-links">
			    <c:choose>
			   		<c:when test="${pwu5p.scroller.current ne pwu5p.scroller.first}">
			     		<span class="pagination-links-first"><a href="<webratio:Link escapeXml="true" link="pwu5pFirst" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="pwu5pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu5pFirst', sourcePage: 'page19p'}))" >&laquo;</a></span>
			     	</c:when>
			   		<c:otherwise>
						<span class="pagination-links-first">&laquo;</span>
			      	</c:otherwise>
			     </c:choose>
			    <c:choose>
			        <c:when test="${pwu5p.scroller.current ne pwu5p.scroller.previous}">
			             <c:if test="${webratio:isTargetAccessible('pwu5pPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu5pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu5pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu5pPrevious', sourcePage: 'page19p'}))" class="  scroll" href="<webratio:Link link="pwu5pPrevious" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
			        </c:when>
				    <c:otherwise>
				        <span class="pagination-links-previous"><bean:message key="HierarchicalIndex.Previous"/></span>
				    </c:otherwise>
			    </c:choose>
			    <span class="pagination-links-pages">
			       <c:forEach var="current" varStatus="status" items="${pwu5p.scroller.blocks}">
		             <c:set var="index" value="${status.index}"/>
		             <c:choose>
		               <c:when test="${current ne pwu5p.scroller.current}">
		               	 <a class=" link number" href="<webratio:Link escapeXml="true" link="pwu5pBlock" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="pwu5pBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu5pBlock', sourcePage: 'page19p'}))">${current}</a>
		               </c:when>
		               <c:otherwise>
		                 <span class="active  number">${current}</span>
		               </c:otherwise>
		             </c:choose>
			       </c:forEach> 
			    </span>
			    <c:choose>
			         <c:when test="${pwu5p.scroller.current ne pwu5p.scroller.next}">
			               <c:if test="${webratio:isTargetAccessible('pwu5pNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu5pNext" onclick="return ajaxRequest('<webratio:Link link="pwu5pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu5pNext', sourcePage: 'page19p'}))" class="  scroll" href="<webratio:Link link="pwu5pNext" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
			         </c:when>
			         <c:otherwise>
			        <span class="pagination-links-next"><bean:message key="HierarchicalIndex.Next"/></span>
			         </c:otherwise>
			    </c:choose>
			      <c:choose>
			          <c:when test="${pwu5p.scroller.current ne pwu5p.scroller.last}">
			               <span class="pagination-links-last"><a href="<webratio:Link escapeXml="true" link="pwu5pLast" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="pwu5pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu5pLast', sourcePage: 'page19p'}))" >&raquo;</a></span>
			         </c:when>
			         <c:otherwise>
			           <span class="pagination-links-last">&raquo;</span>
			         </c:otherwise>
			     </c:choose>
			    </div>
			 </div>
		</c:if>
	</c:when>
	<c:otherwise>
		<p><bean:message key="noRewards"/></p>
	</c:otherwise>
</c:choose> 
	</div>
</div></div>
</div>
			</div>
				<div class="clear"></div>
			</div>
			<div class="grid_8 omega agrd_16">
				<div class="wr-ajaxDiv" id="page19p_cell_4">
	<div class="wr-ajaxDiv" id="page19p_grid_1">
<div class="wr-ajaxDiv" id="page19p_cell_5">
 <%     com.webratio.rtx.RTXManager mng = (com.webratio.rtx.RTXManager)application.getAttribute("com.webratio.struts.RTX"); 
		String forumUrl = mng.getConfiguration().getStringProperty("forum_detail");
		String learnUrl = mng.getConfiguration().getStringProperty("lms_detail");
		String storeUrl = mng.getConfiguration().getStringProperty("store_detail");		
 %>
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="Actions History"/>
		</h2>
	</div>
	<div class="panel-body">
    <c:forEach var="current" varStatus="status" items="${pwu20p.data}" >
	<c:set var="index" value="${status.index}"/>
		 <div class="element-wrapper">
		 <div class="title"><h3><fmt:formatNumber value="${current.score}" pattern="${decimalPattern}"/> <bean:message key="HQ.Credits"/></h3></div>
		 <div class="subtitle"><fmt:formatDate value="${current.date}" pattern="${timestampPattern}"/></div>
		<c:set var="type_area" value="${current.actionArea}"/>
		<c:set var="descr" value="${current.description}"/>
		<c:set var="name" value="${current.name}"/>
		<c:set var="link" value="${current.link}"/>
		<p><c:out value="${current.name}"/></p>
				<c:if test="${type_area eq 'Certification'}">
			<p><bean:message key="YouBecome"/><c:out value="${current.name}"/> <c:out value="${current.description}"/></p>
		</c:if>	
		<c:if test="${type_area eq 'Login'}">
			<p><bean:message key="YouGotLogin"/></p>
		</c:if>	
		<c:if test="${type_area eq 'KB'}">
			<c:set var="oid_type" value="${fn:split(current.link, '-')}"/>
			<c:if test="${name eq 'Read Article'}">
				<p><bean:message key="YouGotReadingWiki"/> <a class="forum" target="learn" href="<%=learnUrl%>${oid_type[0]}/${oid_type[1]}"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Course Passed'}">
				<p><bean:message key="YouGotCoursePassed"/> <a class="forum" target="learn" href="<%=learnUrl%>${oid_type[0]}/${oid_type[1]}"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Share on Facebook'}">
				<p><bean:message key="YouGotShareFacebook"/> <a class="forum" target="learn" href="<%=learnUrl%>${oid_type[0]}/${oid_type[1]}"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Share on GooglePlus'}">
				<p><bean:message key="YouGotShareGooglePlus"/> <a class="forum" target="learn" href="<%=learnUrl%>${oid_type[0]}/${oid_type[1]}"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Share on Twitter'}">
				<p><bean:message key="YouGotShareTwitter"/> <a class="forum" target="learn" href="<%=learnUrl%>${oid_type[0]}/${oid_type[1]}"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Classroom Training'}">
				<p><bean:message key="YouGotClassroom"/> <c:out value="${descr}"/></p>
			</c:if>
			<c:if test="${name eq 'Attend a Webinar'}">
				<p><bean:message key="YouGotWebinar"/> <c:out value="${descr}"/></p>
			</c:if>
		</c:if>
		<c:if test="${type_area eq 'Store'}">
			<c:if test="${name eq 'Download component'}">
				<p><bean:message key="YouGotDownloadStore"/> <a class="forum" target="store" href="<%=storeUrl%>${link}"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Vote component'}">
				<p><bean:message key="YouGotVoteStore"/> <a class="forum" target="store" href="<%=storeUrl%>${link}"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Publish component'}">
				<p><bean:message key="YouGotPublishStore"/> <a class="forum" target="store" href="<%=storeUrl%>${link}"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Review component'}">
				<p><bean:message key="YouGotReviewStore"/> <a class="forum" target="store" href="<%=storeUrl%>${link}"><c:out value="${descr}"/></a></p>
			</c:if>
		</c:if>
		<c:if test="${type_area eq 'Site'}">
		<c:choose>   
			<c:when test="${descr eq 'Registered'}">
				<p><bean:message key="YouGotSignUp"/></p>
			</c:when>
		<c:otherwise>
			<c:choose>  
				<c:when test="${descr eq 'Monthly Loyality Points'}">
					<p><bean:message key="YouGotMonthly"/> </p>
				</c:when>
				<c:when test="${name eq 'WebRatio Activation'}">
					<p><bean:message key="YouGotActiving"/> <c:out value="${current.description}"/></p>
				</c:when>
				<c:when test="${name eq 'WebRatio Activation Client'}">
					<p><bean:message key="YouGotActivingClient"/> <c:out value="${current.description}"/></p>
				</c:when>
			<c:otherwise>
				<p><bean:message key="YouGotsetData"/> <c:out value="${current.description}"/></p> 
			</c:otherwise> 
			</c:choose>
		</c:otherwise> 
		</c:choose>
		</c:if>
		<c:if test="${type_area eq 'Forum'}"> 
			<c:if test="${name eq 'Create a post'}">
				<p><bean:message key="YouGotPostTopic"/> <a class="forum" target="forum" href="<%=forumUrl%><c:out value="${current.link}"/>"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Answer to a post'}">
				<p><bean:message key="YouGotAnswerTopic"/> <a class="forum" target="forum"  href="<%=forumUrl%><c:out value="${current.link}"/>"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Your answer voted up'}">
				<p><bean:message key="YouGotAnswerVoteup"/> <a class="forum" target="forum" href="<%=forumUrl%><c:out value="${current.link}"/>"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Approve answer'}">
				<p><bean:message key="YouGotApproveAnswer"/> <a class="forum" target="forum"  href="<%=forumUrl%><c:out value="${current.link}"/>"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Your answer approved'}">
				<p><bean:message key="YouGotAnswerApproved"/> <a class="forum" target="forum"  href="<%=forumUrl%><c:out value="${current.link}"/>"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Your question voted up'}">
				<p><bean:message key="YouGotQuestionVoteup"/> <a class="forum" target="forum" href="<%=forumUrl%><c:out value="${current.link}"/>"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Post subscription'}">
				<p><bean:message key="YouGotPostSubscription"/> <a class="forum" target="forum" href="<%=forumUrl%><c:out value="${current.link}"/>"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Share on Facebook'}">
				<p><bean:message key="YouGotShareFacebook"/> <a class="forum" target="forum" href="<%=forumUrl%><c:out value="${current.link}"/>"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Share on GooglePlus'}">
				<p><bean:message key="YouGotShareGooglePlus"/> <a class="forum" target="forum" href="<%=forumUrl%><c:out value="${current.link}"/>"><c:out value="${descr}"/></a></p>
			</c:if>
			<c:if test="${name eq 'Share on Twitter'}">
				<p><bean:message key="YouGotShareTwitter"/> <a class="forum" target="forum" href="<%=forumUrl%><c:out value="${current.link}"/>"><c:out value="${descr}"/></a></p>
			</c:if>
		</c:if>	
		</div>
    </c:forEach>
	<c:if test="${pwu20p.scroller.of gt 5}">
						<div class="pagination left">
							<div class="pagination-links">
			<c:if test="${webratio:isTargetAccessible('pwu20pFirst', pageContext)}">
							    <c:choose>
							   		<c:when test="${pwu20p.scroller.current ne pwu20p.scroller.first}">
							     		<span class="pagination-links-first"><a href="<webratio:Link escapeXml="true" link="pwu20pFirst" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="pwu20pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu20pFirst', sourcePage: 'page19p'}))" >«</a></span>
							     	</c:when>
							   		<c:otherwise>
										<span class="pagination-links-first">«</span>
							      	</c:otherwise>
							     </c:choose>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('pwu20pPrevious', pageContext)}">
							    <c:choose>
							        <c:when test="${pwu20p.scroller.current ne pwu20p.scroller.previous}">
							             <c:if test="${webratio:isTargetAccessible('pwu20pPrevious', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu20pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu20pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu20pPrevious', sourcePage: 'page19p'}))" class="  scroll" href="<webratio:Link link="pwu20pPrevious" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							        </c:when>
							    <c:otherwise>
							        <span class="pagination-links-previous"><bean:message key="HierarchicalIndex.Previous"/></span>
							    </c:otherwise>
							    </c:choose>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('pwu20pBlock', pageContext)}">
							       <span class="pagination-links-pages">
							       <c:forEach var="current" varStatus="status" items="${pwu20p.scroller.blocks}">
							             <c:set var="index" value="${status.index}"/>
							             <c:choose>
							               <c:when test="${current ne pwu20p.scroller.current}">
							                   <a class=" link number" href="<webratio:Link escapeXml="true" link="pwu20pBlock" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="pwu20pBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu20pBlock', sourcePage: 'page19p'}))">${current}</a>
							               </c:when>
							               <c:otherwise>
							                 <span class="active  number">${current}</span>
							              </c:otherwise>
							             </c:choose>
							      </c:forEach> 
							      </span>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('pwu20pNext', pageContext)}">
							    <c:choose>
							         <c:when test="${pwu20p.scroller.current ne pwu20p.scroller.next}">
							               <c:if test="${webratio:isTargetAccessible('pwu20pNext', pageContext)}">
	 		<a title="<bean:message key="PowerIndex.Next"/>" id="pwu20pNext" onclick="return ajaxRequest('<webratio:Link link="pwu20pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu20pNext', sourcePage: 'page19p'}))" class="  scroll" href="<webratio:Link link="pwu20pNext" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
	</c:if>
							         </c:when>
							         <c:otherwise>
							        <span class="pagination-links-next"><bean:message key="HierarchicalIndex.Next"/></span>
							         </c:otherwise>
							    </c:choose>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('pwu20pLast', pageContext)}">
							      <c:choose>
							          <c:when test="${pwu20p.scroller.current ne pwu20p.scroller.last}">
							               <span class="pagination-links-last"><a href="<webratio:Link escapeXml="true" link="pwu20pLast" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="pwu20pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu20pLast', sourcePage: 'page19p'}))" >»</a></span>
							         </c:when>
							         <c:otherwise>
							           <span class="pagination-links-last">»</span>
							         </c:otherwise>
							     </c:choose>
			</c:if>
								</div>
							</div>
					</c:if>
	</div>
</div></div>
</div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page19p_cell_25">
	<div class="wr-ajaxDiv" id="page19p_grid_2">
<div class="wr-ajaxDiv" id="page19p_cell_26">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="Rewards"/>
		</h2>
	</div>
	<div class="panel-body">
<c:choose>
	<c:when test="${not(empty pwu10p) and (pwu10p.dataSize gt 0)}">
 	<div class="reward-list">
  	<p><bean:message key="community.possible.reward"/></p>
  	<div class="photo left">
  	 <c:forEach var="current" varStatus="status" items="${pwu10p.data}" begin="0" end="0" >
		<c:set var="index" value="${status.index}"/>
			<img src="<webratio:BLOB value="${current.image}"/>"/>
	</c:forEach>
  	</div>
  	<div class="rewards">
  	 <c:forEach var="current" varStatus="status" items="${pwu10p.data}" begin="0" end="0" >
		<c:set var="index" value="${status.index}"/>
			<h1>${current.title} - <fmt:formatNumber value="${current.neededPoints}" pattern="${decimalPattern}"/> <bean:message key="Points"/><h1>
	</c:forEach>
  	</div>
  </div>
  </c:when>
</c:choose> 
	 <c:if test="${webratio:isTargetAccessible('ln159q', pageContext)}">
	 		<a title="<bean:message key="See Your Rewards"/>" id="ln159q" class="btn  btn-default " href="<webratio:Link link="ln159q" position="index"/>" >
			<bean:message key="See Your Rewards"/></a>
	</c:if>
	</div>
</div></div>
</div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_1 prefix_11 alpha omega agrd_2">
				<div class="wr-ajaxDiv" id="page19p_cell_49">
	<div class="wr-ajaxDiv" id="gctu1p_0">
  <div class="plain ">
    <div class="plain NoOpContentUnit">
      <table align="left">
        <tr>
           <td>
             <table>
                 <tr>
			<c:if test="${webratio:isTargetAccessible('ln112p', pageContext)}">
                 <td nowrap="nowrap">
                    <c:if test="${webratio:isTargetAccessible('ln112p', pageContext)}">
	 		<a title="<bean:message key="Go Back"/>" id="ln112p" class="btn  btn-default read-more link" href="<webratio:Link link="ln112p" position="index"/>" >
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
		<webratio:LinkInfos page="page19p"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page19p" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page19p"/>
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
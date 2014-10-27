<!DOCTYPE html>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<% response.setHeader("X-UA-Compatible", "IE=edge"); %>
<webratio:Page page="page2o"/>
<html lang="${LanguageISOCtxParam}">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
	    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<base href="<%=wrBaseURI%>"/> 
		<title><bean:message key="HQ.UserDashboard.Public"/></title>
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
				<a class="navbar-brand" href="pcu1o.do">My Dashboard</a>
			</div>
			<div class="navbar-collapse collapse">		      
	            <ul class="nav navbar-nav" role="menu">
			<c:if test="${webratio:isTargetAccessible('page5p.link', pageContext)}">
								<li><a href="<webratio:Link escapeXml="true" link="page5p.link"/>"><bean:message key="Getting Started"/></a></li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('pcu4q.link', pageContext)}">
								<li class="active"><a href="<webratio:Link escapeXml="true" link="pcu4q.link"/>"><bean:message key="Leaderboards"/></a></li>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('page12q.link', pageContext)}">
								<li><a href="<webratio:Link escapeXml="true" link="page12q.link"/>"><bean:message key="Rewards"/></a></li>
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
			<h1><bean:message key="HQ.UserDashboard.Public"/></h1>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div id="main-content" role="main">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
<div class="container_12">
			<div class="grid_4 alpha container_4 agrd_8">
			<div class="grid_4 alpha omega agrd_8">
<div class="profile">
<div id="profile"  class="box compact">
	<div class="box-title">
		<c:set var="username" value="${miu6odau6q.data.firstName} ${miu6odau6q.data.lastName}"/>
    	<h2 style="color:black !important">${username}&nbsp;</h2>
    	<div class="photo">
			<c:choose>
				<c:when test="${not empty miu6odau6q.data.bigPhoto}">
					<img src="<webratio:BLOB value="${miu6odau6q.data.bigPhoto}" />" alt="${username}"/> 
				</c:when>
				<c:otherwise>
					<img src="BootstrapStyle/img/profile_big.jpg" title="${username}" alt="${username}" />
				</c:otherwise>
			</c:choose>
		</div>
		<div class="information">
			<c:if test="${not empty(miu6odau6q.data.companyName)}">
						<bean:message key="HQ.YourProfile.Work"/> <bean:message key="HQ.YourProfile.At"/> <c:out value="${miu6odau6q.data.companyName}"/>
			</c:if>
			<br/>
			<c:if test="${not empty(miu6odau6q.data.city)}">
				<c:out value="${miu6odau6q.data.city}"/>
			</c:if>
			<c:if test="${not empty(miu6odau6q.data.country)}">
				<c:if test="${not empty(miu6odau6q.data.city)}">, </c:if>
				<c:out value="${miu6odau6q.data.country}"/>
			</c:if>
		</div>
		<div class="important-badge">
 			<c:forEach var="current" varStatus="status" items="${miu6omdu3q.data}">
				<c:set var="index" value="${status.index}"/>
				<div class="badge-big">
					<div class="tip">
					  <c:choose>
						<c:when test="${not empty current.HDCheckedImage}">
							<img src="<webratio:BLOB value="${current.HDCheckedImage}"/>" alt="${current.title} <c:if test="${current.importance ne 0}">- <bean:message key="Level"/> ${current.importance}</c:if>" title="${current.title} <c:if test="${current.importance ne 0}">- <bean:message key="Level"/> ${current.importance}</c:if>"/> 
						</c:when>
						<c:otherwise>
							${current.title} <c:if test="${current.importance ne 0}">- <bean:message key="Level"/> ${current.importance}</c:if>
						</c:otherwise>
				     </c:choose>
					</div>
				</div>
			</c:forEach>
			<c:if test="${webratio:isTargetAccessible('miu6oln282q', pageContext)}">
<c:if test="${webratio:evaluateCondition('miu6ocexpr4q', null, pageContext)}">
		  		<p> <c:if test="${webratio:evaluateCondition('miu6ocexpr4q', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('miu6oln282q', pageContext)}">
	 		<a title="<bean:message key="HQ.YourBadges"/>" id="miu6oln282q" class="  read-more linkColorBlue" href="<webratio:Link link="miu6oln282q" position="index"/>" >
			<bean:message key="HQ.YourBadges"/></a>
	</c:if></c:if>
 </p>
</c:if>
			</c:if>
		</div>
	</div>
</div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_4 alpha omega agrd_8">
	<c:if test="${webratio:evaluateCondition('miu6ocexpr4q', null, pageContext)}">
<!--CREDITS BOX-->
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="Points"/>
		</h2>
	</div>
	<div class="panel-body">
<div class="credit-box">
    <c:forEach var="current" varStatus="status" items="${miu6omdu2q.data}" >
		<c:set var="index" value="${status.index}"/>
    	<h3><bean:message key="HQ.TotalCredits"/> <strong><fmt:formatNumber value="${current.actionToUserHeadQuarter_totalCredit}" pattern="${decimalPattern}"/></strong></h3>
		<c:if test="${current.actionToUserHeadQuarter_OID eq UserCtxParam}">
		<p><bean:message key="HQ.YourLastAction"/><br/>
			<strong><fmt:formatNumber value="${current.score}" pattern="${decimalPattern}"/> <bean:message key="HQ.Credits"/></strong>
			<fmt:formatDate value="${current.date}" pattern="${timestampPattern}"/>
		</p>
		<p>
			<c:out value="${current.name}"/>
		</p>
			</c:if>	
    </c:forEach>
			<c:if test="${webratio:isTargetAccessible('miu6oln278q', pageContext)}">
<c:if test="${webratio:evaluateCondition('miu6ocexpr4q', null, pageContext)}">
   			<p> <c:if test="${webratio:evaluateCondition('miu6ocexpr4q', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('miu6oln278q', pageContext)}">
	 		<a title="<bean:message key="Credit history"/>" id="miu6oln278q" class="btn  btn-default  read-more" href="<webratio:Link link="miu6oln278q" position="index"/>" >
			<bean:message key="Credit history"/></a>
	</c:if></c:if>
 </p>
</c:if>
			</c:if>
	</div>
	</div>
</div></c:if>
			</div>
				<div class="clear"></div>
			</div>
			<div class="grid_4 agrd_8">
<div id="participation-box">
<c:if test="${not(webratio:evaluateCondition('miu6ocexpr6q', null, pageContext))}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="HQ.Ranking7Days"/>
		</h2>
	</div>
	<div class="panel-body">
	<c:choose>
		<c:when test="${not(empty miu6ohinu14q) and (miu6ohinu14q.dataSize gt 0)}">
		<c:set var="currentUser" value="${not (empty UserCtxParam) and UserCtxParam eq miu6ohinu14q.data[0].OID}"/>
			<p class="short-user-title">
					<c:choose>
						<c:when test="${currentUser}">
							<bean:message key="HQ.YouAre"/>
						</c:when>
						<c:otherwise>
							${miu6ohinu14q.data[0].firstName} ${miu6ohinu14q.data[0].lastName}
							<bean:message key="HQ.is"/>
						</c:otherwise>
					</c:choose>
				<strong>${miu6ohinu14q.scroller.from} <bean:message key="HQ.Of"/> ${miu6ohinu14q.scroller.last}</strong></p>
			<div class="rank-index">
			    <c:choose>
			      <c:when test="${not currentUser}">
			        <c:set var="upEnd" value="${1}"/>
					<c:set var="downEnd" value="${1}"/>
			      </c:when>
			      <c:otherwise>
			        <c:set var="upEnd" value="${0}"/>
					<c:set var="downEnd" value="${0}"/>
			      </c:otherwise>
			    </c:choose>
				<c:choose>
				  <c:when test="${miu6ohinu14q.scroller.current eq miu6ohinu14q.scroller.first}">
				    <c:set var="upEnd" value="${-1}"/>
				    <c:choose>
				      <c:when test="${not currentUser}">
				        <c:set var="downEnd" value="${3}"/>
				      </c:when>
				      <c:otherwise>
				        <c:set var="downEnd" value="${1}"/>
				      </c:otherwise>
				    </c:choose>
				  </c:when>
				  <c:when test="${miu6ohinu14q.scroller.current eq miu6ohinu14q.scroller.last}">
				    <c:choose>
				      <c:when test="${not currentUser}">
				        <c:set var="upEnd" value="${3}"/>
				      </c:when>
				      <c:otherwise>
				        <c:set var="upEnd" value="${1}"/>
				      </c:otherwise>
				    </c:choose>
				  	<c:set var="downEnd" value="${-1}"/>
				  </c:when>
				  <c:when test="${not currentUser && miu6ohinu14q.scroller.current eq (miu6ohinu14q.scroller.first + 1)}">
				    <c:set var="upEnd" value="${0}"/>
				  	<c:set var="downEnd" value="${2}"/>
				  </c:when>
				  <c:when test="${not currentUser && miu6ohinu14q.scroller.current eq (miu6ohinu14q.scroller.last - 1)}">
				    <c:set var="upEnd" value="${2}"/>
				  	<c:set var="downEnd" value="${0}"/>
				  </c:when>
				</c:choose>
				<c:if test="${not(empty miu6ohinu15q) and (miu6ohinu15q.dataSize gt 0) and upEnd ge 0}">
					<c:forEach var="current" varStatus="level1status" items="${miu6ohinu15q.data}" end="${upEnd}">
						<c:set var="level1" value="${upEnd - level1status.index}" />
						<c:set var="level1current" value="${miu6ohinu15q.data[upEnd - level1status.index]}"/>
						<c:set var="preIndex" value="${miu6ohinu14q.scroller.from - 1 - upEnd + level1status.index}"/>
						<c:if test="${preIndex le 0}">
							<c:set var="preIndex" value="1"/>	
							<c:set var="level1current" value="${miu6ohinu15q.data[0]}"/>
							<c:set var="level1" value="0"/>
						</c:if>
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
			<a href="<webratio:Link escapeXml="true" link="miu6oln287q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
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
				<a href="<webratio:Link escapeXml="true" link="miu6oln287q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
					<c:out value="${level1current.firstName}"/> <c:out value="${level1current.lastName}"/>&nbsp;
				</a>
			</h3>
		</div>
		<div class="points"><fmt:formatNumber value="${level1current.participation7Days}" pattern="${decimalPattern}"/> <bean:message key="Points"/></div>
		<!-- Badge -->
		<div class="badge-list">
	<c:forEach items="${level1current.miu6ohiulvl15qdata}" var="level2current" varStatus="level2status">
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
				</c:if>
				<c:set var="preIndex"/>
				<c:forEach var="level1current" varStatus="level1status" items="${miu6ohinu14q.data}">
					<c:set var="level1" value="${level1status.index}" />
<c:set var="index" value="${level1+1}"/>
<c:if test="${not (empty miu6ohinu14q.scroller)}">
	<c:set var="index" value="${miu6ohinu14q.scroller.from + level1}"/>
</c:if>
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
			<a href="<webratio:Link escapeXml="true" link="miu6oln286q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
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
				<a href="<webratio:Link escapeXml="true" link="miu6oln286q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
					<c:out value="${level1current.firstName}"/> <c:out value="${level1current.lastName}"/>&nbsp;
				</a>
			</h3>
		</div>
		<div class="points"><fmt:formatNumber value="${level1current.participation7Days}" pattern="${decimalPattern}"/> <bean:message key="Points"/></div>
		<!-- Badge -->
		<div class="badge-list">
	<c:forEach items="${level1current.miu6ohiulvl14qdata}" var="level2current" varStatus="level2status">
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
				<c:if test="${not(empty miu6ohinu16q) and (miu6ohinu16q.dataSize gt 0) and downEnd ge 0}">
					<c:forEach var="level1current" varStatus="level1status" items="${miu6ohinu16q.data}" end="${downEnd}">
						<c:set var="level1" value="${level1status.index}" />
						<c:set var="preIndex" value="${miu6ohinu14q.scroller.from + 1 + level1}"/>
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
			<a href="<webratio:Link escapeXml="true" link="miu6oln288q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
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
				<a href="<webratio:Link escapeXml="true" link="miu6oln288q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
					<c:out value="${level1current.firstName}"/> <c:out value="${level1current.lastName}"/>&nbsp;
				</a>
			</h3>
		</div>
		<div class="points"><fmt:formatNumber value="${level1current.participation7Days}" pattern="${decimalPattern}"/> <bean:message key="Points"/></div>
		<!-- Badge -->
		<div class="badge-list">
	<c:forEach items="${level1current.miu6ohiulvl16qdata}" var="level2current" varStatus="level2status">
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
				</c:if>
				<c:set var="preIndex"/>
			</div>
			<c:if test="${currentUser}">
				<p>
				   <c:if test="${webratio:isTargetAccessible('miu6oln280q', pageContext)}">
	 		<a title="<bean:message key="Go to monthly"/>" id="miu6oln280q" class="btn  btn-default  read-more" href="<webratio:Link link="miu6oln280q" position="index"/>" >
			<bean:message key="Go to monthly"/></a>
	</c:if>
				</p>
			</c:if>
			<div class="clear">&nbsp;</div>
		</c:when>
	<c:otherwise>
			<p><c:out value="${miu6odau8q.data.message}"/></p>
	</c:otherwise>
	</c:choose>
	</div>
</div></c:if>
<c:if test="${webratio:evaluateCondition('miu6ocexpr6q', null, pageContext)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="HQ.rank.7Days"/>
		</h2>
	</div>
	<div class="panel-body">
	<c:choose>
		<c:when test="${not(empty miu6ohinu4q) and (miu6ohinu4q.dataSize gt 0)}">
			<div class="rank-index">
			<c:set var="currentUser" value="${not (empty UserCtxParam) and UserCtxParam eq miu6odau6q.data.OID }"/>
		<c:choose>
			      <c:when test="${not currentUser}">
						<c:set var="upEnd" value="${3}"/>
						<c:set var="downEnd" value="${1}"/>
			      </c:when>
			      <c:otherwise>
			        <c:set var="upEnd" value="${1}"/>
					<c:set var="downEnd" value="${1}"/>
			      </c:otherwise>
			    </c:choose>
			<c:forEach var="level1current" varStatus="level1status" items="${miu6ohinu4q.data}" begin="${downEnd-1}" end="${upEnd+1}">
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
			<a href="<webratio:Link escapeXml="true" link="miu6oln284q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
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
				<a href="<webratio:Link escapeXml="true" link="miu6oln284q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
					<c:out value="${level1current.firstName}"/> <c:out value="${level1current.lastName}"/>&nbsp;
				</a>
			</h3>
		</div>
		<div class="points"><fmt:formatNumber value="${level1current.participation7Days}" pattern="${decimalPattern}"/> <bean:message key="Points"/></div>
		<!-- Badge -->
		<div class="badge-list">
	<c:forEach items="${level1current.miu6ohiulvl4qdata}" var="level2current" varStatus="level2status">
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
			</div><div class="clear">&nbsp;</div>
		</c:when>
		<c:otherwise>
				<c:out value="${miu6odau8q.data.message}" escapeXml="false"/> 
		</c:otherwise>
	</c:choose>
	</div>
</div></c:if>
</div>
			</div>
			<div class="grid_4 omega agrd_8">
<div id="reputation-box">
<c:if test="${not(webratio:evaluateCondition('miu6ocexpr5q', null, pageContext))}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="HQ.RankingOverall"/>
		</h2>
	</div>
	<div class="panel-body">
	<c:choose>
		<c:when test="${not(empty miu6ohinu17q) and (miu6ohinu17q.dataSize gt 0)}">
		<c:set var="currentUser" value="${not (empty UserCtxParam) and UserCtxParam eq miu6ohinu17q.data[0].OID}"/>
			<p class="short-user-title">
					<c:choose>
						<c:when test="${currentUser}">
							<bean:message key="HQ.YouAre"/>
						</c:when>
						<c:otherwise>
							${miu6ohinu17q.data[0].firstName} ${miu6ohinu17q.data[0].lastName}
							<bean:message key="HQ.is"/>
						</c:otherwise>
					</c:choose>
				<strong>${miu6ohinu17q.scroller.from} <bean:message key="HQ.Of"/> ${miu6ohinu17q.scroller.last}</strong></p>
			<div class="rank-index">
			    <c:set var="upEnd" value="${0}"/>
				<c:set var="downEnd" value="${0}"/>
				<c:choose>
				  <c:when test="${miu6ohinu17q.scroller.current eq miu6ohinu17q.scroller.first}">
				    <c:set var="upEnd" value="${-1}"/>
				    <c:set var="downEnd" value="${1}"/>
				  </c:when>
				  <c:when test="${miu6ohinu17q.scroller.current eq miu6ohinu17q.scroller.last}">
				    <c:set var="upEnd" value="${1}"/>
				  	<c:set var="downEnd" value="${-1}"/>
				  </c:when>
				</c:choose>
				<c:if test="${not(empty miu6ohinu18q) and (miu6ohinu18q.dataSize gt 0) and upEnd ge 0}">
					<c:forEach var="current" varStatus="level1status" items="${miu6ohinu18q.data}" end="${upEnd}">
						<c:set var="level1" value="${upEnd - level1status.index}" />
						<c:set var="level1current" value="${miu6ohinu18q.data[upEnd - level1status.index]}"/>
						<c:set var="preIndex" value="${miu6ohinu17q.scroller.from - 1 - upEnd + level1status.index}"/>
						<c:if test="${preIndex le 0}">
							<c:set var="preIndex" value="1"/>	
							<c:set var="level1current" value="${miu6ohinu18q.data[0]}"/>
							<c:set var="level1" value="0"/>
						</c:if>
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
			<a href="<webratio:Link escapeXml="true" link="miu6oln290q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
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
				<a href="<webratio:Link escapeXml="true" link="miu6oln290q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
					<c:out value="${level1current.firstName}"/> <c:out value="${level1current.lastName}"/>&nbsp;
				</a>
			</h3>
		</div>
		<div class="points"><fmt:formatNumber value="${level1current.participation}" pattern="${decimalPattern}"/> <bean:message key="Points"/></div>
		<!-- Badge -->
		<div class="badge-list">
	<c:forEach items="${level1current.miu6ohiulvl18qdata}" var="level2current" varStatus="level2status">
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
				</c:if>
				<c:set var="preIndex"/>
				<c:forEach var="level1current" varStatus="level1status" items="${miu6ohinu17q.data}">
					<c:set var="level1" value="${level1status.index}" />
<c:set var="index" value="${level1+1}"/>
<c:if test="${not (empty miu6ohinu17q.scroller)}">
	<c:set var="index" value="${miu6ohinu17q.scroller.from + level1}"/>
</c:if>
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
			<a href="<webratio:Link escapeXml="true" link="miu6oln289q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
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
				<a href="<webratio:Link escapeXml="true" link="miu6oln289q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
					<c:out value="${level1current.firstName}"/> <c:out value="${level1current.lastName}"/>&nbsp;
				</a>
			</h3>
		</div>
		<div class="points"><fmt:formatNumber value="${level1current.participation}" pattern="${decimalPattern}"/> <bean:message key="Points"/></div>
		<!-- Badge -->
		<div class="badge-list">
	<c:forEach items="${level1current.miu6ohiulvl17qdata}" var="level2current" varStatus="level2status">
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
				<c:if test="${not(empty miu6ohinu19q) and (miu6ohinu19q.dataSize gt 0) and downEnd ge 0}">
					<c:forEach var="level1current" varStatus="level1status" items="${miu6ohinu19q.data}" end="${downEnd}">
						<c:set var="level1" value="${level1status.index}" />
						<c:set var="preIndex" value="${miu6ohinu17q.scroller.from + 1 + level1}"/>
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
			<a href="<webratio:Link escapeXml="true" link="miu6oln291q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
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
				<a href="<webratio:Link escapeXml="true" link="miu6oln291q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
					<c:out value="${level1current.firstName}"/> <c:out value="${level1current.lastName}"/>&nbsp;
				</a>
			</h3>
		</div>
		<div class="points"><fmt:formatNumber value="${level1current.participation}" pattern="${decimalPattern}"/> <bean:message key="Points"/></div>
		<!-- Badge -->
		<div class="badge-list">
	<c:forEach items="${level1current.miu6ohiulvl19qdata}" var="level2current" varStatus="level2status">
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
				</c:if>
				<c:set var="preIndex"/>
			</div>
			<c:if test="${currentUser}">
				<p>
				   <c:if test="${webratio:isTargetAccessible('miu6oln281q', pageContext)}">
	 		<a title="<bean:message key="Go to participation"/>" id="miu6oln281q" class="btn  btn-default  read-more" href="<webratio:Link link="miu6oln281q" position="index"/>" >
			<bean:message key="Go to participation"/></a>
	</c:if>
				</p>
			</c:if>
			<div class="clear">&nbsp;</div>
		</c:when>
	<c:otherwise>
			<p><bean:message key="HQ.RankNoResults"/></p>
	</c:otherwise>
	</c:choose>
	</div>
</div></c:if>
<c:if test="${webratio:evaluateCondition('miu6ocexpr5q', null, pageContext)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="HQ.rank.overall"/>
		</h2>
	</div>
	<div class="panel-body">
	<c:choose>
		<c:when test="${not(empty miu6ohinu13q) and (miu6ohinu13q.dataSize gt 0)}">
			<div class="rank-index">
			<c:set var="currentUser" value="${not (empty UserCtxParam) and UserCtxParam eq miu6odau6q.data.OID }"/>
		<c:choose>
			      <c:when test="${not currentUser}">
						<c:set var="upEnd" value="${1}"/>
						<c:set var="downEnd" value="${1}"/>
			      </c:when>
			      <c:otherwise>
			        <c:set var="upEnd" value="${1}"/>
					<c:set var="downEnd" value="${1}"/>
			      </c:otherwise>
			    </c:choose>
			<c:forEach var="level1current" varStatus="level1status" items="${miu6ohinu13q.data}" begin="${downEnd-1}" end="${upEnd+1}">
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
			<a href="<webratio:Link escapeXml="true" link="miu6oln285q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
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
				<a href="<webratio:Link escapeXml="true" link="miu6oln285q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
					<c:out value="${level1current.firstName}"/> <c:out value="${level1current.lastName}"/>&nbsp;
				</a>
			</h3>
		</div>
		<div class="points"><fmt:formatNumber value="${level1current.participation}" pattern="${decimalPattern}"/> <bean:message key="Points"/></div>
		<!-- Badge -->
		<div class="badge-list">
	<c:forEach items="${level1current.miu6ohiulvl13qdata}" var="level2current" varStatus="level2status">
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
			</div><div class="clear">&nbsp;</div>
		</c:when>
		<c:otherwise>
				<p><bean:message key="HQ.RankNoResults"/></p>
		</c:otherwise>
	</c:choose>
	</div>
</div></c:if>
</div>
			</div>
				<div class="clear"></div>
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
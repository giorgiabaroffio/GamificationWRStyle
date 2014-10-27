<!DOCTYPE html>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<% response.setHeader("X-UA-Compatible", "IE=edge"); %>
<webratio:Page page="page7p"/>
<html lang="${LanguageISOCtxParam}">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
	    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<base href="<%=wrBaseURI%>"/> 
		<title><bean:message key="Leaderboards"/></title>
		<c:set var="bootstrap-theme" value="default"/>
		<c:set var="wrAjaxDebugLevel" value="full"/>
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet" data-wr-resname="jquery-ui-style" data-wr-resver="1.9.2">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-ui-style" data-wr-resver="7.2.6">
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
			<html:form action="form_page7p.do${wrAjax ? '#!ajax=true' : ''}" styleId="page7pFormBean" enctype="multipart/form-data">
		<div class="wr-ajaxDiv" id="page7pHiddenFields">
			<html:hidden property="lastURL" styleId="lastURL_page7p"/>
				<input type="hidden" name="ln88p" value="<webratio:Link link="ln88p"/>">
					<input type="hidden" name="ln88p_sr" value="<webratio:Link link="ln88p" selectiveRefresh="true"/>">
				<input type="hidden" name="ln89p" value="<webratio:Link link="ln89p"/>">
					<input type="hidden" name="ln89p_sr" value="<webratio:Link link="ln89p" selectiveRefresh="true"/>">
				<input type="hidden" name="ln90p" value="<webratio:Link link="ln90p"/>">
					<input type="hidden" name="ln90p_sr" value="<webratio:Link link="ln90p" selectiveRefresh="true"/>">
				<input type="hidden" name="ln3o" value="<webratio:Link link="ln3o"/>">
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
								<li class="active"><a href="<webratio:Link escapeXml="true" link="pcu4q.link"/>"><bean:message key="Leaderboards"/></a></li>
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
			<h1><bean:message key="Leaderboards"/></h1>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div id="main-content" role="main">
			<div class="wr-ajaxDiv" id="page7p_grid_0">
<div class="container_12">
			<div class="grid_9 alpha agrd_18">
				<div class="wr-ajaxDiv" id="page7p_cell_0">
	<div class="wr-ajaxDiv" id="page7p_grid_1">
<div class="wr-ajaxDiv" id="page7p_cell_1">
	<div class="wr-ajaxDiv" id="page7p_grid_2">
<div class="container_12">
			<div class="grid_6 alpha agrd_9">
				<div class="wr-ajaxDiv" id="page7p_cell_2">
	<div class="wr-ajaxDiv" id="page7p_grid_3">
<div class="wr-ajaxDiv" id="page7p_cell_3">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="HQ.Ranking7Days"/>
		</h2>
	</div>
	<div class="panel-body">
<c:choose>
	<c:when test="${not(empty hinu3q) and (hinu3q.dataSize gt 0)}">
		<div class="rank-index">
		<c:forEach var="level1current" varStatus="level1status" items="${hinu3q.data}">
			<c:set var="level1" value="${level1status.index}" />
<c:set var="index" value="${level1+1}"/>
<c:if test="${not (empty hinu3q.scroller)}">
	<c:set var="index" value="${hinu3q.scroller.from + level1}"/>
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
			<a href="<webratio:Link escapeXml="true" link="ln71q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
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
				<a href="<webratio:Link escapeXml="true" link="ln71q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
					<c:out value="${level1current.firstName}"/> <c:out value="${level1current.lastName}"/>&nbsp;
				</a>
			</h3>
		</div>
		<div class="points"><fmt:formatNumber value="${level1current.participation7Days}" pattern="${decimalPattern}"/> <bean:message key="Points"/></div>
		<!-- Badge -->
		<div class="badge-list">
	<c:forEach items="${level1current.hiulvl3qdata}" var="level2current" varStatus="level2status">
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
		</div>
		<div class="clear">&nbsp;</div>
		<c:if test="${hinu3q.scroller.last gt 1}">
			<div class="pagination center rank">
				<div class="pagination-links">
			    <c:choose>
			   		<c:when test="${hinu3q.scroller.current ne hinu3q.scroller.first}">
			     		<span class="pagination-links-first"><a href="<webratio:Link escapeXml="true" link="hinu3qFirst" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="hinu3qFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'hinu3qFirst', sourcePage: 'page7p'}))" >&laquo;</a></span>
			     	</c:when>
			   		<c:otherwise>
						<span class="pagination-links-first">&laquo;</span>
			      	</c:otherwise>
			     </c:choose>
			    <c:choose>
			        <c:when test="${hinu3q.scroller.current ne hinu3q.scroller.previous}">
			             <c:if test="${webratio:isTargetAccessible('hinu3qPrevious', pageContext)}">
	 		<a title="<bean:message key="HierarchicalIndex.Previous"/>" id="hinu3qPrevious" onclick="return ajaxRequest('<webratio:Link link="hinu3qPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'hinu3qPrevious', sourcePage: 'page7p'}))" class="  scroll" href="<webratio:Link link="hinu3qPrevious" position="index"/>">							
			<bean:message key="HierarchicalIndex.Previous"/></a>
	</c:if>
			        </c:when>
				    <c:otherwise>
				        <span class="pagination-links-previous"><bean:message key="HierarchicalIndex.Previous"/></span>
				    </c:otherwise>
			    </c:choose>
			    <span class="pagination-links-pages">
			        <c:if test="${hinu3q.scroller.current eq 2}">
	                	<c:set var="start" value="${hinu3q.scroller.current-2}"/>
	                    <c:set var="stop" value="${hinu3q.scroller.current+2}"/> 
	                </c:if>
	                <c:if test="${hinu3q.scroller.current eq 1}">
	                	<c:set var="start" value="${hinu3q.scroller.current-1}"/>
	                    <c:set var="stop" value="${hinu3q.scroller.current+3}"/> 
	                </c:if>
	                <c:if test="${hinu3q.scroller.current gt 2}">
	                	<c:choose>  
	                    	<c:when test="${(hinu3q.scroller.last-hinu3q.scroller.current) le 2}">
	                        	<c:set var="start" value="${hinu3q.scroller.current-3}"/>
	                            <c:set var="stop" value="${hinu3q.scroller.current+2}"/>
	                        </c:when>
	                        <c:otherwise>
	                        	<c:set var="start" value="${hinu3q.scroller.current-3}"/>
	                            <c:set var="stop" value="${hinu3q.scroller.current+1}"/>
	                        </c:otherwise>
	                    </c:choose>
	                 </c:if>
			       	<c:forEach var="current" varStatus="status" items="${hinu3q.scroller.blocks}" begin="${start}" end="${stop}">
		             <c:set var="index" value="${status.index}"/>
		             <c:choose>
		               <c:when test="${current ne hinu3q.scroller.current}">
		               	 <a class=" link number" href="<webratio:Link escapeXml="true" link="hinu3qBlock" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="hinu3qBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'hinu3qBlock', sourcePage: 'page7p'}))">${current}</a>
		               </c:when>
		               <c:otherwise>
		                 <span class="active  number">${current}</span>
		               </c:otherwise>
		             </c:choose>
			       </c:forEach> 
			    </span>
			    <c:choose>
			         <c:when test="${hinu3q.scroller.current ne hinu3q.scroller.next}">
			               <c:if test="${webratio:isTargetAccessible('hinu3qNext', pageContext)}">
	 		<a title="<bean:message key="HierarchicalIndex.Next"/>" id="hinu3qNext" onclick="return ajaxRequest('<webratio:Link link="hinu3qNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'hinu3qNext', sourcePage: 'page7p'}))" class="  scroll" href="<webratio:Link link="hinu3qNext" position="index"/>">							
			<bean:message key="HierarchicalIndex.Next"/></a>
	</c:if>
			         </c:when>
			         <c:otherwise>
			        <span class="pagination-links-next"><bean:message key="HierarchicalIndex.Next"/></span>
			         </c:otherwise>
			    </c:choose>
			      <c:choose>
			          <c:when test="${hinu3q.scroller.current ne hinu3q.scroller.last}">
			               <span class="pagination-links-last"><a href="<webratio:Link escapeXml="true" link="hinu3qLast" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="hinu3qLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'hinu3qLast', sourcePage: 'page7p'}))" >&raquo;</a></span>
			         </c:when>
			         <c:otherwise>
			           <span class="pagination-links-last">&raquo;</span>
			         </c:otherwise>
			     </c:choose>
			    </div>
			    <c:if test="${not(empty mdu3p) and (mdu3p.dataSize gt 0)}">
					<a class="read-more my-position" onclick="return ajaxRequest('<webratio:Link link="ln69p" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln69p', sourcePage: 'page7p'}))"><bean:message key="HQ.GoToMyPosition"/></a>
				</c:if>
			</div>
		</c:if>
	</c:when>
<c:otherwise>
	<p><bean:message key="HQ.RankNoResults"/></p>
</c:otherwise>
</c:choose> 
	</div>
</div></div>
</div>
</div>
			</div>
			<div class="grid_6 omega agrd_9">
				<div class="wr-ajaxDiv" id="page7p_cell_9">
	<div class="wr-ajaxDiv" id="page7p_grid_4">
<div class="wr-ajaxDiv" id="page7p_cell_10">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="HQ.RankingOverall"/>
		</h2>
	</div>
	<div class="panel-body">
<c:choose>
	<c:when test="${not(empty hinu2q) and (hinu2q.dataSize gt 0)}">
		<div class="rank-index">
		<c:forEach var="level1current" varStatus="level1status" items="${hinu2q.data}">
			<c:set var="level1" value="${level1status.index}" />
<c:set var="index" value="${level1+1}"/>
<c:if test="${not (empty hinu2q.scroller)}">
	<c:set var="index" value="${hinu2q.scroller.from + level1}"/>
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
			<a href="<webratio:Link escapeXml="true" link="ln70q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
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
				<a href="<webratio:Link escapeXml="true" link="ln70q" position="level1"/>" title="<bean:message key="community.goToDashboard"/>">
					<c:out value="${level1current.firstName}"/> <c:out value="${level1current.lastName}"/>&nbsp;
				</a>
			</h3>
		</div>
		<div class="points"><fmt:formatNumber value="${level1current.participation}" pattern="${decimalPattern}"/> <bean:message key="Points"/></div>
		<!-- Badge -->
		<div class="badge-list">
	<c:forEach items="${level1current.hiulvl2qdata}" var="level2current" varStatus="level2status">
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
		</div>
		<div class="clear">&nbsp;</div>
		<c:if test="${hinu2q.scroller.last gt 1}">
			<div class="pagination center rank">
				<div class="pagination-links">
			    <c:choose>
			   		<c:when test="${hinu2q.scroller.current ne hinu2q.scroller.first}">
			     		<span class="pagination-links-first"><a href="<webratio:Link escapeXml="true" link="hinu2qFirst" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="hinu2qFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'hinu2qFirst', sourcePage: 'page7p'}))" >&laquo;</a></span>
			     	</c:when>
			   		<c:otherwise>
						<span class="pagination-links-first">&laquo;</span>
			      	</c:otherwise>
			     </c:choose>
			    <c:choose>
			        <c:when test="${hinu2q.scroller.current ne hinu2q.scroller.previous}">
			             <c:if test="${webratio:isTargetAccessible('hinu2qPrevious', pageContext)}">
	 		<a title="<bean:message key="HierarchicalIndex.Previous"/>" id="hinu2qPrevious" onclick="return ajaxRequest('<webratio:Link link="hinu2qPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'hinu2qPrevious', sourcePage: 'page7p'}))" class="  scroll" href="<webratio:Link link="hinu2qPrevious" position="index"/>">							
			<bean:message key="HierarchicalIndex.Previous"/></a>
	</c:if>
			        </c:when>
				    <c:otherwise>
				        <span class="pagination-links-previous"><bean:message key="HierarchicalIndex.Previous"/></span>
				    </c:otherwise>
			    </c:choose>
			    <span class="pagination-links-pages">
			        <c:if test="${hinu2q.scroller.current eq 2}">
	                	<c:set var="start" value="${hinu2q.scroller.current-2}"/>
	                    <c:set var="stop" value="${hinu2q.scroller.current+2}"/> 
	                </c:if>
	                <c:if test="${hinu2q.scroller.current eq 1}">
	                	<c:set var="start" value="${hinu2q.scroller.current-1}"/>
	                    <c:set var="stop" value="${hinu2q.scroller.current+3}"/> 
	                </c:if>
	                <c:if test="${hinu2q.scroller.current gt 2}">
	                	<c:choose>  
	                    	<c:when test="${(hinu2q.scroller.last-hinu2q.scroller.current) le 2}">
	                        	<c:set var="start" value="${hinu2q.scroller.current-3}"/>
	                            <c:set var="stop" value="${hinu2q.scroller.current+2}"/>
	                        </c:when>
	                        <c:otherwise>
	                        	<c:set var="start" value="${hinu2q.scroller.current-3}"/>
	                            <c:set var="stop" value="${hinu2q.scroller.current+1}"/>
	                        </c:otherwise>
	                    </c:choose>
	                 </c:if>
			       	<c:forEach var="current" varStatus="status" items="${hinu2q.scroller.blocks}" begin="${start}" end="${stop}">
		             <c:set var="index" value="${status.index}"/>
		             <c:choose>
		               <c:when test="${current ne hinu2q.scroller.current}">
		               	 <a class=" link number" href="<webratio:Link escapeXml="true" link="hinu2qBlock" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="hinu2qBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'hinu2qBlock', sourcePage: 'page7p'}))">${current}</a>
		               </c:when>
		               <c:otherwise>
		                 <span class="active  number">${current}</span>
		               </c:otherwise>
		             </c:choose>
			       </c:forEach> 
			    </span>
			    <c:choose>
			         <c:when test="${hinu2q.scroller.current ne hinu2q.scroller.next}">
			               <c:if test="${webratio:isTargetAccessible('hinu2qNext', pageContext)}">
	 		<a title="<bean:message key="HierarchicalIndex.Next"/>" id="hinu2qNext" onclick="return ajaxRequest('<webratio:Link link="hinu2qNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'hinu2qNext', sourcePage: 'page7p'}))" class="  scroll" href="<webratio:Link link="hinu2qNext" position="index"/>">							
			<bean:message key="HierarchicalIndex.Next"/></a>
	</c:if>
			         </c:when>
			         <c:otherwise>
			        <span class="pagination-links-next"><bean:message key="HierarchicalIndex.Next"/></span>
			         </c:otherwise>
			    </c:choose>
			      <c:choose>
			          <c:when test="${hinu2q.scroller.current ne hinu2q.scroller.last}">
			               <span class="pagination-links-last"><a href="<webratio:Link escapeXml="true" link="hinu2qLast" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="hinu2qLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'hinu2qLast', sourcePage: 'page7p'}))" >&raquo;</a></span>
			         </c:when>
			         <c:otherwise>
			           <span class="pagination-links-last">&raquo;</span>
			         </c:otherwise>
			     </c:choose>
			    </div>
			    <c:if test="${not(empty mdu2p) and (mdu2p.dataSize gt 0)}">
					<a class="read-more my-position" onclick="return ajaxRequest('<webratio:Link link="ln63p" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln63p', sourcePage: 'page7p'}))"><bean:message key="HQ.GoToMyPosition"/></a>
				</c:if>
			</div>
		</c:if>
	</c:when>
<c:otherwise>
	<p><bean:message key="HQ.RankNoResults"/></p>
</c:otherwise>
</c:choose> 
	</div>
</div></div>
</div>
</div>
			</div>
				<div class="clear"></div>
</div>
</div>
</div>
</div>
</div>
			</div>
			<div class="grid_3 omega agrd_6">
				<div class="wr-ajaxDiv" id="page7p_cell_24">
	<div class="wr-ajaxDiv" id="page7p_grid_5">
<div class="wr-ajaxDiv" id="page7p_cell_25">
	<div class="wr-ajaxDiv" id="page7p_grid_6">
<div class="wr-ajaxDiv" id="page7p_cell_26">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key=""/>
		</h2>
	</div>
	<div class="panel-body">
<div class="counter">
<fmt:parseNumber var="total7" value="${mssu9p.data[0]}"/>
<fmt:parseNumber var="filter7" value="${mssu11p.data[0]}"/>
<fmt:parseNumber var="total" value="${mssu15p.data[0]}"/>
<fmt:parseNumber var="filter" value="${mssu16p.data[0]}"/>
<c:if test="${empty filter}">
  <c:set var="filter" value="${0}"/>
</c:if>
<c:if test="${empty filter7}">
  <c:set var="filter7" value="${0}"/>
</c:if>
<c:choose>
  <c:when test="${empty filter7 or (total7 gt filter7)}">
    <div class="counter-detail Days"><fmt:formatNumber value="${filter7}" pattern="${integerPattern}"/> <bean:message key="users"/> <bean:message key="of"/> <fmt:formatNumber value="${total7}" pattern="${integerPattern}"/><br><bean:message key="counter7DaysLeaderboard"/></div>
  </c:when>
  <c:otherwise>
    <div class="counter-detail"><fmt:formatNumber value="${total7}" pattern="${integerPattern}"/> <bean:message key="users"/> <br><bean:message key="counter7DaysLeaderboard"/></div>
  </c:otherwise>
</c:choose>
<br>
<c:choose>
  <c:when test="${empty filter or (total gt filter)}">
    <div class="counter-detail"><fmt:formatNumber value="${filter}" pattern="${integerPattern}"/> <bean:message key="users"/> <bean:message key="of"/> <fmt:formatNumber value="${total}" pattern="${integerPattern}"/><br><bean:message key="counterOverallLeaderboard"/></div>
	<br>
	 <c:if test="${webratio:isTargetAccessible('ln90p', pageContext)}">
	 		<a title="<bean:message key="Clear"/>" id="ln90p" onclick="return ajaxRequest('page7pFormBean', $H({isForm: true, pressedLink: 'button:ln90p', selectiveRefresh: true, sourcePage: 'page7p'}))" class="  read-more clearButton" href="<webratio:Link link="ln90p" position="index"/>">							
			<bean:message key="Clear"/></a>
	</c:if>
	<div class="clear">&nbsp;</div>
  </c:when>
  <c:otherwise>
    <div class="counter-detail"><fmt:formatNumber value="${total}" pattern="${integerPattern}"/> <bean:message key="users"/><br><bean:message key="counterOverallLeaderboard"/></div>
  </c:otherwise>
</c:choose>
	<div class="search">
		<p><bean:message key="searchUser"/></p>
		<html:text   styleId="fld7p" styleClass="wr-submitButtons:ln89p,ln90p  form-control  field" property="fld7p" readonly="false"/>							
	 <c:if test="${webratio:isTargetAccessible('ln89p', pageContext)}">
 			<button title="<bean:message key="Search"/>" onclick="return ajaxRequest('page7pFormBean', $H({isForm: true, pressedLink: 'button:ln89p', selectiveRefresh: true, sourcePage: 'page7p'})) " class="btn  btn-default  search-white" id="button:ln89p" name="button:ln89p" type="submit" value="<bean:message key="Search"/>">
			<bean:message key="Search"/></button>
	</c:if>
	</div>
</div>
	</div>
</div></div>
</div>
	<div class="wr-ajaxDiv" id="enu6p_1">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="Filter by region"/>
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="">
	    <c:set var="btFieldError"><html:errors property="enu6p"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu6p"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld15p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					<div class="controls">
					<html:select styleId="sfld15p" styleClass="wr-submitButtons:ln89p,ln90p form-control " property="sfld15p" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.world"/></html:option>
				    <html:options property="sfld15pList" labelProperty="sfld15pLabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld15p", "change", function(event) { WREvent.observe(event, "page7p", "ln88p", $H({"isForm": true, "pressedLink": 'button:ln88p', "selectiveRefresh": true, "sourcePage": 'page7p'})); });
		</script>
					<c:set var="btFieldError"><html:errors property="sfld15p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
</div>	
	</div>
</div></div>
	<div class="wr-ajaxDiv" id="enu6p_2">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="Filter by badge type"/>
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="">
	    <c:set var="btFieldError"><html:errors property="enu6p"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu6p"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="msfld3p"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					<div class="controls">
					<c:forEach var="current" varStatus="status" items="${page7pFormBean.map.msfld3pList}">
				 <label class="checkbox-inline" for="msf_msfld3p_${status.index}">
				  <html:multibox styleClass="wr-submitButtons:ln89p,ln90p " property="msfld3p" value="${current}" disabled="false" styleId="msf_msfld3p_${status.index}"/>
					   <c:out value="${page7pFormBean.map.msfld3pLabelList[status.index]}"/>
				 </label>
			</c:forEach><script type="text/javascript">
			new Form.Element.CheckboxEventObserver("page7pFormBean", "msfld3p", function() { ajaxRequest('page7pFormBean', $H({isForm: true, pressedLink: 'button:ln88p', selectiveRefresh: true, sourcePage: 'page7p'})) });
		</script>
					<c:set var="btFieldError"><html:errors property="msfld3p"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
</div>	
	</div>
</div></div>
	<div class="wr-ajaxDiv" id="enu6p_3">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			<bean:message key="Filter by badge level"/>
		</h2>
	</div>
	<div class="panel-body">
<div class="plain ">
	<div id="enu6p-23567092" class="SliderField">
		<div class="hidden">
			<html:text   styleId="fld2o" styleClass="wr-submitButtons:ln89p,ln90p  form-control  minfield" property="fld2o" readonly="false"/><script type="text/javascript">
			WREventUtils.observe("fld2o", "change", function(event) { WREvent.observe(event, "page7p", "ln88p", $H({"isForm": true, "pressedLink": 'button:ln88p', "selectiveRefresh": true, "sourcePage": 'page7p'})); });
		</script>
			<html:text   styleId="fld1o" styleClass="wr-submitButtons:ln89p,ln90p  form-control  maxfield" property="fld1o" readonly="false"/><script type="text/javascript">
			WREventUtils.observe("fld1o", "change", function(event) { WREvent.observe(event, "page7p", "ln88p", $H({"isForm": true, "pressedLink": 'button:ln88p', "selectiveRefresh": true, "sourcePage": 'page7p'})); });
		</script>
		</div>
		<div class="slider"></div>
			<c:set var="minValue" value="0"/>
			<c:if test="${not (empty page7pFormBean.map.fld2o)}">
			  <c:set var="minValue" value="${page7pFormBean.map.fld2o}"/>
			</c:if>
			<c:set var="maxValue" value="9"/>
			<c:if test="${not (empty page7pFormBean.map.fld1o)}">
			  <c:set var="maxValue" value="${page7pFormBean.map.fld1o}"/>
			</c:if>
			<script>
				$(function() {
				    $( "#enu6p-23567092 .slider" ).slider({
				      range: true,
				      min: 0,
				      max: 9,
				      values: [ ${minValue}, ${maxValue} ],
				      change: function( event, ui ) {
				        $( "#enu6p-23567092 .minfield" ).val( ui.values[ 0 ] );
				        $( "#enu6p-23567092 .maxfield" ).val( ui.values[ 1 ] ).change();
				      },
				      slide: function( event, ui ) {
				            $("#enu6p-23567092 .slider a:first .tip").html(ui.values[0]);
				            $("#enu6p-23567092 .slider a:last .tip").html(ui.values[1]);
				      }
				    });
				    $( "#enu6p-23567092 .minfield" ).val( ${minValue} );
				    $( "#enu6p-23567092 .maxfield" ).val( ${maxValue} );
				    $( "#enu6p-23567092 .slider a:first" ).html( '<div class="tip">${minValue}</div>' );
				    $( "#enu6p-23567092 .slider a:last" ).html( '<div class="tip">${maxValue}</div>' );
				  });
			</script>
	</div>
</div>
	</div>
</div></div>
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
		<webratio:LinkInfos page="page7p"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page7p" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page7p"/>
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
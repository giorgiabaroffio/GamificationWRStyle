<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page20x"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page20x.do${wrAjax ? '#!ajax=true' : ''}" styleId="page20xFormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page20x">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page20x"/>
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page20x"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page20x_grid_0', pageContext)}">
			<ControlData control="page20x_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<table    >
<tr>
<td  valign="top" align="left" ><div class="wr-ajaxDiv" id="page20x_cell_0"></div></td>
</tr>
<tr>
<td  valign="top" align="left" ><div class="wr-ajaxDiv" id="page20x_cell_1"></div></td>
</tr>
</table></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page20x_cell_0,page20x_grid_0', pageContext)}">
			<ControlData control="page20x_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="tab">
<ul >
<c:forEach var="current" varStatus="status" items="${inu3x.data}">
<c:set var="index" value="${status.index}"/>
<li>
<a href="<webratio:Link escapeXml="true" link="ln13x" position="index"/>" id="ln13x" title="${current.areaName}">
${current.areaName}
</a>
</li>
</c:forEach>
</ul>
</div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page20x_cell_1,page20x_grid_0', pageContext)}">
			<ControlData control="page20x_cell_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu7x_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu7x_0,page20x_cell_1,page20x_grid_0', pageContext)}">
			<ControlData control="pwu7x_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty pwu7x) and (pwu7x.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			List of Actions
		</h2>
	</div>
	<div class="panel-body">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="">
						            Area
					        </th>
					        <th scope="col" class="">
						            Name
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt71x', pageContext)}">
	 		<a title="Description" id="pwu7xatt71x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt71x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt71x', sourcePage: 'page20x'}))" class="  sort" href="<webratio:Link link="pwu7xatt71x" position="index"/>">							
			Description</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt41x', pageContext)}">
	 		<a title="Score" id="pwu7xatt41x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt41x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt41x', sourcePage: 'page20x'}))" class="  sort" href="<webratio:Link link="pwu7xatt41x" position="index"/>">							
			Score</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt60x', pageContext)}">
	 		<a title="Participation" id="pwu7xatt60x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt60x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt60x', sourcePage: 'page20x'}))" class="  sort" href="<webratio:Link link="pwu7xatt60x" position="index"/>">							
			Participation</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt50x', pageContext)}">
	 		<a title="Reputation" id="pwu7xatt50x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt50x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt50x', sourcePage: 'page20x'}))" class="  sort" href="<webratio:Link link="pwu7xatt50x" position="index"/>">							
			Reputation</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt3q', pageContext)}">
	 		<a title="Repeatable" id="pwu7xatt3q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt3q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt3q', sourcePage: 'page20x'}))" class="  sort" href="<webratio:Link link="pwu7xatt3q" position="index"/>">							
			Repeatable</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt1q', pageContext)}">
	 		<a title="Check Time Elapsed" id="pwu7xatt1q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt1q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt1q', sourcePage: 'page20x'}))" class="  sort" href="<webratio:Link link="pwu7xatt1q" position="index"/>">							
			Check Time Elapsed</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt2q', pageContext)}">
	 		<a title="Time Elapsed" id="pwu7xatt2q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt2q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt2q', sourcePage: 'page20x'}))" class="  sort" href="<webratio:Link link="pwu7xatt2q" position="index"/>">							
			Time Elapsed</a>
	</c:if>
					        </th>
					        <th scope="col" class="">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt9q', pageContext)}">
	 		<a title="Active" id="pwu7xatt9q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt9q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt9q', sourcePage: 'page20x'}))" class="  sort" href="<webratio:Link link="pwu7xatt9q" position="index"/>">							
			Active</a>
	</c:if>
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln12x', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln61q', pageContext)}">
<th scope="col" class=" smallcol"></th> 
			</c:if>
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu7x.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu7x.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
										<c:out value="${current.area}"/>
								</td>
								<td class=" string">
										<c:out value="${current.name}"/>
								</td>
								<td class=" string">
										<c:out value="${current.description}"/>
								</td>
								<td class=" decimal">
										<fmt:formatNumber value="${current.score}" pattern="${decimalPattern}"/>
								</td>
								<td class=" boolean">
										<c:if test="${not(empty current.participation)}">
  <c:choose>
    <c:when test="${current.participation}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								</td>
								<td class=" boolean">
										<c:if test="${not(empty current.reputation)}">
  <c:choose>
    <c:when test="${current.reputation}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								</td>
								<td class=" boolean">
										<c:if test="${not(empty current.repeatable)}">
  <c:choose>
    <c:when test="${current.repeatable}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								</td>
								<td class=" boolean">
										<c:if test="${not(empty current.checkTimeElapsed)}">
  <c:choose>
    <c:when test="${current.checkTimeElapsed}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								</td>
								<td class=" integer">
										<fmt:formatNumber value="${current.timeElapsed}" pattern="${integerPattern}"/>
								</td>
								<td class=" boolean">
										<c:if test="${not(empty current.active)}">
  <c:choose>
    <c:when test="${current.active}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								</td>
			<c:if test="${webratio:isTargetAccessible('ln12x', pageContext)}">
									<td class=" smallcol">
										 <c:if test="${webratio:isTargetAccessible('ln12x', pageContext)}">
	 		<a title="Modify" id="ln12x" class=" " href="<webratio:Link link="ln12x" position="index"/>" >
			Modify</a>
	</c:if>
									</td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln61q', pageContext)}">
									<td class=" smallcol">
										 <c:set var="_wr_message"><bean:message key="linkConfirmMessage"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('ln61q', pageContext)}">
	 		<a title="Delete" id="ln61q" onclick=" var c = confirm('<c:out value="${_wr_message}"/>'); if (c) { return ajaxRequest('<webratio:Link link="ln61q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln61q', sourcePage: 'page20x'})) }  return c; " class=" " href="<webratio:Link link="ln61q" position="index"/>">							
			Delete</a>
	</c:if>
									</td>
			</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
			</div>
		</div>
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
		<![CDATA[
		</html:form>
	]]>
</PageRefresh>
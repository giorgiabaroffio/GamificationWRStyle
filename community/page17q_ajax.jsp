<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page17q"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page17q.do${wrAjax ? '#!ajax=true' : ''}" styleId="page17qFormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page17q">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page17q"/>
				<input type="hidden" name="ln224q" value="<webratio:Link link="ln224q"/>">
				<input type="hidden" name="ln225q" value="<webratio:Link link="ln225q"/>">
					<input type="hidden" name="ln225q_sr" value="<webratio:Link link="ln225q" selectiveRefresh="true"/>">
				<input type="hidden" name="ln227q" value="<webratio:Link link="ln227q"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page17q"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page17q_grid_0', pageContext)}">
			<ControlData control="page17q_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_4 prefix_8 alpha omega agrd_8">
				<div class="wr-ajaxDiv" id="page17q_cell_8"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page17q_cell_12"></div>
			</div>
				<div class="clear"></div>
</div>
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
		<c:if test="${webratio:isLayoutRefreshed('page17q_cell_8,page17q_grid_0', pageContext)}">
			<ControlData control="page17q_cell_8" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu10q_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu10q_0,page17q_cell_8,page17q_grid_0', pageContext)}">
			<ControlData control="enu10q_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="left-bar">
	<h2 class="">Search</h2>
<div class="EntryUnit ">
	<div class="form-horizontal ">
	    <c:set var="btFieldError"><html:errors property="enu10q"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu10q"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld20q"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld20q" class="control-label col-md-2">language</label>
					<div class="controls col-md-10">
					<html:select styleId="sfld20q" styleClass="wr-submitButtons:ln224q form-control " property="sfld20q" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld20qList" labelProperty="sfld20qLabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld20q", "change", function(event) { WREvent.observe(event, "page17q", "ln225q", $H({"isForm": true, "pressedLink": 'button:ln225q', "selectiveRefresh": true, "sourcePage": 'page17q'})); });
		</script>
					<c:set var="btFieldError"><html:errors property="sfld20q"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld26q"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld26q" class="control-label col-md-2">Key</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld26q" styleClass="wr-submitButtons:ln224q  form-control " property="fld26q" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld26q"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld27q"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld27q" class="control-label col-md-2">Message</label>
					<div class="controls col-md-10">
					<html:text   styleId="fld27q" styleClass="wr-submitButtons:ln224q  form-control " property="fld27q" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld27q"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
	<div class="row"><div class="col-md-offset-2 col-md-10">
		<div class="form-group form-btn">
			<c:if test="${webratio:isTargetAccessible('ln224q', pageContext)}">
					 <c:if test="${webratio:isTargetAccessible('ln224q', pageContext)}">
			<button title="Search" onclick="$('#page17qFormBean')[0].target='_self'" class="btn  btn-default " id="button:ln224q" name="button:ln224q" type="submit" value="Search">
			Search</button>
	</c:if>
			</c:if>
		</div>
	</div></div>
</div>	
</div>
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
		<c:if test="${webratio:isLayoutRefreshed('page17q_cell_12,page17q_grid_0', pageContext)}">
			<ControlData control="page17q_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="page17q_grid_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page17q_grid_1,page17q_cell_12,page17q_grid_0', pageContext)}">
			<ControlData control="page17q_grid_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="page17q_cell_13"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page17q_cell_13,page17q_grid_1,page17q_cell_12,page17q_grid_0', pageContext)}">
			<ControlData control="page17q_cell_13" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="left-bar">
	<h2 class="">Labels</h2>
		<div class="wr-ajaxDiv" id="scu10q_0"></div>
		<div class="wr-ajaxDiv" id="meu1q_0"></div>
</div>
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
		<c:if test="${webratio:isLayoutRefreshed('scu10q_0,page17q_cell_13,page17q_grid_1,page17q_cell_12,page17q_grid_0', pageContext)}">
			<ControlData control="scu10q_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty scu10q) and (scu10q.dataSize gt 0) and scu10q.scroller.of gt 20}">
		<div class="plain ">
			<div class="plain ScrollerUnit">
				 <table border="0" cellspacing="1" cellpadding="2">
				   <tr> 
						    <td class="scrollText">
						        <c:choose>
						            <c:when test="${scu10q.scroller.current ne scu10q.scroller.first}">
					     	             <c:if test="${webratio:isTargetAccessible('scu10qFirst', pageContext)}">
	 		<a title="<bean:message key="Scroller.First"/>" id="scu10qFirst" onclick="return ajaxRequest('<webratio:Link link="scu10qFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qFirst', sourcePage: 'page17q'}))" class="  scroll" href="<webratio:Link link="scu10qFirst" position="index"/>">							
			<bean:message key="Scroller.First"/></a>
	</c:if>
						            </c:when>
						            <c:otherwise>
						           			<span><bean:message key="Scroller.First"/></span>
						           		</c:otherwise>
						        </c:choose>
						    </td>
						    <td class="scrollText">
						        <c:choose>
					                <c:when test="${scu10q.scroller.current ne scu10q.scroller.previous}">
						    	         <c:if test="${webratio:isTargetAccessible('scu10qPrevious', pageContext)}">
	 		<a title="<bean:message key="Scroller.Previous"/>" id="scu10qPrevious" onclick="return ajaxRequest('<webratio:Link link="scu10qPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qPrevious', sourcePage: 'page17q'}))" class="  scroll" href="<webratio:Link link="scu10qPrevious" position="index"/>">							
			<bean:message key="Scroller.Previous"/></a>
	</c:if>
					                </c:when>
					                <c:otherwise>
						           			<span><bean:message key="Scroller.Previous"/></span>
						           	</c:otherwise>
					            </c:choose>
						    </td>
					    <td class="scrollText" nowrap>${scu10q.scroller.from} <bean:message key="Scroller.To"/> ${scu10q.scroller.to} <bean:message key="Scroller.Of"/> ${scu10q.scroller.of}</td>
						    <td class="nextLink">
						        <c:choose>
					                <c:when test="${scu10q.scroller.current ne scu10q.scroller.next}">
			    			    	     <c:if test="${webratio:isTargetAccessible('scu10qNext', pageContext)}">
	 		<a title="<bean:message key="Scroller.Next"/>" id="scu10qNext" onclick="return ajaxRequest('<webratio:Link link="scu10qNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qNext', sourcePage: 'page17q'}))" class="  scroll" href="<webratio:Link link="scu10qNext" position="index"/>">							
			<bean:message key="Scroller.Next"/></a>
	</c:if>
			    		            </c:when>
				    	            <c:otherwise>
						           			<span><bean:message key="Scroller.Next"/></span>
				    	            </c:otherwise>
				    	        </c:choose>
						    </td>
						    <td class="scrollText">
						    	<c:choose>
			    		            <c:when test="${scu10q.scroller.current ne scu10q.scroller.last}">
				    		    	     <c:if test="${webratio:isTargetAccessible('scu10qLast', pageContext)}">
	 		<a title="<bean:message key="Scroller.Last"/>" id="scu10qLast" onclick="return ajaxRequest('<webratio:Link link="scu10qLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qLast', sourcePage: 'page17q'}))" class="  scroll" href="<webratio:Link link="scu10qLast" position="index"/>">							
			<bean:message key="Scroller.Last"/></a>
	</c:if>
					                </c:when>
					                <c:otherwise>
						           			<span><bean:message key="Scroller.Last"/></span>
					               </c:otherwise>
					            </c:choose>
						    </td>
				   </tr>
					   <tr>  
						    <td colspan="5" class="scrollText"> 
							    <span><bean:message key="Scroller.Jump"/></span>
							    <c:forEach var="current" varStatus="status" items="${scu10q.scroller.blocks}">
							      <c:set var="index" value="${status.index}"/>
							      <span class="jump">
							      <c:choose>
							        <c:when test="${current ne scu10q.scroller.current}">
							          <a class=" link" href="<webratio:Link escapeXml="true" link="scu10qBlock" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="scu10qBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qBlock', sourcePage: 'page17q'}))">${current}</a>
							        </c:when>
							        <c:otherwise>
							          ${current}
							        </c:otherwise>
							      </c:choose>
							      </span>
						    	</c:forEach> 
						    </td>
					   </tr>
				 </table>
			</div>
		</div>
</c:when>
<c:when test="${scu10q.dataSize eq 0}">
		<div class="plain ">
			<div class="plain ScrollerUnit">
				<table>
				    <tr>
				      <td><bean:message key="emptyUnitMessage"/></td>
				    </tr>
				</table>
			</div>
		</div>
</c:when>
</c:choose>
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
		<c:if test="${webratio:isLayoutRefreshed('meu1q_0,page17q_cell_13,page17q_grid_1,page17q_cell_12,page17q_grid_0', pageContext)}">
			<ControlData control="meu1q_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="plain ">
		<div class="plain MultiEntryUnit">
			<c:set var="btFieldError"><html:errors property="meu1q"/><html:errors property="meu1qChecked"/></c:set>
			<c:if test="${not (empty btFieldError)}">
				<div class="alert alert-danger">
					<html:errors property="meu1q"/>
					<html:errors property="meu1qChecked"/>
				</div>
			</c:if>
			<table class="table table-bordered table-hover  table-striped">
				<thead>
					<tr>
						<th scope="col" class="smallcol hidden ">
						</th>
								<th scope="col" class=" header">Key</th>
								<th scope="col" class=" header">Message</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="meu1q" varStatus="status" items="${page17qFormBean.map.meu1q}">
					<c:set var="index" value="${status.index}"/>
					<tr>
						<td class="smallcol hidden ">
							<html:hidden property="value(key)" indexed="true" name="meu1q"/>
						</td>
								<c:set var="btFieldError"><html:errors property="meu1q[${index}].value(fld28q)"/></c:set>
								<td class=" value<c:if test="${not (empty btFieldError)}"> has-error</c:if>">
									<html:text title="Key" styleId="meu1q[${index}].value(fld28q)" indexed="true"  styleClass="form-control wr-submitButtons:ln227q " name="meu1q" property="value(fld28q)" readonly="true"/>
									<c:set var="btFieldError"><html:errors property="meu1q[${index}].value(fld28q)"/></c:set>
<c:if test="${not (empty btFieldError)}"><span class="field-error help-block"><html:errors property="meu1q[${index}].value(fld28q)"/></span></c:if>
								</td>
								<c:set var="btFieldError"><html:errors property="meu1q[${index}].value(fld29q)"/></c:set>
								<td class=" value<c:if test="${not (empty btFieldError)}"> has-error</c:if>">
									<html:text title="Message" styleId="meu1q[${index}].value(fld29q)" indexed="true"  styleClass="form-control wr-submitButtons:ln227q " name="meu1q" property="value(fld29q)" readonly="false"/>
									<c:set var="btFieldError"><html:errors property="meu1q[${index}].value(fld29q)"/></c:set>
<c:if test="${not (empty btFieldError)}"><span class="field-error help-block"><html:errors property="meu1q[${index}].value(fld29q)"/></span></c:if>
								</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<div class="form-group form-btn">
					 <c:if test="${webratio:isTargetAccessible('ln227q', pageContext)}">
			<button title="Save" onclick="$('#page17qFormBean')[0].target='_self'" class="btn  btn-default " id="button:ln227q" name="button:ln227q" type="submit" value="Save">
			Save</button>
	</c:if>
			</div>
		</div>
	</div>
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
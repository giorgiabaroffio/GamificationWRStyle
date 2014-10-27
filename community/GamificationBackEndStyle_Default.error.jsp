<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.webratio.struts.exceptions.ErrorInterpreter" %>
<html>
<head>
<%
ErrorInterpreter interpreter = new ErrorInterpreter(request);
%>
<title>Error</title>
<link href="style/css/style.css" type="text/css" rel="stylesheet"></link>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
</head>
<body>
<div class="body">
<div class="bg-bottom"></div>
<div class="container">
	<div class="error-content">
		<div class="content">
			<div class="page-title">
				<h1>An error occurred</h1>
			</div>
			
			<p>Try again or contact the site admin</p>
			
			<!--
			<%=interpreter.getMessage(ErrorInterpreter.XML_FORMAT)%>
			
			<% if (interpreter.hasOccurred()) { %>
			Occurred on:
			<%=interpreter.getOccurred()%>
			<% } %>
			<% if (interpreter.hasDetails()) { %>
			Details:
			<% for (java.util.Iterator it = interpreter.getDetails(ErrorInterpreter.XML_FORMAT).iterator(); it.hasNext(); ) { %>
			<%=it.next()%>
			<% } %>
			
			<% } %>
			<% if (interpreter.hasFixes()) { %>
			Suggestions:
			
			<% for (java.util.Iterator it = interpreter.getFixes(ErrorInterpreter.XML_FORMAT).iterator(); it.hasNext(); ) { %>
			<%=it.next()%>
			<% } %>
			
			<% } %>
			
			
			
			
			<%=interpreter.getExceptionStackTrace(ErrorInterpreter.TEXT_FORMAT)%>
			-->
		</div>
	</div>
</div>
</div>
</body>
</html>

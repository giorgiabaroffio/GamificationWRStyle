<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<html>
<head>
	<title>Login Required</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<script src="WRResources/ajax/prototype/prototype.js" type="text/javascript"></script>	
	<script src="WRResources/script.js" type="text/javascript"></script>
	<link href="style/css/style.css" type="text/css" rel="stylesheet"></link>
</head>
<body>
<div class="body">
<div class="bg-bottom"></div>
<div class="container">
	<html:form action="loginAction.do" enctype="multipart/form-data">
		<html:hidden property="lastURL"/>
		<div class="login-content">
		<div class="content">
		<div class="page-title">
			<h1>Please Login</h1>
		</div>
		<table width="100%">
			<tr>
				<td valign="top">
					<div class="plain EntryUnit">
						<table>
							<tr>
								<th valign="middle" class="header">
									Username
								</th>
								<td valign="middle" nowrap="nowrap" class="value">
									<html:text styleClass="field" property="userName" onkeypress="if(event.keyCode==13){clickButton('login'); return false;}"/>
								</td>
							</tr>
							<tr>
								<th valign="middle" class="header">
									Password
								</th>
								<td valign="middle" nowrap="nowrap" class="value">
									<html:password styleClass="field" property="password" onkeypress="if(event.keyCode==13){clickButton('login'); return false;}"/>
								</td>
							</tr>
							<tr>
								<td colspan="2" style="text-align: right;">
										<input class="button" type="submit" value="Login" name="button:login" id="button:login"/>
								</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
		</div>
		</div>
	</html:form>
</div>
</div>
</body>
</html>

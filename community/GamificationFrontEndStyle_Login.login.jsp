<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<html>
<head>
  <title>Login</title>
  <base href="<%=request.getContextPath()%>/"/>
  <meta http-equiv="content-type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="BootstrapStyle/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="BootstrapStyle/css/app.css" rel="stylesheet">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="BootstrapStyle/assets/js/html5shiv.js"></script>
		<script src="BootstrapStyle/assets/js/respond.min.js"></script>
	<![endif]-->	
</head>
<body class="signin">
<html:form action="loginAction.do" enctype="multipart/form-data">
<html:hidden property="lastURL"/>
<div class="container">
	<div class="logo">
        <a href="index.jsp" title="Home" accesskey="1"><img src="BootstrapStyle/css/img/logo-header.png" alt="Home"></a>
    </div>
	<div class="form-signin">
	    <div class="form-group">
	    	<label for="userName" class="control-label">Username</label>
	    	<input id="userName" name="userName" type="text" class="wr-submitButtons:login form-control input-block-level">
	    </div>
	    <div class="form-group">
	    	<label for="password" class="control-label">Password</label>
        	<input id="password" name="password" type="password" class="wr-submitButtons:login form-control input-block-level">
        </div>
        <div class="form-group form-btn">
			<button class="btn btn-primary btn-block" id="button:login" type="submit">Login</button>
		</div>
	</div>
</div>
</html:form>
<script src="WRResources/ajax/jquery/jquery.min.js" type="text/javascript" rel="javascript"></script>	
<script src="WRResources/script.js" type="text/javascript" rel="javascript"></script>
<script src="BootstrapStyle/dist/js/bootstrap.min.js" type="text/javascript"></script>
<script src="BootstrapStyle/js/app.min.js" type="text/javascript"></script>
</body>
</html> 

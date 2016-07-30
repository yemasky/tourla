<!DOCTYPE html>
<html lang="en">
    
<head>
    <%include file="merchant/inc/head.tpl"%>
    <link rel="stylesheet" href="<%$__RESOURCE%>css/maruti-login.css" />
    <link href="<%$__RESOURCE%>css/uniform.css" rel="stylesheet">
    <link href="<%$__RESOURCE%>css/select2.css" rel="stylesheet">
    <link href="<%$__RESOURCE%>css/maruti-style.css" rel="stylesheet">
    <link href="<%$__RESOURCE%>css/maruti-media.css" rel="stylesheet" class="skin-color">
    <script src="<%$__RESOURCE%>js/jquery.min.js"></script>
    <script src="<%$__RESOURCE%>js/maruti.login.js"></script>
    <script src="<%$__RESOURCE%>js/jquery.ui.custom.js"></script>
    <script src="<%$__RESOURCE%>js/bootstrap.min.js"></script>
    <script src="<%$__RESOURCE%>js/jquery.uniform.js"></script>
    <script src="<%$__RESOURCE%>js/select2.min.js"></script>
    <script src="<%$__RESOURCE%>js/jquery.validate.js"></script>
    <script src="<%$__RESOURCE%>js/maruti.js"></script>
    <script src="<%$__RESOURCE%>js/maruti.form_validation.js"></script>
</head>
    <body>
        <div id="logo">
            <img src="<%$__RESOURCE%>img/login-logo.png" alt="" />
        </div>
        <div id="loginbox">            
            <form class="form-vertical" action="index.html" name="basic_validate" id="basic_validate" novalidate="novalidate">
				 <div class="control-group normal_text"><h3>Maruti Admin Login</h3></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on"><i class="icon-user"></i></span><input type="text" placeholder="Username"  id="required"  name="required"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on"><i class="icon-lock"></i></span><input type="password" placeholder="Password" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-warning" id="to-recover">Lost password?</a></span>
                    <span class="pull-right"><input type="submit" class="btn btn-success" value="Login" /></span>
                </div>
            </form>
            <form id="recoverform" action="#" class="form-vertical">
				<p class="normal_text">Enter your e-mail address below and we will send you instructions <br/><font color="#FF6633">how to recover a password.</font></p>
				
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on"><i class="icon-envelope"></i></span><input type="text" placeholder="E-mail address" />
                        </div>
                    </div>
               
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-warning" id="to-login">&laquo; Back to login</a></span>
                    <span class="pull-right"><input type="submit" class="btn btn-info" value="Recover" /></span>
                </div>
            </form>
        </div>
        

    </body>

</html>

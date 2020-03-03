<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication4.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <!-- main -->
<div class="center-container">
	<!--header-->
	<div class="header-w3l">
		<h1>Online Login Form</h1>
	</div>
	<!--//header-->
	<div class="main-content-agile">
		<div class="sub-main-w3">	
			<div class="wthree-pro">
				<h2>Login Quick</h2>
			</div>
			<form action="#" method="post">
				<div class="pom-agile">
					<input placeholder="E-mail" name="Name" class="user" type="email" required=""/>
                    <span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span>
				</div>
				<div class="pom-agile">
					<input  placeholder="Password" name="Password" class="pass" type="password" required="" id="pass"  />
					<span class="icon2"><i class="fa fa-unlock" aria-hidden="true"></i></span>
				</div>
				<div class="sub-w3l">
				
					<div class="right-w3l">
						<input type="submit" value="Login" onclick="login_submit" >
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--//main-->
	<!--footer-->
	<div class="footer">
		<p>&copy; 2017 Online Login Form. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
	</div>
	<!--//footer-->
</div>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>

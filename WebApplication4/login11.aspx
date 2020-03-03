<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="login11.aspx.cs" Inherits="WebApplication4.login11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!DOCTYPE html>

   
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />
   
   
<div class="center-container">
	
	<div class="header-w3l">
		<h1>Good luck!</h1>
	</div>

	<div class="main-content-agile">
		<div class="sub-main-w3">	
			<div class="wthree-pro">
				<h2>Login Quick</h2>
			</div>
			<form action="#" method="post" runat="server" >
			       <div class="pom-agile">
                                 
                  
                       <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Email" Width="340px" placeholder="Email"></asp:TextBox><br/>
				</div>
				<div class="pom-agile">
					
					 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Password" Width="340px" placeholder="Password"></asp:TextBox>
				</div>
				<div class="sub-w3l">
				
					<div class="right-w3l">
                        <asp:Button ID="Button1" runat="server" Text="Start" OnClick="Button1_Click" />
					</div>
				</div>
			</form>
		</div>
	</div>
	
</div>
   
        <div>
        </div>
  

</asp:Content>

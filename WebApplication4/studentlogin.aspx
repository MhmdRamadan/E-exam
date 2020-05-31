<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="studentlogin.aspx.cs" Inherits="WebApplication4.studentlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <!DOCTYPE html>

   
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />
   
   
<div class="center-container">
	
	<div class="header-w3l">
		<h1>Student</h1>
	</div>

	<div class="main-content-agile">
		<div class="sub-main-w3">	
			<div class="wthree-pro">
				
			</div>
			<form action="#" method="post" runat="server" >
			       <div class="pom-agile">
                                 
                  
                       <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="340px" placeholder="Username"></asp:TextBox><br/>
				</div>
				<div class="pom-agile">
					
					 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Password" Width="340px" placeholder="Password"></asp:TextBox>
				</div>
				<div class="sub-w3l">
				
					<div class="right-w3l">
                        <asp:Button ID="Button1" runat="server" Text="Login
                            " OnClick="Button2_Click" />
					    <br />
                         <br />
                        <asp:Label ID="Label1" runat="server" Text="Data isn't found" ForeColor="Red" CssClass="form-control" Visible="false"></asp:Label>
                       
					</div>
				</div>
			</form>
		</div>
	</div>
	
</div>
   
        <div>
        </div>
</asp:Content>

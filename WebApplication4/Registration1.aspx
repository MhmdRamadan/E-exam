<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Registration1.aspx.cs" Inherits="WebApplication4.Registration1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!DOCTYPE html>

   
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />
   
   
<div class="center-container">
	
	<div class="header-w3l">
		<h1>Registration Form</h1>
	</div>

	<div class="main-content-agile">
		<div class="sub-main-w3">	
			<div class="wthree-pro">
				
			</div>
			<form action="#" method="post" runat="server" >
			       <div class="pom-agile">
                                 
                      
                      <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Fullname" ></asp:TextBox><br/>
				</div>
                <div class="pom-agile">
					
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" placehoder="Gender">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList><br/>
				</div>
                <div class="pom-agile">
					 <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Phone"></asp:TextBox><br/>
                    
				</div>
				<div class="pom-agile">
					
					 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox><br/>
				</div>
                <div class="pom-agile">
					
					 <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox><br/>
				</div>
                 <div class="pom-agile">
					
					 <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox><br/>
				</div>
                <div class="pom-agile">
					
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" placeholder="Type of user">
                        <asp:ListItem Selected="True">Proffessor</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList><br/>
				</div>
				<div class="sub-w3l">
				
					<div class="right-w3l">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  />
					</div>
				</div>
			</form>
		</div>
	</div>
	
</div>
   
        <div>
        </div>
  

</asp:Content>

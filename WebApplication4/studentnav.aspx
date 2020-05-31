<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="studentnav.aspx.cs" Inherits="WebApplication4.studentnav" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <!DOCTYPE html>

   
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />
   
   
   
<div class="center-container">
	
	<div class="header-w3l">
		<h1>Choose The Subject</h1>
	</div>

	<div class="main-content-agile">
		<div class="sub-main-w3">	
			<div class="wthree-pro">
				
			</div>
			<form id="form1" runat="server">
			       <div class="pom-agile">
                                 
                  
                       <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="subject"  DataValueField="subject"></asp:DropDownList>
				       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString2 %>" SelectCommand="SELECT [subject] FROM [Table_subjects] WHERE ([id] = @id)">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="Label1" Name="id" PropertyName="Text" Type="Int32" />
                           </SelectParameters>
                       </asp:SqlDataSource>
				</div>
			
				<div class="sub-w3l">
				
					<div class="right-w3l">
                        <asp:Button ID="Button1" runat="server" Text="Start" OnClick="Button1_Click" />
					    <br />
                       
                       
                       
					    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                       
                       <div class="right-w3l">
                        <asp:Button ID="Button2" runat="server" Text="Log out" OnClick="Button2_Click" />
				</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	
</div>
   
        <div>
        </div>
</asp:Content>

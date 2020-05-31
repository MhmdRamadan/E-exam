<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="professorresults.aspx.cs" Inherits="WebApplication4.professorresults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!DOCTYPE html>

   
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />

    <link href="css/all.css" rel="stylesheet" />
   
<div class="center-container">
	
	<div class="header-w3l">
		<h1>Levels and Departments</h1>
	</div>

	<div class="main-content-agile">
		<div class="sub-main-w3">	
			
			<form id="form1" runat="server">
			       <div class="pom-agile">
                       <asp:GridView ID="GridView1" runat="server" CssClass="mGrid" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                           <Columns>
                               <asp:BoundField DataField="student" HeaderText="student" SortExpression="student" />
                               <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                               <asp:BoundField DataField="degree" HeaderText="degree" SortExpression="degree" />
                           </Columns>
                       </asp:GridView>
				
				       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [student], [subject], [degree] FROM [Table_results]"></asp:SqlDataSource>
				
				</div>
				
               
		
			</form>
		</div>
	</div>
	</div>

   
      
</asp:Content>

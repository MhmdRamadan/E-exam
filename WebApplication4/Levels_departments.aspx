<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Levels_departments.aspx.cs" Inherits="WebApplication4.Levels_departments" %>
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
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:GridView ID="GridView1" runat="server" CssClass="mGrid" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="333px" Height="116px">
                           <AlternatingRowStyle BackColor="White" />
                           <Columns>
                               <asp:BoundField DataField="level_name" HeaderText="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Level Name" SortExpression="level_name" />
                               <asp:BoundField DataField="department" HeaderText="&nbsp;&nbsp;&nbsp;&nbsp;Department" SortExpression="department" />
                           </Columns>
                           <FooterStyle BackColor="#CCCC99" />
                           <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                           <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                           <RowStyle BackColor="#F7F7DE" />
                           <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                           <SortedAscendingCellStyle BackColor="#FBFBF2" />
                           <SortedAscendingHeaderStyle BackColor="#848384" />
                           <SortedDescendingCellStyle BackColor="#EAEAD3" />
                           <SortedDescendingHeaderStyle BackColor="#575357" />
                       </asp:GridView>
                       <br />
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [level_name], [department] FROM [Table_level]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                  
				&nbsp;
				
				<br />
				<br />
				<br />
				
				
				</div>
				<div class="pom-agile">
					<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter the level name" ForeColor="Red"></asp:RequiredFieldValidator>
					<br />
					 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  Width="340px" placeholder="Level"></asp:TextBox>
				</div>
                <div class="pom-agile">
				
					<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter the department" ForeColor="Red"></asp:RequiredFieldValidator>
				
					<br />
					 <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"  Width="340px" placeholder="Department"></asp:TextBox>
				</div>
				<div class="sub-w3l">
				
					<div class="right-w3l">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="proffessor" Visible="false"></asp:Label>
					</div>
				</div>
			</form>
		</div>
	</div>
	
</div>
   
        <div>
        </div>
</asp:Content>

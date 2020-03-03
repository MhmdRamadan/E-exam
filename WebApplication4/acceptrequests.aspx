<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="acceptrequests.aspx.cs" Inherits="WebApplication4.accept_requests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />
   
   
<div class="center-container">
	
	<div class="header-w3l">
		<h1>Requests</h1>
	</div>

	<div class="main-content-agile">
		<div class="sub-main-w3">	
	
			<form action="#" method="post" runat="server" >
			       <div class="pom-agile">      
                       <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="349px">
                           <AlternatingRowStyle BackColor="White" />
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
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [username], [typeofuser], [password] FROM [Table_2]"></asp:SqlDataSource>
				</div>
				<div class="pom-agile">
					<br />
					 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  Width="340px" placeholder="Username"></asp:TextBox>
				</div>
				<div class="sub-w3l">
				
					<div class="right-w3l">
                        <asp:Button ID="Button1" runat="server" Text="Accept" OnClick="Button1_Click1"  /><br /><br />
                        <asp:Label ID="Label6" runat="server"  Text="Label" Visible="false" color="Red" ForeColor="white"></asp:Label>
					</div>
				</div>
			</form>
		</div>
	</div>
	
</div>
   
        <div>
        </div>
  
</asp:Content>

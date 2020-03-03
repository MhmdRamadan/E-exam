<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Specifysubject.aspx.cs" Inherits="WebApplication4.Specifysubject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!DOCTYPE html>

   
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />
   
   
<div class="center-container">
	
	<div class="header-w3l">
		<h1>Specify The Subject</h1>
	</div>

	<div class="main-content-agile">
		<div class="sub-main-w3">	
			
			<form action="#" method="post" runat="server" >
			       <div class="pom-agile">
                                 
                  
                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="326px" DataKeyNames="username">
                           <AlternatingRowStyle BackColor="White" />
                           <Columns>
                               <asp:BoundField DataField="username" HeaderText="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Username" SortExpression="username" ReadOnly="True" />
                               <asp:BoundField DataField="subject" HeaderText="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Subject" SortExpression="subject" />
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
                      
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString2 %>" SelectCommand="SELECT [username], [subject] FROM [Table_1] WHERE ([typeofuser] = @typeofuser)" OnSelecting="SqlDataSource1_Selecting">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="Label1" Name="typeofuser" PropertyName="Text" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>
				&nbsp;
				<br />
				<br />
				<br />
				<br />
				<br />
				
				
				</div>
				<div class="pom-agile">
				
					<br />
					 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  Width="340px" placeholder="Username"></asp:TextBox>
				</div>
                <div class="pom-agile">
				
					<br />
					 <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"  Width="340px" placeholder="Subject"></asp:TextBox>
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

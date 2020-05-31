<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="subject.aspx.cs" Inherits="WebApplication4.subject" %>
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
                       <asp:GridView ID="GridView1"  runat="server" CssClass="mGrid" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False" DataKeyNames="subject" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                           <AlternatingRowStyle BackColor="White" />
                           <Columns>
                               <asp:BoundField DataField="subject" HeaderText="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Subjects" SortExpression="subject" ReadOnly="True" />
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
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT DISTINCT [level_name]FROM [Table_level]"></asp:SqlDataSource>
                  
				<asp:DropDownList ID="Name" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control"  DataTextField="level_name" DataValueField="level_name" AutoPostBack="True"></asp:DropDownList>
				
				<br />
				<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT DISTINCT [department] FROM [Table_level] WHERE ([level_name] = @level_name)">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="Name" Name="level_name" PropertyName="SelectedValue" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>
                       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [id] FROM [Table_level] WHERE (([level_name] = @levelname) AND ([department] = @department))">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="Name" Name="levelname" runat="server" PropertyName="SelectedValue" />
                               <asp:ControlParameter ControlID="Department" Name="department" PropertyName="SelectedValue" runat="server" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>
                       <asp:DropDownList ID="Department" runat="server" CssClass="form-control"  DataSourceID="SqlDataSource2" DataTextField="department" DataValueField="department" AutoPostBack="True"></asp:DropDownList>
                       <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [subject] FROM [Table_subjects]"></asp:SqlDataSource>
                       
				
				
				</div>
				<div class="pom-agile">
					]<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter the subject !!" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  Width="340px" placeholder="Subject"></asp:TextBox>
				</div>
               
				<div class="sub-w3l">
				
					<div class="right-w3l">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Height="46px"  />
                        <br />
					</div>
				</div>
			</form>
		</div>
	</div>
	
</div>
   
        <div>
        </div>
</asp:Content>

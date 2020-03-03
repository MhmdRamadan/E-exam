<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="subject.aspx.cs" Inherits="WebApplication4.subject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <!DOCTYPE html>

   
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />
   
   
<div class="center-container">
	
	<div class="header-w3l">
		<h1>Levels and Departments</h1>
	</div>

	<div class="main-content-agile">
		<div class="sub-main-w3">	
			
			<form id="form1" runat="server">
			       <div class="pom-agile">
                     
                       <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource3">
                           <Columns>
                               <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                           </Columns>
                       </asp:GridView>
                       <br />
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT DISTINCT [level_name]FROM [Table_level]"></asp:SqlDataSource>
                  
				<asp:DropDownList ID="Name" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control"  DataTextField="level_name" DataValueField="level_name" AutoPostBack="True"></asp:DropDownList>
				
				<br />
				<br />
                       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT DISTINCT [department] FROM [Table_level]"></asp:SqlDataSource>
                       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [id] FROM [Table_level] WHERE (([department] = @department) AND ([level_name] = @level_name))">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="Department" Name="department" PropertyName="SelectedValue" runat="server" Type="String" />
                               <asp:ControlParameter ControlID="Name" Name="level_name" runat="server" PropertyName="SelectedValue" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>
                       <asp:DropDownList ID="Department" runat="server" CssClass="form-control"  DataSourceID="SqlDataSource2" DataTextField="department" DataValueField="department" AutoPostBack="True"></asp:DropDownList><br />
				
				
				</div>
				<div class="pom-agile">
					<br />
					 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  Width="340px" placeholder="Subject"></asp:TextBox>
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

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
		
				
			
			<form id="form1" runat="server">
			       <div class="pom-agile">
                                 
                      
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter the full name " ForeColor="Red"></asp:RequiredFieldValidator>
                       <br />
                                 
                      
                      <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Fullname" ></asp:TextBox>
                       <br />
                       <br/>
				</div>
                <div class="pom-agile">
					
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" placehoder="Gender">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList><br/>
				</div>
                <div class="pom-agile">
					 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Enter the phone number " ForeColor="Red"></asp:RequiredFieldValidator>
                     <br />
					 <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Phone"></asp:TextBox><br/>
                    
				</div>
				<div class="pom-agile">
					
					 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Enter User name" ForeColor="Red"></asp:RequiredFieldValidator>
                     <br />
					
					 <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox><br/>
				</div>
                <div class="pom-agile">
					
					 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter E-mail" ForeColor="Red"></asp:RequiredFieldValidator>
                     <br />
					
					 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email" Width="318px"></asp:TextBox>
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
				</div>
                 <div class="pom-agile">
					
					 <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password" Width="320px"></asp:TextBox>
                     <br />
                     <br/>
				</div>
                <div class="pom-agile">
					
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" placeholder="Type of user" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Proffessor</asp:ListItem>
                        <asp:ListItem Selected="True">Student</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br/>
				</div>
                        <div class="pom-agile">
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT DISTINCT [level_name]FROM [Table_level]"></asp:SqlDataSource>
                  
				<asp:DropDownList ID="Name" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control"  DataTextField="level_name" DataValueField="level_name" AutoPostBack="True"></asp:DropDownList>
				
				<br />
				<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [department] FROM [Table_level] WHERE ([level_name] = @level_name)">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="Name" Name="level_name" PropertyName="SelectedValue" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>
                       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [id] FROM [Table_level] WHERE (([department] = @department) AND ([level_name] = @level_name))">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="Department" Name="department" PropertyName="SelectedValue" runat="server" Type="String" />
                               <asp:ControlParameter ControlID="Name" Name="level_name" runat="server" PropertyName="SelectedValue" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>
                       <asp:DropDownList ID="Department" runat="server" CssClass="form-control"  DataSourceID="SqlDataSource2" DataTextField="department" DataValueField="department" AutoPostBack="True" OnSelectedIndexChanged="Department_SelectedIndexChanged"></asp:DropDownList>
                       <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [subject] FROM [Table_subjects]"></asp:SqlDataSource>
                       
				
				
				</div>
                <div class="sub-w3l">
					<div class="right-w3l" style="margin-top: 0em">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"    />
							</div>
				</div>
			</form>
		</div>
	</div>
	
</div>
   
        <div>
        </div>
	

        <div>
        </div>
  
    
</asp:Content>

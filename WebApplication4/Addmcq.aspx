<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Addmcq.aspx.cs" Inherits="WebApplication4.Addmcq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <!DOCTYPE html>

   
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/all.css" rel="stylesheet" />
   
<div class="center-container">
	
	<div class="header-w3l">
		<h1>Add Mcq!</h1>
	</div>

	<div class="main-content-agile">
		<div class="sub-main-w3">	
			<div class="wthree-pro">
				
			</div>
			<form id="form1" runat="server">
			       
                       <div class="row">
                       <asp:GridView ID="GridView1" runat="server" CssClass="mGrid" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource3">
                           <Columns>
                               <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                               <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                               <asp:BoundField DataField="chapter" HeaderText="chapter" SortExpression="chapter" />
                               <asp:BoundField DataField="question" HeaderText="question" SortExpression="question" />
                               <asp:BoundField DataField="first" HeaderText="first" SortExpression="first" />
                               <asp:BoundField DataField="second" HeaderText="second" SortExpression="second" />
                               <asp:BoundField DataField="third" HeaderText="third" SortExpression="third" />
                               <asp:BoundField DataField="correct" HeaderText="correct" SortExpression="correct" />
                               <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                           </Columns>
                       </asp:GridView>      
                       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT * FROM [mcqquestions]"></asp:SqlDataSource>
                      <br />
                       
                       <asp:Label ID="Label1" visible="false" runat="server" Text="Label"></asp:Label>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [subject] FROM [prof] WHERE ([proffessor] = @proffessor)">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="Label1" Name="proffessor" PropertyName="Text" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>
                       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [chapter] FROM [chapters] WHERE ([subject] = @subject)">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="DropDownList3" Name="subject" PropertyName="SelectedValue" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>
                       <br />
				</div>
                  <div class="pom-agile">
                      <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" placeholder="Subject" DataSourceID="SqlDataSource1" DataTextField="subject" DataValueField="subject" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
				</div>
                <div class="pom-agile">
					<br />
                    <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="chapter" DataValueField="chapter">
                    </asp:DropDownList>
                    <br/>
				</div>
                <div class="pom-agile">
					 <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Question"></asp:TextBox><br/>
                    
				</div>
				<div class="pom-agile">
					
					 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="First choice"></asp:TextBox><br/>
				</div>
                <div class="pom-agile">
					
					 <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Second choice"></asp:TextBox><br/>
				</div>
                 <div class="pom-agile">
					
					 <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Third choice"></asp:TextBox><br/>
				</div>
                
                <div class="pom-agile">
					
                     <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Correct answer"></asp:TextBox><br/>
				</div>
                  <div class="pom-agile">
                      <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" placeholder="Category">
                          <asp:ListItem>A</asp:ListItem>
                          <asp:ListItem>B</asp:ListItem>
                          <asp:ListItem>C</asp:ListItem>
                      </asp:DropDownList>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Structureofexam.aspx.cs" Inherits="WebApplication4.Structureofexam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!DOCTYPE html>

   
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/all.css" rel="stylesheet" />
   
<div class="center-container">
	
	<div class="header-w3l">
		<h1>Structure of the Exam</h1>
	</div>

	<div class="main-content-agile">
		<div class="sub-main-w3">	
			<div class="wthree-pro">
				
			</div>
			<form id="form1" runat="server">
			       
                       <div class="row">
                       <asp:GridView ID="GridView1" runat="server" CssClass="mGrid" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                           <Columns>
                               <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                               <asp:BoundField DataField="chapter" HeaderText="chapter" SortExpression="chapter" />
                               <asp:BoundField DataField="examno" HeaderText="examno" SortExpression="examno" />
                               <asp:BoundField DataField="noofmcq" HeaderText="noofmcq" SortExpression="noofmcq" />
                               <asp:BoundField DataField="nooftandf" HeaderText="nooftandf" SortExpression="nooftandf" />
                               <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                           </Columns>
                       </asp:GridView>      
                           <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT * FROM [examstructure]"></asp:SqlDataSource>
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
                      <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" placeholder="Subject" DataSourceID="SqlDataSource1" DataTextField="subject" DataValueField="subject" AutoPostBack="True" ></asp:DropDownList>
				</div>
                <div class="pom-agile">
					<br />
                    <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="chapter" DataValueField="chapter">
                    </asp:DropDownList>
                    <br/>
				</div>
                <div class="pom-agile">
					 <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Exam number"></asp:TextBox><br/>
                    
				</div>
				<div class="pom-agile">
					
					 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Number of MCQ"></asp:TextBox><br/>
				</div>
                <div class="pom-agile">
					
					 <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Number of true and false"></asp:TextBox><br/>
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

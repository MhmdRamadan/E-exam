<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Addtrueorfalse.aspx.cs" Inherits="WebApplication4.Addtrueorfalse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!DOCTYPE html>

   
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/all.css" rel="stylesheet" />
   
<div class="center-container">
	
	<div class="header-w3l">
		<h1>Add Questions!</h1>
	</div>

	<div class="main-content-agile">
		<div class="sub-main-w3">	
			<form id="form1" runat="server">
			<div class="wthree-pro">
				
			    <asp:GridView ID="GridView1" CssClass="mGrid" AlternatingRowStyle-CssClass="alt" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                        <asp:BoundField DataField="chapter" HeaderText="chapter" SortExpression="chapter" />
                        <asp:BoundField DataField="question" HeaderText="question" SortExpression="question" />
                        <asp:BoundField DataField="correct" HeaderText="correct" SortExpression="correct" />
                        <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [subject], [chapter], [question], [correct], [category] FROM [tandfquestions]"></asp:SqlDataSource>
				
			</div>
			       <div class="pom-agile">
                                 
                      
                       <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control" AutoPostBack="True" DataTextField="subject" DataValueField="subject"></asp:DropDownList>      
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [subject] FROM [prof] WHERE ([proffessor] = @proffessor)">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="Label1" Name="proffessor" PropertyName="Text" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource><br />
                       <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                       <br/><br />
                       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString2 %>" SelectCommand="SELECT [chapter] FROM [chapters] WHERE ([subject] = @subject)">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="DropDownList3" Name="subject" PropertyName="SelectedValue" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>
				</div>
                <div class="pom-agile">
					
                    <asp:DropDownList ID="DropDownList2" runat="server"  CssClass="form-control"  placeholder="Chapter" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="chapter" DataValueField="chapter"></asp:DropDownList><br/><br />
				</div>
                <div class="pom-agile">
					 <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Question"></asp:TextBox><br/>
                    
				</div>
                <div class="pom-agile">
					
                    <br />
					
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">
                        <asp:ListItem>True</asp:ListItem>
                        <asp:ListItem>False</asp:ListItem>
                    </asp:DropDownList><br />
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

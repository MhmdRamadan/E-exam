<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="chapters.aspx.cs" Inherits="WebApplication4.chapters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <!DOCTYPE html>

   
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/all.css" rel="stylesheet" />
   
<div class="center-container">
	
	<div class="header-w3l">
		<h1>Edit chapters</h1>
	</div>

	<div class="main-content-agile">
		<div class="sub-main-w3">	
			<div class="wthree-pro">
				
			</div>
			<form id="form1" runat="server">
			       <div class="pom-agile">
                       <asp:GridView ID="GridView1" runat="server" CssClass="mGrid" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False" DataKeyNames="chapter" DataSourceID="SqlDataSource2">
                           <Columns>
                               <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                               <asp:BoundField DataField="chapter" HeaderText="chapter" ReadOnly="True" SortExpression="chapter" />
                               <asp:BoundField DataField="no_of_mcq" HeaderText="no_of_mcq" SortExpression="no_of_mcq" />
                               <asp:BoundField DataField="no_of_tandf" HeaderText="no_of_tandf" SortExpression="no_of_tandf" />
                           </Columns>
                       </asp:GridView>
                       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT * FROM [chapters]"></asp:SqlDataSource>
                       <br />
                                 
                       <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="subject" DataValueField="subject"></asp:DropDownList>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT [subject] FROM [prof] WHERE ([proffessor] = @proffessor)">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="Label1" Name="proffessor" PropertyName="Text" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>
                       <asp:Label ID="Label1" Visible="false" runat="server" Text="Label"></asp:Label>
                       
                <br />
				</div>
                <div class="pom-agile">
					
                   <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Chapter"></asp:TextBox><br/>
				</div>
                <div class="pom-agile">
					 <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Number of mcq questions"></asp:TextBox><br/>
                    
				</div>
				<div class="pom-agile">
					
					 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Number of true or false questions"></asp:TextBox><br/>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="profnavigation.aspx.cs" Inherits="WebApplication4.proffessornavigation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!DOCTYPE html>
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />
   
   
<div class="center-container">
	
	<div class="header-w3l">
	<h1>Options</h1>
	</div>

	<div class="main-content-agile">
	<div class="sub-main-w3">	
			
			<form action="#" method="post" runat="server" >
			       <div class="pom-agile">                                             
                    <a href="chapters.aspx" class="btn btn-primary" role="button" aria-disabled="true" style="width: 300px">Chapters</a><br /><br />
				</div>
				<div class="pom-agile">					
                    <a href="questionnav.aspx" class="btn btn-primary" role="button" aria-disabled="true" style="width: 300px">Add Questions</a><br /><br />
			
				</div>
                	<div class="pom-agile">			
                    <a href="Structureofexam.aspx" class="btn btn-primary" role="button" aria-disabled="true" style="width: 300px">Structure of exam</a><br /><br />
				

				</div>
                <div class="pom-agile">			
                    <a href="professorresults.aspx" class="btn btn-primary" role="button" aria-disabled="true" style="width: 300px">Students </a><br/>
				
				</div>
                <div class="right-w3l">
                        <asp:Button ID="Button1" runat="server" Text="Log out" OnClick="Button1_Click" />
				</div>
			</form>
		</div>
	</div>
	
</div>
   
        <div>
        </div>
  
</asp:Content>

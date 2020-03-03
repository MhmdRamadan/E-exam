<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="adminNavigation.aspx.cs" Inherits="WebApplication4.adminNavigation" %>
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
                    <a href="acceptrequests.aspx" class="btn btn-primary" role="button" aria-disabled="true" style="width: 300px">Accept Requests</a><br /><br />
				</div>
				<div class="pom-agile">					
                    <a href="Specifysubject.aspx" class="btn btn-primary" role="button" aria-disabled="true" style="width: 300px">Specify Subjects</a><br /><br />
			
				</div>
                	<div class="pom-agile">			
                    <a href="Levels_departments.aspx" class="btn btn-primary" role="button" aria-disabled="true" style="width: 300px">Levels and Departments</a><br /><br />
				

				</div>
                <div class="pom-agile">			
                    <a href="subject.aspx" class="btn btn-primary" role="button" aria-disabled="true" style="width: 300px">Subjects</a><br/>
				
				</div>
				
			</form>
		</div>
	</div>
	
</div>
   
        <div>
        </div>
  
  
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="questionnav.aspx.cs" Inherits="WebApplication4.questionnav" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <!DOCTYPE html>
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <link href="css/fontawesome.min.css" rel="stylesheet" />
   
   
<div class="center-container">
	
	<div class="header-w3l">
	<h1>Questions</h1>
	</div>

	<div class="main-content-agile">
	<div class="sub-main-w3">	
			
			<form action="#" method="post" runat="server" >
			       <div class="pom-agile">                                             
                    <a href="Addmcq.aspx" class="btn btn-primary" role="button" aria-disabled="true" style="width: 300px">Multible choice questions</a><br />
				</div>
				<div class="pom-agile" style="left: 0px; top: 20px">					
                    <a href="Addtrueorfalse.aspx" class="btn btn-primary" role="button" aria-disabled="true" style="width: 300px">True or False questions</a><br />
			
				</div>
                	
			</form>
		</div>
	</div>
	
</div>
   
        <div>
        </div>
  
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="try1.aspx.cs" Inherits="WebApplication4.try1" %>

<!DOCTYPE html>
<style>
    h1{
        text-align:center;
        font-size:50px;
    }
  .button {
  background-color: #555555; 
  border-radius:12px;
  color: white;
  padding:14px 40px;;
  text-align: center;
  text-decoration: none;
   
  display: inline-block;
  font-size: 16px;
}
  .button:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
  cursor:pointer;
}


</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body runat="server">
    <h1 >Exam</h1>
   <form id="form1" runat="server">
       <hr />
       <asp:Panel ID="Panel1" runat="server"></asp:Panel>
       <hr />
       <br />
       <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Cssclass="button" Text="submit" />
      
         </form>

</body>
</html>

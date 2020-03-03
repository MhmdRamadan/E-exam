<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication4.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            width: 580px;
            height: 100%;
            margin-left:0px;
            margin-right: 64px;
        }
        .auto-style4 {
            text-decoration: underline;
            font-size: xx-large;
        }
        .auto-style6 {
            height: 19px;
            width: 120px;
        }
        .auto-style7 {
            height: 23px;
            width: 120px;
        }
        .auto-style8 {
            text-align: right;
            width: 226px;
        }
        .auto-style9 {
            height: 19px;
            text-align: left;
            width: 147px;
        }
        .auto-style10 {
            height: 23px;
            text-align: left;
            width: 147px;
        }
        .auto-style11 {
            text-align: left;
            height: 27px;
            width: 147px;
        }
        .auto-style12 {
            height: 27px;
            width: 120px;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            text-align: left;
            width: 147px;
        }
        .auto-style16 {
            color: #FF0000;
        }
        .auto-style17 {
            height: 27px;
            width: 226px;
        }
        .auto-style18 {
            width: 226px;
        }
        .auto-style19 {
            height: 19px;
            width: 226px;
        }
        .auto-style20 {
            height: 23px;
            width: 226px;
        }
        .auto-style21 {
            width: 120px;
        }
    .auto-style22 {
        color: #CC3300;
        font-size: large;
        margin-right: 0px;
        margin-top: 2px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    
  
  
          
 <div class="form-group">
        
           
                <h1 class="auto-style13"><em><strong>
               <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Registration form" ></asp:Label>
                    &nbsp;
                    </strong></em></h1>
     
           
                <asp:Label ID="Label2" runat="server" Text="Full name :"></asp:Label>
          
                <asp:TextBox ID="TextBox1" runat="server" Width="176px" CssClass="text"></asp:TextBox>
     
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" CssClass="auto-style16" ErrorMessage="!!" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
         
          
           
                <strong>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                </strong>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" CssClass="auto-style16" ErrorMessage="!!" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
         
                <asp:Label ID="Label4" runat="server" Text="Country :"></asp:Label>
       
                <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="182px">
                    <asp:ListItem>Egypt</asp:ListItem>
                    <asp:ListItem>Australia</asp:ListItem>
                    <asp:ListItem>London</asp:ListItem>
                    <asp:ListItem>Paris</asp:ListItem>
                    <asp:ListItem>England</asp:ListItem>
                    <asp:ListItem>Usa</asp:ListItem>
                    <asp:ListItem>india</asp:ListItem>
                </asp:DropDownList>
         
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" CssClass="auto-style16" ErrorMessage="!!" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
         
                <asp:Label ID="Label5" runat="server" Text="Phone :"></asp:Label>
            
                <asp:TextBox ID="TextBox2" runat="server" Width="176px"></asp:TextBox>
          
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" CssClass="auto-style16" ErrorMessage="!!" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
       
          
                <asp:Label ID="Label6" runat="server" Text="Email :"></asp:Label>
          
                <asp:TextBox ID="TextBox3" runat="server" Width="176px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="auto-style16" ErrorMessage="!!" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" CssClass="auto-style16" ErrorMessage="Invalid Email !" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        
           
                <asp:Label ID="Label7" runat="server" Text="User Name :"></asp:Label>
           
                <asp:TextBox ID="TextBox4" runat="server" Width="176px"></asp:TextBox>
       
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="auto-style16" ErrorMessage="!!" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>

                <asp:Label ID="Label8" runat="server" Text="Password :"></asp:Label>
         
                <asp:TextBox ID="TextBox5" runat="server" Width="176px" TextMode="Password"></asp:TextBox>
           
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="auto-style16" ErrorMessage="!!" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
      
     
                <asp:Label ID="Label9" runat="server" Text="Confirm password :"></asp:Label>
         
                <asp:TextBox ID="TextBox6" runat="server" Width="176px" TextMode="Password"></asp:TextBox>
        
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" CssClass="auto-style16" ErrorMessage="Doesn't match"></asp:CompareValidator>
       
                <asp:Label ID="Label10" runat="server" Text="Captcha image :"></asp:Label>
          
                <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/captchaimage.aspx" Width="133px" />
          
     
                <asp:Label ID="Label11" runat="server" Text="Captcha text :"></asp:Label>
           
                <asp:TextBox ID="TextBox8" runat="server" Width="176px"></asp:TextBox>
        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="auto-style16" ErrorMessage="!!" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
            
                <asp:Label ID="Label12" runat="server" Text="Type of user :"></asp:Label>
         
                <asp:DropDownList ID="DropDownList2" runat="server" Height="23px" Width="179px">
                    <asp:ListItem>Proffessor</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                </asp:DropDownList>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style16" ErrorMessage="!!" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
          
            
                <asp:Button ID="Button1" runat="server" Height="35px" Text="Register" Width="255px" OnClick="Button1_Click" CssClass="btn btn-outline-success" />
         
     
          
                <asp:Label ID="Label13" runat="server" Text="label"></asp:Label>
          

    <br />
    <asp:Image ID="Image3" runat="server" Height="275px" ImageUrl="~/pics/registration.png" Width="396px" />
     </div>
</asp:Content>

   
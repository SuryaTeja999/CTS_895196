<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MovieCruiserProject.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="style.css" rel="stylesheet" />
</head>
<body style="border:none">
    <form ID="loginForm" runat="server">
        <p style="margin:0px;font-size:30px;font-weight:bolder;text-align:center;">Login Here!!</p><br />
     <asp:Label  runat="server" >Enter User ID</asp:Label><br />
     <asp:RequiredFieldValidator  ID="txtName" ErrorMessage="Please enter Username" ForeColor="red" ControlToValidate="txtUserId" runat="server" style="font-size:15px;"/><br />
     <asp:TextBox class="loginform" ID="txtUserId" runat="server" Columns="30"></asp:TextBox><br />
        <br />
    <asp:Label   runat="server" >Enter Password</asp:Label><br />
    <asp:RequiredFieldValidator  ID="txtPassword" runat="server" ForeColor="red" ControlToValidate="txtUserPassword" ErrorMessage="Please enter Password" style="font-size:15px;"/><br />
    <asp:TextBox class="loginform" ID="txtUserPassword" runat="server" Columns="30"></asp:TextBox>
    <br /><br />
    <asp:Button ID="Btnlogin" runat="server"  Text="Login" OnClick="Btnlogin_Click" BackColor="blue" ForeColor="White" Font-Size="14" style="padding:8px;"/> 
    </form>
</body>
</html>

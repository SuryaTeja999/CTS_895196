<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="MovieCruiserProject.AdminLogin" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="style.css" rel="stylesheet" />
</head>
<body style="border:none">
    <form ID="loginForm" runat="server">
      <p style="margin:0px;font-size:30px;font-weight:bolder;text-align:center;">Admin Login</p><br />
     <asp:Label  runat="server" >Enter User ID</asp:Label><br />
     <asp:TextBox  ID="txtUserId" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator  ID="txtName" ErrorMessage="Please enter Username" ControlToValidate="txtUserId" runat="server" style="font-size:15px;"/>
     <br />
    <asp:Label   runat="server" >Enter Password</asp:Label><br />
    <asp:TextBox ID="txtUserPassword" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator  ID="txtPassword" runat="server" ControlToValidate="txtUserPassword" ErrorMessage="Please enter Password" style="font-size:15px;"/>
    <br /><br />
    <asp:Button  runat="server"  Text="Login" OnClick="Btnlogin_Click" BackColor="blue" ForeColor="White" Font-Size="14" style="padding:8px;"/>  
     <asp:HyperLink runat="server"   NavigateUrl="CustomerLogin.aspx" Text="Click here to Login As Customer"  ForeColor="red" ID="link1" style="font-size:12px;"></asp:HyperLink>
    </form>
</body>
</html>

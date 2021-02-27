<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditMovie.aspx.cs" Inherits="MovieCruiserProject.EditMovie" %>
<asp:Content  ContentPlaceHolderID="administratorContent" runat="server">
    <h3> Edit Movie</h3>
      <div class="edittitle">
         <asp:Label   runat="server" >Title</asp:Label><br />
          <asp:RegularExpressionValidator 
              Display = "Dynamic" ControlToValidate = "txtMovieTitle" 
              ValidationExpression = "^[\s\S]{0,15}$" 
              runat="server" ForeColor="Red" ErrorMessage="Maximum 15 characters allowed."></asp:RegularExpressionValidator><br />   
          <asp:TextBox ID="txtMovieTitle" columns="80"  runat="server" ></asp:TextBox><br />
          <asp:RequiredFieldValidator ForeColor="Red" runat="server" 
             ControlToValidate="txtMovieTitle">Movie Title cannot be empty</asp:RequiredFieldValidator>
      </div>

        
    <div class="formelements">
        <asp:Label  runat="server" >Gross(&#36;)</asp:Label><br />
        <asp:RegularExpressionValidator ForeColor="Red"  ControlToValidate="txtBoxOfficeCollection"
         ValidationExpression="\d+" Display ="Static" EnableClientScript ="true" ErrorMessage ="Please enter numbers only" runat="server" />
        </asp:RegularExpressionValidator><br />
         <asp:TextBox ID="txtBoxOfficeCollection" cssclass="textbox"  MaxLength="12" runat="server"></asp:TextBox><br />
         <asp:RequiredFieldValidator ForeColor="Red"  runat="server" ControlToValidate="txtBoxOfficeCollection">
         Gross cannot be empty</asp:RequiredFieldValidator>
  </div>

    <div class="formelements">
            <asp:Label  runat="server" >Active</asp:Label><br /><br />
            <asp:RadioButton ID="txtMovieActive"  cssclass="radio" Text="Yes" checked="true" runat="server" ViewStateMode="Disabled" GroupName="active" />
            <asp:RadioButton ID="txtMovieNotActive"  cssclass="radio" Text="No" runat="server" GroupName="active" />
     </div>
    <div class="formelements">
            <asp:Label  runat="server">Date Of Launch</asp:Label><br />
            <asp:RegularExpressionValidator runat="server" ForeColor="Red" ControlToValidate="txtDateOfLaunch" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
            ErrorMessage="Date in (dd/mm/yyyy)"  /><br />
            <asp:TextBox ID="txtDateOfLaunch" cssclass="textbox" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ForeColor="Red" runat="server" ControlToValidate="txtDateOfLaunch" ErrorMessage="Date cannot be empty"></asp:RequiredFieldValidator>   <br />
    </div>
            
        <asp:Label ID="labelGenre" runat="server">Genre</asp:Label><br /><br />
        <asp:DropDownList  ID="txtMovieGenre" runat="server" >
          <asp:ListItem>Superhero</asp:ListItem>
          <asp:ListItem>Science Fiction</asp:ListItem>
          <asp:ListItem>Romance</asp:ListItem>
          <asp:ListItem>Comedy</asp:ListItem>
          <asp:ListItem>Adventure</asp:ListItem>
          <asp:ListItem>Thriller</asp:ListItem>
      </asp:DropDownList>

      <br /><br /><br /><br />
        
        &ensp;&ensp;&ensp;&ensp;<asp:CheckBox  ID="txtHasTeaser" runat="server" />
        <asp:Label runat="server">HasTeaser</asp:Label><br /><br />
        &ensp;&ensp;&ensp;&ensp;<asp:Button runat="server" Text="Save" ID="SubmitForm" OnClick="Submit_Form" BackColor="Blue" BorderColor="Blue" BorderWidth="5px" ForeColor="White"/>
        <br /><br /><br />
</asp:Content>

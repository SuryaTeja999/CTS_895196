<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="RemoveFavorites.aspx.cs" Inherits="MovieCruiserProject.RemoveFavorites" %>
<asp:Content  ContentPlaceHolderID="CustomerContent" runat="server">
    <h2>Favorites</h2>
      <h3 style="color: green;padding-left:200px;">Movie Removed From Favorites Successfully</h3>
    <asp:GridView ID="RemoveFavorite" runat="server"  CellPadding="10" GridLines="None" Font-Size="18px" BorderColor="White" BorderWidth="60px" CellSpacing="8" AutoGenerateColumns="False">
        <Columns>                 
        <asp:BoundField DataField="MovieTitle"  HeaderText="Title"/>
        <asp:BoundField DataField="BoxOfficeCollection"   HeaderText="BoxOffice"/>
        <asp:BoundField DataField="MovieGenre"   HeaderText="Genre"/>
        </Columns>
    </asp:GridView>
      &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<asp:Label runat="server" Text="No of Favorites :"></asp:Label>
     <asp:Label ID="FavoritesCount" runat="server" Text=""></asp:Label><br /><br />

    <br />
</asp:Content>

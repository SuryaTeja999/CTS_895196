<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="ViewFavorites.aspx.cs" Inherits="MovieCruiserProject.ViewFavorites" %>
<asp:Content ContentPlaceHolderID="CustomerContent" runat="server">
    <h2>Favorites</h2>
        <asp:GridView ID="Favoritelist" runat="server"  CellPadding="10" GridLines="None" Font-Size="18px" BorderColor="White" BorderWidth="70px" CellSpacing="10" AutoGenerateColumns="False">
        <Columns>                 
        <asp:BoundField DataField="MovieTitle"  HeaderText="Title"/>
        <asp:BoundField DataField="BoxOfficeCollection"   HeaderText="BoxOffice"/>
        <asp:BoundField DataField="MovieGenre"   HeaderText="Genre"/>
        <asp:HyperLinkField DataNavigateUrlFields="MovieId" DataNavigateUrlFormatString="~\RemoveFavorites.aspx?id={0}" Text ="Delete"
            HeaderText="Action" />
        </Columns>
    </asp:GridView>

    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<asp:Label runat="server" Text="No of Favorites :"></asp:Label>
     <asp:Label ID="FavoritesCount" runat="server" Text=""></asp:Label><br /><br /><br />
</asp:Content>

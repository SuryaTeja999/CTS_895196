<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="ViewCustomerMovies.aspx.cs" Inherits="MovieCruiserProject.ViewCustomerMovies" %>
<asp:Content  ContentPlaceHolderID="CustomerContent" runat="server">
    <h2>Movies</h2>

     <asp:GridView ID="CustomerMovieList" runat="server"  CellPadding="10" GridLines="None" Font-Size="18px" BorderColor="White" BorderWidth="60px" CellSpacing="5" AutoGenerateColumns="False">
        <Columns>                 
        <asp:BoundField DataField="MovieTitle"  HeaderText="Title"/>
        <asp:BoundField DataField="BoxOfficeCollection"   HeaderText="BoxOffice"/>
        <asp:BoundField DataField="MovieGenre"   HeaderText="Genre"/>
        <asp:BoundField DataField="MovieActive"   HeaderText="Has Teaser"/>
        <asp:HyperLinkField DataNavigateUrlFields="MovieId" DataNavigateUrlFormatString="~\AddToFavorites.aspx?id={0}" Text ="Add To Favorites"
            HeaderText="Action" />
        </Columns>
    </asp:GridView>
</asp:Content>

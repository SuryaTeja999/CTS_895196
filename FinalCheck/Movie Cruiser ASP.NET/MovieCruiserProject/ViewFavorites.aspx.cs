using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Cognizant.MovieCruiser.Model;
using Com.Cognizant.MovieCruiser.Dao;
using Com.Cognizant.MovieCruiser.Utility;

namespace MovieCruiserProject
{
    public partial class ViewFavorites : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                FavoritesDaoCollection movieList = new FavoritesDaoCollection();
                long userId = long.Parse(Session["userId"].ToString());
                Favoritelist.DataSource = FavoritesDaoCollection.userFavorites[userId];
                Favoritelist.DataBind();
                FavoritesCount.Text = FavoritesDaoCollection.userFavorites[userId].Count().ToString();
           
            
        }
    }
}
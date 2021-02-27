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
    public partial class AddToFavorites : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["id"] != null)
                {
                    int movieId = Convert.ToInt32(Request.QueryString["id"].ToString());
                    FavoritesDaoCollection movieList = new FavoritesDaoCollection();
                    FavoritesDaoCollection.CreateFavoriteList();
                    long userId = long.Parse(Session["userId"].ToString());
                    movieList.AddFavoriteMovie(userId, movieId);
                    AddToFavorite.DataSource = FavoritesDaoCollection.userFavorites[userId];
                    AddToFavorite.DataBind();
                    FavoritesCount.Text = FavoritesDaoCollection.userFavorites[userId].Count().ToString();
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('System Returned an exception')</script>");
            }

        }
    }
        
}
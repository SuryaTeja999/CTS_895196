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
    public partial class ViewAdminMovies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MovieDaoCollection.CreateMovieList();
            MovieDaoCollection movieList = new MovieDaoCollection();
            AdminMovieList.DataSource = movieList.GetMovieListAdmin();
            AdminMovieList.DataBind();
        }
    }
}
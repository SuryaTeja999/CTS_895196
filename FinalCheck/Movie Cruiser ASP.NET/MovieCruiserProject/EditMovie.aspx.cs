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
    public partial class EditMovie : System.Web.UI.Page
    {
        public static int movieListId;
        public static List<Movie> movieList = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                MovieDaoCollection adminMovie = new MovieDaoCollection();
                movieList= adminMovie.GetMovieListAdmin();
                movieListId = Convert.ToInt32(Request.QueryString["id"].ToString());
                bool postback = IsPostBack;
                if(postback==false)
                {
                    DisplayDefault();
                }
            }
        }
           public void DisplayDefault()
            {
                foreach (var x in EditMovie.movieList)
                    {
                        if (x.MovieId == EditMovie.movieListId)
                        {
                            txtMovieTitle.Text = x.MovieTitle;
                            txtBoxOfficeCollection.Text = x.BoxOfficeCollection;
                            txtDateOfLaunch.Text = x.DateOfLaunch;
                            txtMovieGenre.SelectedValue = x.MovieGenre;
                            string value = x.MovieActive;
                            if (txtMovieActive.Text == value)
                             {
                             txtMovieActive.Checked = true;
                             }
                             else
                             txtMovieNotActive.Checked = true;
                             String teaserExist = x.HasTeaser;
                             if(teaserExist=="Yes")
                             txtHasTeaser.Checked = true;
                             else
                             txtHasTeaser.Checked = false;


                }

                    }
                
            }
               
        protected void Submit_Form(object sender, EventArgs e)
        {
            
            MovieDaoCollection m = new MovieDaoCollection();
            List<Movie> movieList = m.GetMovieListAdmin();
            Movie obj = (from x in movieList
                         where x.MovieId == movieListId
                         select x).FirstOrDefault();
            foreach (var x in movieList)
            {
                if (x.MovieId == movieListId)
                {
                    x.MovieTitle = txtMovieTitle.Text;
                    x.BoxOfficeCollection = "$ " + txtBoxOfficeCollection.Text;
                    x.DateOfLaunch = txtDateOfLaunch.Text;
                    string value = "";
                    bool isChecked = txtMovieActive.Checked;
                    if (isChecked)
                        value = txtMovieActive.Text;
                    else
                        value = txtMovieNotActive.Text;
                    x.MovieActive = value;
                    x.MovieGenre = txtMovieGenre.SelectedValue;
                }
            }

            Response.Redirect("EditMovieSuccess.aspx");
        }

    }
}
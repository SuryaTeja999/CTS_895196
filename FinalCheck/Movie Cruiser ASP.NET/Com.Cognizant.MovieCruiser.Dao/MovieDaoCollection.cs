using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Com.Cognizant.MovieCruiser.Model;
using Com.Cognizant.MovieCruiser.Utility;

namespace Com.Cognizant.MovieCruiser.Dao
{
    public class MovieDaoCollection : IMovieDao
    {

        public static List<Movie> movieList = null;
        static public void CreateMovieList()
        {
            if (movieList == null)
            {
                movieList = new List<Movie>()
            {
             new Movie() { MovieId=1, MovieTitle="Avatar" , BoxOfficeCollection="$2,787,965,087", MovieActive ="Yes",
                 DateOfLaunch="15/03/2017",MovieGenre="Science Fiction" , HasTeaser="Yes"},
             new Movie() { MovieId=2, MovieTitle="The Avengers" , BoxOfficeCollection="$1,518,812,988", MovieActive ="Yes" ,
                 DateOfLaunch="23/12/2017",MovieGenre="Superhero", HasTeaser="No"},
             new Movie() { MovieId=3, MovieTitle="Titanic" , BoxOfficeCollection="$2,187,463,944", MovieActive ="Yes"  ,
                 DateOfLaunch="21/08/2017",MovieGenre="Romance", HasTeaser="No"},
             new Movie() { MovieId=4, MovieTitle="Jurassic World" , BoxOfficeCollection="$1,671,713,208", MovieActive = "No" ,
                 DateOfLaunch="02/07/2017",MovieGenre="Science Fiction", HasTeaser="Yes"},
             new Movie() { MovieId=5, MovieTitle="Avengers:ENd Game" , BoxOfficeCollection="$2,750,760,348", MovieActive ="Yes" ,
                 DateOfLaunch="02/11/2022",MovieGenre="Superhero", HasTeaser="Yes"}
            };
            }
        }
        public Movie GetMovie(long movieId)
        {
            Movie movie = (from temp in movieList
                           where temp.MovieId == movieId
                           select temp).FirstOrDefault();
            return movie;

        }

        public List<Movie> GetMovieListAdmin()
        {
            return movieList;
        }

        public List<Movie> GetMovieListCustomer()
        {
            return movieList;
        }

        public void ModifyMovie(Movie movie)
        {
            List<Movie> movieList = GetMovieListAdmin();
            int id = movie.MovieId;
            foreach (Movie temp in movieList)
            {
                if (temp.MovieId == id)
                {
                    Console.WriteLine("Enter title,boxoffice,active,dateoflaunch,genre,hasteaser in order");
                    temp.MovieTitle = Console.ReadLine();
                    temp.BoxOfficeCollection = Console.ReadLine();
                    temp.MovieActive = Console.ReadLine();
                    temp.DateOfLaunch = Console.ReadLine();
                    temp.MovieGenre = Console.ReadLine();
                    temp.HasTeaser = Console.ReadLine();
                    Console.WriteLine("Selected Record Updated Successfully");
                }

            }


        }
    }

}

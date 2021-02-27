using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Cognizant.MovieCruiser.Model
{
    public class Movie
    {
        int movieId;
        public int MovieId
        {
            get
            {
                return movieId;
            }
            set
            {
                movieId = value;
            }

        }
        String movieTitle;
        public String MovieTitle
        {
            get
            {
                return movieTitle;
            }
            set
            {
                movieTitle = value;
            }

        }
        String boxOfficeCollection;
        public String BoxOfficeCollection
        {
            get
            {
                return boxOfficeCollection;
            }
            set
            {
                boxOfficeCollection = value;
            }

        }
        String movieActive;
        public String MovieActive
        {
            get
            {
                return movieActive;
            }
            set
            {
                movieActive = value;
            }

        }
        String dateOfLaunch;
        public String DateOfLaunch
        {
            get
            {
                return dateOfLaunch;
            }
            set
            {
                dateOfLaunch = value;
            }

        }
        String movieGenre;
        public String MovieGenre
        {
            get
            {
                return movieGenre;
            }
            set
            {
                movieGenre = value;
            }

        }
        String hasTeaser;
        public String HasTeaser
        {
            get
            {
                return hasTeaser;
            }
            set
            {
                hasTeaser = value;
            }

        }

        // Movie Constructor
        public Movie()
        { }
        public Movie(int MovieId, String MovieTitle, String BoxOfficeCollection, String MovieActive, String DateOfLaunch, String MovieGenre, String HasTeaser)
        {
            this.MovieId = MovieId;
            this.MovieTitle = MovieTitle;
            this.BoxOfficeCollection = BoxOfficeCollection;
            this.MovieActive = MovieActive;
            this.DateOfLaunch = DateOfLaunch;
            this.MovieGenre = MovieGenre;
            this.HasTeaser = HasTeaser;

        }

        public override string ToString()
        {
            return base.ToString();
        }

        public override bool Equals(object obj)
        {
            return base.Equals(obj);
        }
    }

}

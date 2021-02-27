using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Com.Cognizant.MovieCruiser.Model;
using Com.Cognizant.MovieCruiser.Utility;

namespace Com.Cognizant.MovieCruiser.Dao
{
    interface IFavoritesDao
    {
        void AddFavoriteMovie(long userId, long movieId);
        void GetAllMovies(long userId);
        void RemoveMovie(long userId, long movieId);

    }
}

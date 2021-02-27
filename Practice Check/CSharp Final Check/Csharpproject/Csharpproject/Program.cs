using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Csharpproject
{
   Class Movie
    {
     public int id;
     public String Name;
     public int dateOfLaunch;
    }
    class Movie1
    {
        int Admin_id;
        String Name;
    static void Main(string[] args)
    {
        List<Movie> movie = new List<Movie>();
         movie.Add(new Movie(101, "Surya", "2366"));
        movie.Add(new Movie(102, "Surya", "2366"));
        movie.Add(new Movie(103, "Surya", "2366"));
        movie.Add(new Movie(104, "Surya", "2366"));
        movie.Add(new Movie(105, "Surya", "2366"));
        foreach (Movie i in movie)
        {
            Console.WriteLine(i.id);
        }
    }
    
}

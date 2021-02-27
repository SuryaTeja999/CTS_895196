using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Cognizant.Truyum.Utility
{
    public class DateUtility
    {
        DateTime ConvertToDate(inputDate:String)
        {
            return DateTime.Parse(inputDate);
        }
    }
}

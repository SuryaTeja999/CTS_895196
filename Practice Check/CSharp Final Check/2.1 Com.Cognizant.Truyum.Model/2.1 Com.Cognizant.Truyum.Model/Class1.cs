using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Cognizant.Truyum.Model
{
    public class MenuItem
    {
        long id;
        String name;
        float price;
        Boolean active;
        Date dateOfLaunch;
        String category;
        Boolean freeDelivery;
    }
    public class Cart
    {
        list<Menuitem> menuItemList;
        Double total;
    }
}

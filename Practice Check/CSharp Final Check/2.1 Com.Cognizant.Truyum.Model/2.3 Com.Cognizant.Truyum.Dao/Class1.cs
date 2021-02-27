using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Cognizant.Truyum.Dao
{
    public class IMenuItemDao
    {
        List<MenuItem> GetMenuItemListAdmin();
        List<MenuItem> GetMenuItemListCustomer();
        void ModifyMenuItem(MenuItem menuItem);
        List<MenuItem> ModifyMenuItem(MenuItem menuItem);


        void TestModifyMenuItem()
        {
        menuItemDao x = new menuItemDao();
        MenuItemDaoCollection y = new MenuItemDaoCollection(x);
        MenuItemDao.ModifyMenuItem(menuItem);
        MenuItemDao.GetMenuItem(producId);
        }

    }

    




   public class MenuItemDaoCollection
    {

    List<MenuItem> MenuItemList;
    MenuItemDaoCollection()
    {
        if(MenuItemList==null)
        {
            List<MenuItem> MenuItemList = new List<MenuItem>();
            MenuItemList.Add(new MenuItem("Sandwich",99,"Yes","15/03/2017","Main Course","Yes"));
            MenuItemList.Add(new MenuItem("Burger", 129, "Yes", "23/12/2017", "MainCourse", "NO"));
        }
    }
    List<MenuItem> GetMenuItemListAdmin()
    {
        return MenuItemList;
    }
    List<MenuItem> GetMenuItemListCustomer()
     {
       List<MenuItem> newlist=new List<MenuItem>()
        while (menuItemList != 0)
        {
                foreach (MenuItem item in MenuItemList)
                {
                    if (item.dateOfLaunh > currentdate())
                    {
                        if (String s = item.available)
                    {
                            if (s == "yes")
                            {
                                List.Add();
                            }

                        }
                    }
                }
            }
            return List;
     }
     void ModifyMenuItem(MenuItem menuItem)
    { 
        List<MenuItem> l=new List<MenuItem>
        foreach (MenuItem item in menuItem)
            {
                if (item == menuItem)
                {
                    //update menu item
                }
            } 
        }

   }






   public class MenuItemDaoCollectionTest
   {
    static void Main(string[] args)
    {
        TestGetMenuItemListAdmin();
        TestGetMenuItemListCustomer();
    }
    void TestGetMenuItemListAdmin()
    {
        MenuItemDao menuItemDao =new MenuItemDao();
        MenuItemDaoCollection y = new MenuItemDaoCollection(menuItemDao);
        MenuItemDao.GetMenuItemListAdmin();
        while (menuItemList != 0)
        {
            foreach(MenuItem item in MenuItemList)
                {
                    Console.WriteLine(item.Name);
                    Console.WriteLine(item.Id);
                    Console.WriteLine(item.price);
                    Console.WriteLine(item.dateOfLaunh);
                    Console.WriteLine(item.available);
                }



            }

        }

    void TestGetMenuItemListCustomer()
    {
        menuItemDao menuItemDao = new menuItemDao();
        MenuItemDaoCollection y = new MenuItemDaoCollection(menuItemDao);
        menuItemDao.GetMenuItemListCustomer();
            while (menuItemList != 0)
            {
                foreach (MenuItem item in MenuItemList)
                {
                    Console.WriteLine(item.Name);
                    Console.WriteLine(item.Id);
                    Console.WriteLine(item.price);
                    Console.WriteLine(item.dateOfLaunh);
                    Console.WriteLine(item.available);
                }



            }
        }
        
    }






     public class ICartDao
     {
     void AddCartItem(long userId, long menuItemId);
     void GetAllCartItems(long userId);
     void RemoveCartItem(long userId, long menuItemId);
     }




     public class CartDaoCollection
     {
      Dictionary<Long,Cart> usercart;
     CartDaoCollection()
     {
        if (usercart == null)
        {
            long Dictionary = new long();
            MenuItemList.Add();
        }
    }
     Cart GetAllCartItems(long userId)
        {
        1.Get the menuItemList based on userId from the Dictionary of userCart
2.If the returned list is empty
a.	Create new CartEmptyException and throw it
3.If the returned list is not empty
a.	Iterate through the menuItemList and add up the prices.
b.Set the total instance variable of cart with the added up menu item prices.
c.  return cart
        }
     void RemoveCartItem(long userId, long menuItemId)
    {
        List<MenuItem>where id = userID;
        a.Check if the menuItemId of each menu item from the list matches with this methods input parameter
        b.If menuItemId matches then remove the menu item from the list
    }

    void AddCartItem(long userId, long menuItemId)
    {
        menuItemDao x = new menuItemDao();
        MenuItemDaoCollection y = new MenuItemDaoCollection(x);
        menuItemDao.GetMenuItem(menuItemId);
        if(user!=null)
        {
            menuItemList;
            b.Add the menuItem obtained in previous step into menuItemList
        }
        else
        {
            a.Create a new Cart instance with new List
b.Add the menu item obtained in step one and add it to menuItemList created in previous step
c.Put the userId and List of MenuItem into the userCart

        }
    }








    public class CartDaoCollectionTest
    {
        static void main()
        {
            TestAddCartItem();
            TestRemoveCartItem();
        }

        void TestAddCartItem()
        {
            CartDao cartDao = new CartDao();
            CartDaoCollection c = new CartDaoCollection(cartDao);
            CartDao.AddCartItem(userid,menuitemid);
            CartDao.GetAllCartItems();

        }

        void TestRemoveCartItem()
        {
            CartDao cartDao = new CartDao();
            CartDaoCollection c = new CartDaoCollection(cartDao);
            CartDao.RemoveCartItem();
            CartDao.GetAllCartItems();

        }


    }


}
}

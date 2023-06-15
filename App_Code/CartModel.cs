using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartModel
/// </summary>
public class CartModel
{
    public string InsertCart(Cart cart)
    {
        try
        {
            BookEntities db = new BookEntities();
            db.Carts.Add(cart);
            db.SaveChanges();

            return cart.DatePurchased + "Was Successfully Inserted";
        }

        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string UpdatetCart(int id, Cart cart)
    {
        try
        {
            BookEntities db = new BookEntities();

            //Fetch object from db
            Cart b = db.Carts.Find(id);

            b.DatePurchased = cart.DatePurchased;
            b.CustomerID = cart.CustomerID;
            b.Amount = cart.Amount;
            b.IsInCart = cart.IsInCart;
            b.BookID = cart.BookID;

            db.SaveChanges();
            return cart.DatePurchased + " was successfully updated";
        }

        catch (Exception e)
        {
            return "Error:" + e;
        }

    }

    public string DeleteCart(int id)
    {
        try
        {
            BookEntities db = new BookEntities();
            Cart cart = db.Carts.Find(id);

            db.Carts.Attach(cart);
            db.Carts.Remove(cart);
            db.SaveChanges();

            return cart.DatePurchased + "was succesffully deleted";
        }

        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

     public List<Cart> GetOrdersInCart(String userId)
    {
        BookEntities db = new BookEntities();
        List<Cart> orders = (from x in db.Carts
                             where x.CustomerID == userId
                             && x.IsInCart
                             orderby x.DatePurchased
                             select x).ToList();
        return orders;
    }

    public int GetAmountOfOrders(string userId)
    {
        try
        {
            BookEntities db = new BookEntities();
            int amount = (from x in db.Carts
                          where x.CustomerID == userId
                          && x.IsInCart
                          select x.Amount).Sum();

            return amount;
        }

        catch
        {
            return 0;
        }
    }

    public void UpdateQuantity(int id, int quantity)
    {
        BookEntities db = new BookEntities();
        Cart cart = db.Carts.Find(id);
        cart.Amount = quantity;

        db.SaveChanges();
    }

    public void MarkOrdersAsPaid(List<Cart> carts)
    {
        BookEntities db = new BookEntities();

        if (carts != null)
        {
            foreach (Cart cart in carts)
            {
                Cart outdatedCart = db.Carts.Find(cart.ID);
                outdatedCart.DatePurchased = DateTime.Now;
                outdatedCart.IsInCart = false;
            }

            db.SaveChanges();
        }
    }
}
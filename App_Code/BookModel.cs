using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookModel
/// </summary>
public class BookModel
{
    public string InsertBook(Book book)
    {
        try
        {
            BookEntities db = new BookEntities();
            db.Books.Add(book);
            db.SaveChanges();

            return book.Title = "was successfully inserted";
        }

        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string UpdatetProduct(int id, Book book)
    {
        try
        {
            BookEntities db = new BookEntities();

            //Fetch object from db
            Book b = db.Books.Find(id);

            b.Title = book.Title;
            b.Price = book.Price;
            b.CatID = book.CatID;
            b.Description = book.Description;
            b.CoverArt = book.CoverArt;
            b.Quantity = book.Quantity;

            db.SaveChanges();
            return book.Title + "was siccessfully updated";
        }

        catch (Exception e)
        {
            return "Error:" + e;
        }

    }

    public string DeleteProduct(int id)
    {
        try
        {
            BookEntities db = new BookEntities();
            Book book = db.Books.Find(id);

            db.Books.Attach(book);
            db.Books.Remove(book);
            db.SaveChanges();

            return book.Title + "was succesfully deleted";
        }

        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public Book GetBook(int id)
    {
        try
        {
            using (BookEntities db = new BookEntities())
            {
                Book book = db.Books.Find(id);
                return book;
            }
        }

        catch (Exception)
        {
            return null;
        }
    }

    public List<Book> GetAllBooks()
    {
        try
        {
            using (BookEntities db = new BookEntities())
            {
                List<Book> books = (from x in db.Books select x).ToList();

                return books;
            }
        }

        catch (Exception)
        {
            return null;
        }
    }

    public List<Book> GetBooksByCat(int catId)
    {
        try
        {
            using (BookEntities db = new BookEntities())
            {
                List<Book> books = (from x in db.Books
                                    where x.CatID == catId
                                    select x).ToList();

                return books;
            }
        }

        catch (Exception)
        {
            return null;
        }
    }
}
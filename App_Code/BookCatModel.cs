using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookCatModel
/// </summary>
public class BookCatModel
{
    public string InsertBookCat(BookCat bookCat)
    {
        try
        {
            BookEntities db = new BookEntities();
            db.BookCats.Add(bookCat);
            db.SaveChanges();

            return bookCat.Title = "was successfully inserted";
        }

        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string UpdatetBookCat(int id, BookCat bookCat)
    {
        try
        {
            BookEntities db = new BookEntities();

            //Fetch object from db
            BookCat b = db.BookCats.Find(id);

            b.Title = bookCat.Title;

            db.SaveChanges();
            return bookCat.Title + "was successfully updated";
        }

        catch (Exception e)
        {
            return "Error:" + e;
        }

    }

    public string DeleteBookCat(int id)
    {
        try
        {
            BookEntities db = new BookEntities();
            BookCat bookCat = db.BookCats.Find(id);

            db.BookCats.Attach(bookCat);
            db.BookCats.Remove(bookCat);
            db.SaveChanges();

            return bookCat.Title + "was succesffully deleted";
        }

        catch (Exception e)
        {
            return "Error:" + e;
        }
    }
}
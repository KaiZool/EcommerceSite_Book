using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;


public partial class BookProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillPage();

        var user = Context.User.Identity;

        if (user.IsAuthenticated)
        {
            litstate.Text = Context.User.Identity.Name;

            lnklogin.Visible = false;
            lnkreg.Visible = false;

            lnklogout.Visible = true;
            litstate.Visible = true;

            CartModel model = new CartModel();
            string userId = HttpContext.Current.User.Identity.GetUserId();
            litstate.Text = string.Format("{0} ({1})", Context.User.Identity.Name,
                model.GetAmountOfOrders(userId));
        }

        else
        {
            lnklogin.Visible = true;
            lnkreg.Visible = true;
            lnklogout.Visible = false;
            litstate.Visible = false;
        }
    }

    protected void lnklogout_click(object sender, EventArgs e)
    {
        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
        authenticationManager.SignOut();

        Response.Redirect("default.aspx");
    }

    private void FillPage()
    {
        //Get a list of all the books in DB
        BookModel bookModel = new BookModel();
        List<Book> books = bookModel.GetAllBooks();

        //Ensure books exists in the database
        if (books != null)
        {
            //Creates a new panel with an image button and 2 labels for each product
            foreach (Book book in books)
            {
                Panel bookPnl = new Panel();
                ImageButton imgBtn = new ImageButton();
                Label lblTitle = new Label();
                Label lblPrice = new Label();

                imgBtn.ImageUrl = "~/admin/images/probooks/" + book.CoverArt;
                imgBtn.CssClass = "bookImage";
                imgBtn.PostBackUrl = "BookProducts2.aspx?id=" + book.ID;

                lblTitle.Text = book.Title;
                lblTitle.CssClass = "bookTitle";

                lblPrice.Text = "$" + book.Price;
                lblPrice.CssClass = "bookPrice";

                //Add controls to Panel
                bookPnl.Controls.Add(imgBtn);
                bookPnl.Controls.Add(new Literal { Text = "<br />" });
                bookPnl.Controls.Add(lblTitle);
                bookPnl.Controls.Add(new Literal { Text = "<br />" });
                bookPnl.Controls.Add(lblPrice);

                //Adds a dynamic Panel to static Parent Panel
                pnlBooks.Controls.Add(bookPnl);
            }
        }

        else
        {
            pnlBooks.Controls.Add(new Literal { Text = "No Books Found" });
        }
    }
}
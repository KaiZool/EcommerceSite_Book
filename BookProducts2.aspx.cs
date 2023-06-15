using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookProducts2 : System.Web.UI.Page
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
        //Get selected book data
        if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            BookModel bookModel = new BookModel();
            Book book = bookModel.GetBook(id);

            //Fill page with data
            lblPrice.Text = "Price per book: </br> $ " + book.Price;
            lblHeader.Text = book.Title;
            lblDetails.Text = book.Description;
            lblBookNumber.Text = id.ToString();
            imgBook.ImageUrl = "admin/images/probooks/" + book.CoverArt;

            // To fill the maount in the drop down list
            int[] amount = Enumerable.Range(1, 20).ToArray();
            ddlAmount1.DataSource = amount;
            ddlAmount1.AppendDataBoundItems = true;
            ddlAmount1.DataBind();
        }
    }

    protected void btnadd_click(object sender, EventArgs e)
    {
        if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            string customerId = Context.User.Identity.GetUserId();

            if (customerId != null)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                int amount = Convert.ToInt32(ddlAmount1.SelectedValue);

                Cart cart = new Cart
                {
                    Amount = amount,
                    CustomerID = customerId,
                    DatePurchased = DateTime.Now,
                    IsInCart = true,
                    BookID = id
                };

                CartModel model = new CartModel();
                lblResults.Text = model.InsertCart(cart);
            }

            else
            {
                lblResults.Text = "Please log in to order books";
            }
        }
    }
}
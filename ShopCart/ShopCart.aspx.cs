using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;


public partial class accounts_ShopCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Get rid of logged in user and display items in cart
        string userId = User.Identity.GetUserId();
        GetPurchasesInCart(userId);  
    }

    protected void lnklogout_click(object sender, EventArgs e)
    {
        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
        authenticationManager.SignOut();

        Response.Redirect("default.aspx");
    }

    private void GetPurchasesInCart(string userId)
    {
        CartModel model = new CartModel();
        double subTotal = 0;

        List<Cart> purcList = model.GetOrdersInCart(userId);
        CreateShopTable(purcList, out subTotal);

        // VAT - Value added taxes
        double vat = subTotal * 0.10;
        double totalAm = subTotal + vat + 3; //(Shipping costs = 10)

        //Displays the values on  a page
        litTA.Text = "$" + subTotal;
        litVat.Text = "$" + vat;
        litOverall.Text = "$" + totalAm;
    }

    private void CreateShopTable(List<Cart> purcList, out double subTotal)
    {
        subTotal = new Double();
        BookModel model = new BookModel();

        foreach (Cart cart in purcList)
        {
            Book book = model.GetBook(cart.BookID);

            //Image button is created
            ImageButton btnImg = new ImageButton
            {
                ImageUrl = string.Format("~/admin/images/probooks/{0}", book.CoverArt),
                PostBackUrl = string.Format("BookProducts.aspx?id={0}", book.ID)
            };

            // Delate link is created
            LinkButton lnkDel = new LinkButton
            {
                PostBackUrl = string.Format("ShopCart.aspx?bookId={0}", cart.ID),
                Text = "Delete Books",
                ID = "del" + cart.ID
            };

            //Inlcude onclick event
            lnkDel.Click += Delete_Item;

            //Quantity dropdownlist
            int[] amount = Enumerable.Range(1, 20).ToArray();
            DropDownList dd1Amount = new DropDownList
            {
                DataSource = amount,
                AppendDataBoundItems = true,
                AutoPostBack = true,
                ID = cart.ID.ToString()
            };

            dd1Amount.DataBind();
            dd1Amount.SelectedValue = cart.Amount.ToString();
            dd1Amount.SelectedIndexChanged += dd1Amount_SelectedIndexChanged;

            // HTML table is created based on 2 rows
            Table table = new Table { CssClass = "cartT" };
            TableRow a = new TableRow();
            TableRow b = new TableRow();

            //6 cells for a rows a are created
            TableCell a1 = new TableCell {RowSpan=2, Width=200};
            TableCell a2 = new TableCell {Text = string.Format("<h2>{0}</h2><br/>{1}<br/>In Stock",
                book.Title, "Book No: " + book.ID),
                HorizontalAlign = HorizontalAlign.Left, Width=350};
            TableCell a3 = new TableCell { Text = "Book Price<hr/>" };
            TableCell a4 = new TableCell { Text = "Quantity <hr/>" };
            TableCell a5 = new TableCell { Text = "Item Total<hr/>" };
            TableCell a6 = new TableCell { };

            TableCell b1 = new TableCell { };
            TableCell b2 = new TableCell { Text = "$" + book.Price };
            TableCell b3 = new TableCell { };
            TableCell b4 = new TableCell { Text = "$" + Math.Round((cart.Amount * (double)book.Price), 2) };
            TableCell b5 = new TableCell { };
            TableCell b6 = new TableCell { };

            a1.Controls.Add(btnImg);
            a6.Controls.Add(lnkDel);
            b3.Controls.Add(dd1Amount);

            a.Cells.Add(a1);
            a.Cells.Add(a2);
            a.Cells.Add(a3);
            a.Cells.Add(a4);
            a.Cells.Add(a5);
            a.Cells.Add(a6);

            b.Cells.Add(b1);
            b.Cells.Add(b2);
            b.Cells.Add(b3);
            b.Cells.Add(b4);
            b.Cells.Add(b5);
            b.Cells.Add(b6);

            //Rows are added to table
            table.Rows.Add(a);
            table.Rows.Add(b);

            //Add table to pnlCart
            pnlShopCart.Controls.Add(table);

            //Calculates the total amount of item in the cart to subtotal
            subTotal += Math.Round(cart.Amount * (double)(book.Price));
            //Math.Round((cart.Amount * (double)book.Price), 2);
        }

        Session[User.Identity.GetUserId()] = purcList;
    }

    private void dd1Amount_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList selectList = (DropDownList)sender;
        int quantity = Convert.ToInt32(selectList.SelectedValue);
        int cartId = Convert.ToInt32(selectList.ID);

        CartModel model = new CartModel();
        model.UpdateQuantity(cartId, quantity);

        Response.Redirect("ShopCart.aspx");
    }

    private void Delete_Item(object sender, EventArgs e)
    {
        LinkButton selectList = (LinkButton)sender;
        string link = selectList.ID.Replace("del", "");
        int cartId = Convert.ToInt32(link);

        CartModel model = new CartModel();
        model.DeleteCart(cartId);

        Response.Redirect("ShopCart.aspx");
    }

    protected void btnreturn_click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

public partial class ShopCart_CheckOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<Cart> carts = (List<Cart>)Session[User.Identity.GetUserId()];

        CartModel model = new CartModel();
        model.MarkOrdersAsPaid(carts);

        Session[User.Identity.GetUserId()] = null;

        var user = Context.User.Identity;

        if (user.IsAuthenticated)
        {
            litstate.Text = Context.User.Identity.Name;

            lnklogin.Visible = false;
            lnkreg.Visible = false;

            lnklogout.Visible = true;
            litstate.Visible = true;
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

        Response.Redirect("~/default.aspx");
    }

    protected void btnreturn_click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ManageBookCat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        BookCatModel model = new BookCatModel();
        BookCat bc = CreateBookCat();

        lblResult.Text = model.InsertBookCat(bc);
    }

    private BookCat CreateBookCat()
    {
        BookCat b = new BookCat();
        b.Title = txtName.Text;

        return b;
    }

    protected void lnklogout_click(object sender, EventArgs e)
    {
        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
        authenticationManager.SignOut();

        Response.Redirect("~/default.aspx");
    }

    protected void btnreturn_click2(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }

    protected void btnreturn_Click(object sender, EventArgs e)
    {
       Response.Redirect("BookManagement.aspx");
    }
}
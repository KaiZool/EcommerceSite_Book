using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_BookManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gridBooks_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewRow row = gridBooks.Rows[e.NewEditIndex];

        int rowId = Convert.ToInt32(row.Cells[1].Text);
        Response.Redirect("ManageBookDet.aspx?id=" + rowId);
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
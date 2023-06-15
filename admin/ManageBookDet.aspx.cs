using System;
using System.Collections;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

public partial class admin_ManageBookDet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetImages();

            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                FillPage(id);
            }
        }

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

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        BookModel bookModel = new BookModel();
        Book book = CreateBook();

        //Check is the url contains an id parameter
        if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            //ID exists
            int id = Convert.ToInt32(Request.QueryString["id"]);
            lbloutcome.Text = bookModel.UpdatetProduct(id, book);
        }

        else
        {
            lbloutcome.Text = bookModel.InsertBook(book);
        }
    }

    private void FillPage(int id)
    {
        //Get selected book from DB
        BookModel bookModel = new BookModel();
        Book book = bookModel.GetBook(id);

        //Fill txtbox
        txtDes.Text = book.Description;
        txtTitle.Text = book.Title;
        txtPrice.Text = book.Price.ToString();
        txtQuantity.Text = book.Quantity.ToString();

        //Set DD List Values
        DDCA.SelectedValue = book.CoverArt;
        DDCat.SelectedValue = book.CatID.ToString();
    }

    private void GetImages()
    {
        try
        {
            //Get all filepaths
            string[] images = Directory.GetFiles(Server.MapPath("images/probooks"));

            //Get all filenames and add them to an arraylist
            ArrayList imageList = new ArrayList();
            foreach (string image in images)
            {
                string imageName = image.Substring(image.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                imageList.Add(imageName);
            }

            //Set the arrayList as the dropdownview's datasource and refresh
            DDCA.DataSource = imageList;
            DDCA.AppendDataBoundItems = true;
            DDCA.DataBind();
        }

        catch (Exception e)
        {
            lbloutcome.Text = e.ToString();
        }
    }

    private Book CreateBook()
    {
        Book book = new Book();

        book.Title = txtTitle.Text;
        book.Price = Convert.ToInt32(txtPrice.Text);
        book.CatID = Convert.ToInt32(DDCat.SelectedValue);
        book.Description = txtDes.Text;
        book.CoverArt = DDCA.SelectedValue;
        book.Quantity = Convert.ToInt32(txtQuantity.Text);

        return book;
    }


    protected void btnreturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("BookManagement.aspx");
    }
}
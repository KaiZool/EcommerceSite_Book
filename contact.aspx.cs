using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using Microsoft.AspNet.Identity;


public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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

        Response.Redirect("contact.aspx");
    }

    protected void btnsend_click(object sender, EventArgs e)
    {
        {
            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.EnableSsl = true;

            System.Net.NetworkCredential userpassword = new System.Net.NetworkCredential();
            userpassword.UserName = "curiousbooks2016@gmail.com";
            userpassword.Password = "dob250392";

            client.Credentials = userpassword;

            MailMessage msg = new MailMessage("curiousbooks2016@gmail.com", "curiousbooks2016@gmail.com");

            msg.Body = "<b> Sender's Name: </b>" + txtboxname1.Text + "<p><b> Sender's E-mail: </b>" + txtboxemail1.Text + "<p><b>Sender's Subject: </b>" + txtboxsub1.Text + "<p><b>Sender's Message: </b>" + "<p>" + txtboxmsg1.Text;
            msg.Subject = txtboxsub1.Text;
            msg.IsBodyHtml = true;

            try
            {
                client.Send(msg);
                Literal1.Text = "<p> Message Successfully Sent </p>";
            }

            catch (Exception ex)
            {
                Literal1.Text = "<p> Send failed </p>";
            }
        }
    }
}
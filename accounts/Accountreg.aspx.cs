using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class accounts_Accountregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnregs2_click(object sender, EventArgs e)
    {
        UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

        userStore.Context.Database.Connection.ConnectionString =
            System.Configuration.ConfigurationManager.
            ConnectionStrings["BookConnectionString"].ConnectionString;

        UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

        //Creates a new user to try to store in db
        IdentityUser user = new IdentityUser();
        user.UserName = txtboxuser4.Text;

        if (txtboxpass3.Text == txtboxcpass3.Text)
        {
            try
            {
                IdentityResult result = manager.Create(user, txtboxpass3.Text);

                if (result.Succeeded)
                {
                    UserInfo info = new UserInfo
                    {
                        Address = txtaddress.Text,
                        ForeName = txtboxFN.Text,
                        SurName = txtnoxSN.Text,
                        PostalCode = Convert.ToInt32(txtpost.Text),
                        GUID = user.Id
                    };

                    UserInfoModel model = new UserInfoModel();
                    model.InserUserInformation(info);

                    // Database will store the user information
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                    //Allows a new user to login
                    authenticationManager.SignIn(new AuthenticationProperties(), userIdentity);
                    Response.Redirect("/default.aspx");
                }

                else
                {
                    litState.Text = result.Errors.FirstOrDefault();
                }
            }

            catch (Exception ex)
            {
                litState.Text = ex.ToString();
            }
        }

        else
        {
            litState.Text = "Passwords must match";
        }
    }

    protected void lnklogout_click(object sender, EventArgs e)
    {
        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
        authenticationManager.SignOut();

        Response.Redirect("~/default.aspx");
    }

    protected void btnlog2_click(object sender, EventArgs e)
    {
        Response.Redirect("Accountlogin.aspx");
    }

    protected void btnanonymmous_click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }
}
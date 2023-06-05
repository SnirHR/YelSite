using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YelSite.Pages
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login(object sender, EventArgs e)
        {
            if ((!string.IsNullOrEmpty(Luser.Value) && !string.IsNullOrEmpty(Lpassword.Value)) && !string.IsNullOrEmpty(Lid.Value))
            {
                if (SignIn(Luser.Value,int.Parse(Lid.Value), Lpassword.Value)) {
                    LlblError.Text = string.Empty;
                    Session["Username"] = Luser.Value;
                    Session["Role"] = Helper.GetRole(Luser.Value);
                    Response.Redirect(Page.ResolveClientUrl("../"));
                    return;
                }
                LlblError.Text = "Invaild credentials";
                return;
            }
            LlblError.Text = "All fields are required.";
            return;
        }

        private bool SignIn(string Username, int id ,string Password)
        {
            if (Helper.Login(Username,id, Password) == true)
            {
                return true;
            }
            return false;
        }
    }
}
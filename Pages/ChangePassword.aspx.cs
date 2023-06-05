using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YelSite.Pages
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null || Session["Username"].ToString() == "")
            {
                Response.Redirect(Page.ResolveClientUrl("~/"));
            }
        }
        protected void ChangeButton_Click(object sender, EventArgs e)
        {
            string username = Session["Username"].ToString();
            if (oldPassword.Value != "" && newPassword.Value != "")
            {
                if (Helper.Login(username,oldPassword.Value) == true)
                {
                    Helper.SetPassword(username,newPassword.Value);
                }
                else
                {

                    ClblError.Visible = true;
                    ClblError.Text = "Incorrect Password";

                }
            }

        }
    }
}
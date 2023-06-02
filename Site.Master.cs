using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YelSite
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null && Session["Username"].ToString() != "")
            {
                LoginNav.Visible = false;
                HelloMSG.Visible = true;
                SignOutClick.Visible = true;
                HelloMSG.InnerText += " " + Session["Username"].ToString();
            }
            else
            {
                LoginNav.Visible = true;
                HelloMSG.Visible = false;
                SignOutClick.Visible = false;

            }
        }

        protected void FSignOut(object sender, EventArgs e)
        { //Signout Function
            Session["Username"] = "";
            Session["Role"] = "Visitor";
            Response.Redirect(Page.ResolveClientUrl("./")); //reloads the page
        }
    }
}
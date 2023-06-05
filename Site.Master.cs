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
            AdminClick.Visible = false;
            if (Session["Username"] != null && Session["Username"].ToString() != "")
            {
                if (Session["Role"].ToString() == "Admin")
                {
                    AdminClick.Visible = true;
                }
                proflieNav.Visible = true;
                LoginNav.Visible = false;
                SignOutClick.Visible = true;
                HelloMSG.InnerText = "Hello " + Session["Username"].ToString();
            }
            else
            {
                LoginNav.Visible = true;
                HelloMSG.InnerText = "Hello Visitor";
                SignOutClick.Visible = false;
                proflieNav.Visible = false;

            }
        }

        protected void FSignOut(object sender, EventArgs e)
        { //Signout Function
            Session["Username"] = "";
            Session["Role"] = "Visitor";
            Response.Redirect(Page.ResolveClientUrl("~/")); //reloads the page
        }
    }
}
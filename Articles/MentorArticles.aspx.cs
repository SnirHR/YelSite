using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YelSite.Articles
{
    public partial class MentorArticles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null || Session["Username"].ToString() == "" || (Session["Role"].ToString() != "Mentor" && Session["Role"].ToString() != "Admin"))
            {
                Response.Redirect(Page.ResolveClientUrl("~/"));
            }
        }
    }
}
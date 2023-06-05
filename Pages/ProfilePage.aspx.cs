using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YelSite.Pages
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null || Session["Username"].ToString() == "")
            {
                Response.Redirect(Page.ResolveClientUrl("../"));
            }
            string username = Session["username"].ToString();
            lblUsername.Text = username;
            lblEmail.Text = Helper.GetField(username,"Email");
            lblFirstName.Text = Helper.GetField(username, "FirstName");
            lblLastName.Text = Helper.GetField(username, "LastName");
            lblIdTag.Text = Helper.GetField(username, "IdTag");
            lblBirthday.Text = Helper.GetField(username, "Birthday");
            lblEducationalBackground.Text = Helper.GetField(username, "EducationalBackground");
            lblRole.Text = Helper.GetRole(username);
        }
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            Helper.DeleteUser(Session["username"].ToString());
            this.SignOut();
        }

        protected void SignOut()
        { 
            Session["Username"] = "";
            Session["Role"] = "Visitor";
            Response.Redirect(Page.ResolveClientUrl("../"));
        }
    }
}
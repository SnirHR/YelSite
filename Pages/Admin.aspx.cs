using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace YelSite.Pages
{
    public partial class Admin : System.Web.UI.Page
    {
        private bool Loaded = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null || Session["Username"].ToString() == "" || Session["Role"].ToString() != "Admin")
            {
                Response.Redirect(Page.ResolveClientUrl("../"));
            }

            if (Loaded != true)
            {
                lblCounter.InnerText += $"{Helper.CountUsers().ToString()} users registered!";
            }

            Loaded = true;
            BindUserTable();
        }
        protected void BindUserTable(DataTable dt)
        {
            string tableHtml = Helper.BuildUsersTable(dt);

            usertablecontainer.InnerHtml = tableHtml;
        }
        protected void BindUserTable()
        {
            // Retrieve the user data from the database
            string query = "SELECT * FROM Users";
            DataTable dt = Helper.GetDataTable(query);

            // Build the HTML user table
            string tableHtml = Helper.BuildUsersTable(dt);

            // Display the table on the page
            usertablecontainer.InnerHtml = tableHtml;
        }

        protected void BtnSort_Click(object sender, EventArgs e)
        {
            SortUsers(Columns.Value,order.Value);
        }
        protected void SortUsers(string columnName, string sortOrder)
        {
            // Get the current DataTable containing the users
            DataTable dt = (DataTable)ViewState["Users"];

            // Sort the DataTable based on the selected column and order
            dt.DefaultView.Sort = columnName + " " + sortOrder;
            dt = dt.DefaultView.ToTable();

            // Update the ViewState with the sorted DataTable
            ViewState["Users"] = dt;

            // Rebind the users table to display the sorted data
            BindUserTable(dt);
        }
        protected void btnFilter_Click(object sender, EventArgs e)
        {
            // Retrieve the filter text
            string filterText = filter.Value;

            // Retrieve the user data from the database
            string query = $"SELECT * FROM Users WHERE Username LIKE '%{filterText}%'";
            DataTable dt = Helper.GetDataTable(query);

            // Build the HTML user table
            string tableHtml = Helper.BuildUsersTable(dt);

            // Display the table on the page
            usertablecontainer.InnerHtml = tableHtml;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            // Create a list to store the user IDs to delete
            List<int> userIdsToDelete = new List<int>();

            // Loop through the checkbox controls in the user table
            foreach (Control control in usertablecontainer.Controls)
            {
                if (control is HtmlInputCheckBox)
                {
                    HtmlInputCheckBox checkBox = (HtmlInputCheckBox)control;
                    if (checkBox.Checked)
                    {
                        // Get the user ID from the checkbox ID
                        int userId = Convert.ToInt32(checkBox.ID.Replace("chk", ""));

                        // Add the user ID to the list
                        userIdsToDelete.Add(userId);
                    }
                }
            }

            // Delete the selected users from the database
            Helper.Delete(userIdsToDelete.ToArray());

            // Refresh the user table
            BindUserTable();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            // Redirect to the user creation page
            Response.Redirect("./RegisterForm.aspx");
        }
        protected void btnStudent_Click(object sender, EventArgs e)
        {
            // Create a list to store the user IDs to update
            List<int> userIdsToUpdate = new List<int>();

            // Loop through the checkbox controls in the user table
            foreach (Control control in usertablecontainer.Controls)
            {
                if (control is HtmlInputCheckBox)
                {
                    HtmlInputCheckBox checkBox = (HtmlInputCheckBox)control;
                    if (checkBox.Checked)
                    {
                        // Get the user ID from the checkbox ID
                        int userId = Convert.ToInt32(checkBox.ID.Replace("chk", ""));

                        // Add the user ID to the list
                        userIdsToUpdate.Add(userId);
                    }
                }
            }
            foreach (int userId in userIdsToUpdate)
            {
                string updateQuery = $"UPDATE Users SET Role = 'Student' WHERE ID = {userId}";
                Helper.ExecuteNonQuery(updateQuery);
            }

            // Refresh the user table
            BindUserTable();
        }
        protected void btnMentor_Click(object sender, EventArgs e)
        {
            List<int> userIdsToUpdate = new List<int>();

            // Loop through the checkbox controls in the user table
            foreach (Control control in usertablecontainer.Controls)
            {
                if (control is HtmlInputCheckBox)
                {
                    HtmlInputCheckBox checkBox = (HtmlInputCheckBox)control;
                    if (checkBox.Checked)
                    {
                        // Get the user ID from the checkbox ID
                        int userId = Convert.ToInt32(checkBox.ID.Replace("chk", ""));

                        // Add the user ID to the list
                        userIdsToUpdate.Add(userId);
                    }
                }
            }
            foreach (int userId in userIdsToUpdate)
            {
                string updateQuery = $"UPDATE Users SET Role = 'Mentor' WHERE ID = {userId}";
                Helper.ExecuteNonQuery(updateQuery);
            }

            // Refresh the user table
            BindUserTable();
        }
        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            // Create a list to store the user IDs to update
            List<int> userIdsToUpdate = new List<int>();

            // Loop through the checkbox controls in the user table
            foreach (Control control in usertablecontainer.Controls)
            {
                if (control is HtmlInputCheckBox)
                {
                    HtmlInputCheckBox checkBox = (HtmlInputCheckBox)control;
                    if (checkBox.Checked)
                    {
                        // Get the user ID from the checkbox ID
                        int userId = Convert.ToInt32(checkBox.ID.Replace("chk", ""));

                        // Add the user ID to the list
                        userIdsToUpdate.Add(userId);
                    }
                }
            }
            // Update the selected users in the database to the "Admin" role
            foreach (int userId in userIdsToUpdate)
            {
                string updateQuery = $"UPDATE Users SET Role = 'Admin' WHERE ID = {userId}";
                Helper.ExecuteNonQuery(updateQuery);
            }

            // Refresh the user table
            BindUserTable();
        }
    }
}
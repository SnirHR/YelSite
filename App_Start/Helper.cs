using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using YelSite.Classes;

public static class Helper
{
    public const string DBName = "Databaseu.mdf";   //Name of the MSSQL Database.
    public const string tblName = "Users";      // Name of the user Table in the Database
    public const string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\" 
                                    + DBName + ";Integrated Security=True";   // The Data Base is in the App_Data = |DataDirectory|

   /////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static DataSet RetrieveTable(string SQLStr)
    // Gets A table from the data base acording to the SELECT Command in SQLStr;
    // Returns DataSet with the Table.
    {
        // connect to DataBase
        SqlConnection con = new SqlConnection(conString);

        // Build SQL Query
        SqlCommand cmd = new SqlCommand(SQLStr, con);

        // Build DataAdapter
        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        // Build DataSet to store the data
        DataSet ds = new DataSet();

        // Get Data form DataBase into the DataSet
        ad.Fill(ds, tblName);
       
        return ds;
    }

    /////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static string BuildSimpleUsersTable(DataTable dt)
    // the Method Build HTML user Table using the users in the DataTable dt.
    {
        string str = "<table class='usersTable' align='center'>";
        str += "<tr>";
        foreach (DataColumn column in dt.Columns)
        {
            str += "<td>" + column.ColumnName + "</td>";
        }

        foreach (DataRow row in dt.Rows)
        {
            str += "<tr>";
            foreach (DataColumn column in dt.Columns)
            {
                str += "<td>" + row[column] + "</td>";
            }
            str += "</tr>";
        }
        str += "</tr>";
        str += "</Table>";
        return str;
    }
    public static void Delete(int [] userIdToDelete)
    // The Array "userIdToDelete" contain the id of the users to delete. 
    // Delets all the users in the array "userIdToDelete".
    {
        // התחברות למסד הנתונים
        SqlConnection con = new SqlConnection(conString);

        // טעינת הנתונים
        string SQL = "SELECT * FROM " + tblName;
        SqlCommand cmd = new SqlCommand(SQL, con);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adapter.Fill(ds, tblName);

        // מחיקת שורות שנבחרו מתוך הדאטה סט
        for (int i = 0; i < userIdToDelete.Length; i++)
        {
            {
                DataRow[] dr = ds.Tables[tblName].Select($"userId = {userIdToDelete[i]}");
                dr[0].Delete();
            }
        }

        // עדכון הדאטה סט בבסיס הנתונים
        SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
        adapter.UpdateCommand = builder.GetDeleteCommand();
        adapter.Update(ds, tblName);
    }

    


    public static string BuildUsersTable(DataTable dt)
    // the Method Build HTML user Table with checkBoxes using the users in the DataTable dt.
    {

        string str = "<table class='usersTable' align='center'>";
        str += "<tr>";
        str += "<td> </td>";
        foreach (DataColumn column in dt.Columns)
        {
            str += "<td>" + column.ColumnName + "</td>";
        }

        foreach (DataRow row in dt.Rows)
        {
            str += "<tr>";
            str += "<td>" + CreateRadioBtn(row["userId"].ToString()) + "</td>";
            foreach (DataColumn column in dt.Columns)
            {
                str += "<td>" + row[column] + "</td>";
            }
            str += "</tr>";
        }
        str += "</tr>";
        str += "</Table>";
        return str;
    }

    public static string CreateRadioBtn(string id)
    {
        return $"<input type='checkbox' name='chk{id}' id='chk{id}' runat='server' />";
    }
 
 
    public static DataTable FilterTable(DataTable dt, string column, string criteria)
    {
        dt.DefaultView.RowFilter = column + "=" + criteria;
        return dt.DefaultView.ToTable();
    }

    public static object GetScalar(string SQL)
    {
        // התחברות למסד הנתונים

        SqlConnection con = new SqlConnection(conString);
        // בניית פקודת SQL
        SqlCommand cmd = new SqlCommand(SQL, con);

        // ביצוע השאילתא
        con.Open();
        object scalar = cmd.ExecuteScalar();
        con.Close();

        return scalar;
    }
    public static void CreateUser(User user)
    {
        // Create the SQL query to insert the user into the database
        string query = $"INSERT INTO Users(Username,Email, FirstName, LastName, Password ,Gender, Country, Role, EducationalBackground, Language) " +
                       $"VALUES ('{user.Username}','{user.Email}', '{user.FirstName}', '{user.LastName}','{user.Password}', '{user.Gender}', '{user.Country}', '{user.Role}', " +
                       $"'{user.EducationalBackground}', '{user.Language}')";

        // Execute the query
        ExecuteNonQuery(query);
    }
    public static bool NameExist(string Username)
    {
        string query = $"SELECT *  FROM Users WHERE Username = '{Username}'";
        DataSet ds = RetrieveTable(query);
        if (ds.Tables["Role"].Rows.Count > 0)
        {
            return true;
        }
        return false;
    }
    public static string GetRole(string Username)
    {
        string query = $"SELECT * FROM Users WHERE Username = '{Username}'";
        DataSet ds = RetrieveTable(query);
        if (ds.Tables["Users"].Rows.Count > 0)
        {
            return ds.Tables["Users"].Rows[0]["Role"].ToString();
        }
        return "Visitor";
    }
    public static bool Login(string user, string password)
    {
        // Build the SQL query to retrieve the user data
        string query = $"SELECT * FROM Users WHERE User = '{user}'";

        // Retrieve the user data from the database
        DataSet ds = RetrieveTable(query);

        // Check if there is a matching user
        if (ds.Tables["Users"].Rows.Count > 0)
        {
            // Retrieve the stored password for the user
            string storedPassword = ds.Tables["Users"].Rows[0]["Password"].ToString();

            // Verify the password
            if (storedPassword == password)
            {
                // Valid login credentials
                return true;
            }
        }

        // Invalid login credentials
        return false;
    }
    public static int ExecuteNonQuery(string SQL)
    {
        // התחברות למסד הנתונים
        //string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\תכנות אינטרנט\SQL\ADO\DBWeb_HelperConOnly\DBWeb\DBWeb\App_Data\Database2.mdf;Integrated Security = True";
        SqlConnection con = new SqlConnection(conString);

        // בניית פקודת SQL
        SqlCommand cmd = new SqlCommand(SQL, con);

        // ביצוע השאילתא
        con.Open();
        int n = cmd.ExecuteNonQuery();
        con.Close();

        return n;
    }
}

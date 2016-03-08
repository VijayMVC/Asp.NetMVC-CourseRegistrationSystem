using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace AdvCSharpQ1Project
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["AdvWebDevProjectConnectionString2"].ConnectionString;
            const string selectSQL = "SELECT StudentID, StudentLogin, StudentPassword FROM dbo.Students";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader reader;

            // Try to open database and read information.
            try
            {
                con.Open();
                reader = cmd.ExecuteReader();

                // For each item, add the author name to the displayed
                // list box text, and store the unique ID in the Value property.
                while (reader.Read())
                {
                    if (String.Equals(reader["StudentLogin"].ToString(), Username.Text, StringComparison.Ordinal) && String.Equals(reader["StudentPassword"].ToString(), Password.Text, StringComparison.Ordinal))
                    {
                        Session["User"] = Username.Text;
                        Session["StudentID"] = Convert.ToInt32(reader["StudentID"].ToString());
                    }
                }

                if (Session["User"] == null)
                {
                    LoginError.Text = "A user with that username and password was not found.";
                }
                else
                {
                    LoginError.Text = "Login Successful!";
                    Master.LabelMasterUsername.Text = Username.Text;
                    Master.ButtonLogOut.Visible = true;
                    Master.LabelMasterUsername.Visible = true;
                    Master.LabelUserDesc.Visible = true;
                }
                reader.Close();
            }
            catch (Exception err)
            {
                Response.Write("An error has occured while trying to login: " + err.ToString());
            }
            finally
            {
                con.Close();
            }
        }
    }
}
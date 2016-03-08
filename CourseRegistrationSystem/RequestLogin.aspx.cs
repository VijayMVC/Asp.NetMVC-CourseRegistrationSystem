using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace AdvCSharpQ1Project
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string storedProcedureName = "dbo.pInsLoginRequest";
            Dictionary<string, string> parameters = new Dictionary<string, string>();

            parameters.Add("@Name", TextBoxName.Text);
            parameters.Add("@EmailAddress", TextBoxEmailAddress.Text);
            parameters.Add("@LoginName", TextBoxLoginName.Text);
            parameters.Add("@NewOrReactivate", TextBoxNewOrReactivate.Text);
            parameters.Add("@ReasonForAccess", TextBoxReason.Text);
            parameters.Add("@DateNeededBy", TextBoxDateNeededBy.Text);

            var error = StoredProcedureExecutor.Execute(storedProcedureName, parameters);

            if (!String.IsNullOrEmpty(error))
                Response.Write("An error occured while adding the login request to the database.  Exception is: " + error);
        }
    }
}
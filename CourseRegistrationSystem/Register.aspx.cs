using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdvCSharpQ1Project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            string error = "";
            LabelStatus.Text = "";
            bool registrationAttempted = false;

            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkRow = (row.Cells[0].FindControl("chkCtrl") as CheckBox);

                    if (chkRow.Checked)
                    {
                        registrationAttempted = true;
                        string storedProcedureName = "dbo.pInsClassStudents";

                        Dictionary<string,string> parameters = new Dictionary<string, string>();

                        parameters.Add("@ClassID", row.Cells[1].Text);
                        parameters.Add("@StudentID",Session["StudentID"].ToString());

                        error = StoredProcedureExecutor.Execute(storedProcedureName, parameters);

                        if (!String.IsNullOrEmpty(error))
                            LabelStatus.Text = error;
                    }
                }
            }

            if (String.IsNullOrEmpty(error) && registrationAttempted)
                LabelStatus.Text = "  Successfully registered!";

            GridView1.DataBind();
        }
    }
}
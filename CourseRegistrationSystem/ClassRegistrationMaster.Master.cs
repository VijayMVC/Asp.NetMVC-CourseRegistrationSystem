using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdvCSharpQ1Project
{
    public partial class ClassRegistrationMaster : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] == null)
                {
                    LabelMasterUsername.Visible = false;
                    LabelUserDesc.Visible = false;
                    ButtonLogOut.Visible = false;
                }
                else
                {
                    LabelMasterUsername.Text = Session["User"].ToString();
                }
            }
        }

        protected void ButtonLogOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            LabelMasterUsername.Visible = false;
            LabelUserDesc.Visible = false;
            ButtonLogOut.Visible = false;
            Response.Redirect(Request.RawUrl);
        }
    }
}
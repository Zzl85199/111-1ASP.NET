using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            lblOutput.Text = Profile.Name;
            txtName.Text = Profile.Name;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtName.Text != "")
        {
            Profile.Name = txtName.Text;
            Response.Redirect("Default2.aspx");
        }
    }
}
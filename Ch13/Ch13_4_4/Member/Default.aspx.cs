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
            txtID.Text = Profile.Student.StudentId.ToString();
            txtName.Text = Profile.Student.Name;
            txtGrade.Text = Profile.Student.Grade.ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtID.Text != "")
        {
            Profile.Student.StudentId = Convert.ToInt32(txtID.Text);
        }
        if (txtName.Text != "")
        {
            Profile.Student.Name = txtName.Text;
        }
        if (txtGrade.Text != "")
        {
            Profile.Student.Grade = Convert.ToInt32(txtGrade.Text);
        }
        Response.Redirect("Default2.aspx");
    }
}
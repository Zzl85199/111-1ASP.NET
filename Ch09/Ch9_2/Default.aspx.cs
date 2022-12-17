using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblOutput.Text = "0";
        SqlDataSource1.SelectCommand = txtSQL.Text;
        GridView1.DataBind();        
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow) {
            int count;
            count = Convert.ToInt32(lblOutput.Text) + 1;   // 記錄數加一
            lblOutput.Text = count.ToString();
        }
    }
}
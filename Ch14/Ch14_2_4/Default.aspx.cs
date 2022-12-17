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
        string path = "~/images/";
        if (upImage.HasFile)
        {
            path += upImage.FileName;
            upImage.SaveAs(Server.MapPath(path));
            lblOutput.Text = "檔案: " + upImage.FileName + "上傳成功!";
        }
    }
}
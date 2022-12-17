using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // 第一次載入網頁
            ArrayList names = new ArrayList();
            names.Add("陳會安");
            names.Add("江小魚");
            names.Add("張無忌");
            names.Add("陳允傑");
            // 指定資料來源
            lstNames.DataSource = names;
            lstNames.DataBind(); // 建立資料繫結
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (lstNames.SelectedIndex > -1)
        {
            lblOutput.Text = "選擇的姓名: " + lstNames.SelectedItem.Text;
        }
    }
}
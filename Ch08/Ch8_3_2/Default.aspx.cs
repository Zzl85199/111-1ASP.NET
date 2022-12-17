using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection objCon;
        SqlCommand objCmd;
        string strDbCon;
        // 資料庫連接字串
        strDbCon = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                   "AttachDbFilename=" +
                   Server.MapPath("App_Data\\School.mdf") +
                   ";Integrated Security=True";
        // 建立Connection物件
        objCon = new SqlConnection(strDbCon);
        objCon.Open(); // 開啟資料庫連接
        // 建立Command物件的SQL指令
        objCmd = new SqlCommand(txtSQL.Text, objCon);
        // 使用ExecuteScalar執行SQL指令
        lblOutput.Text = "查詢結果: " + objCmd.ExecuteScalar();
        objCon.Close(); // 關閉資料庫連接
    }
}
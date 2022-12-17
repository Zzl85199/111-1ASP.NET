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
        SqlConnection objCon;
        SqlCommand objCmd;
        SqlDataReader objDR;
        string strDbCon, strSQL;
        // 資料庫連接字串
        strDbCon = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                   "AttachDbFilename=" +
                   Server.MapPath("App_Data\\School.mdf") +
                   ";Integrated Security=True";
        // 建立Connection物件
        objCon = new SqlConnection(strDbCon);
        objCon.Open(); // 開啟資料庫連接
        strSQL = "SELECT * FROM Students";
        // 建立Command物件的SQL指令
        objCmd = new SqlCommand(strSQL, objCon);
        // 取得DataReader物件
        objDR = objCmd.ExecuteReader();
        if (objDR.HasRows)
        {
            lblOutput.Text = "資料表記錄: <hr/>";
            // 顯示資料表的記錄
            while (objDR.Read())
            {
                lblOutput.Text += objDR["sid"] + " - ";
                lblOutput.Text += objDR["name"] + " - ";
                lblOutput.Text += objDR["tel"] + "<br/>";
            }
        }
        else
        {
            lblOutput.Text = "資料表中沒有記錄資料!";
        }
        objDR.Close(); // 關閉DataReader
        objCon.Close(); // 關閉資料庫連接
    }
}
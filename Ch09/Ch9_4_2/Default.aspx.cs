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
        string strDbCon, strSQL;
        int count;
        // 資料庫連接字串
        strDbCon = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                   "AttachDbFilename=" +
                   Server.MapPath("App_Data\\School.mdf") +
                   ";Integrated Security=True";
        if (Page.IsPostBack)
        {
            // 建立SQL敘述新增一筆資料表記錄
            strSQL = "INSERT INTO Students (sid, name" +
                     " , tel, birthday) VALUES ('";
            strSQL += txtID.Text + "',N'";
            strSQL += txtName.Text + "','";
            strSQL += txtTel.Text + "','";
            strSQL += txtBirthday.Text + "')";
            // 建立Connection物件
            objCon = new SqlConnection(strDbCon);
            objCon.Open(); // 開啟資料庫連接
            // 建立Command物件的SQL指令
            objCmd = new SqlCommand(strSQL, objCon);
            // 執行SQL指令
            count = objCmd.ExecuteNonQuery();
            if (count == 1)
            {
                lblOutput.Text = "插入一筆記錄成功 :" + strSQL;
            }
            else
            {
                lblOutput.Text = "錯誤: 插入記錄失敗!";
            }
            objCon.Close(); // 關閉資料庫連接
        }
    }
}
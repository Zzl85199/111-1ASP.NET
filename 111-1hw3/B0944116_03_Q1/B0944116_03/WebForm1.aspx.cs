using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B0944116_03
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static SqlConnection objCon;
        public static SqlCommand objCmd;
        public static string strDbCon, strSQL;
        public static int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            // 資料庫連接字串
            strDbCon = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                       "AttachDbFilename=" +
                       Server.MapPath("App_Data\\stock.mdf") +
                       ";Integrated Security=True";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            strSQL = "INSERT INTO stockdata (id, stockname" +
                     " , price, epsq1, epsq2, epsq3, epsq4, kind) VALUES ('";
            strSQL += TextBox1.Text + "',N'";
            strSQL += TextBox2.Text + "','";
            strSQL += TextBox3.Text + "','";
            strSQL += TextBox4.Text + "','";
            strSQL += TextBox5.Text + "','";
            strSQL += TextBox6.Text + "','";
            strSQL += TextBox7.Text + "',N'";
            strSQL += TextBox8.Text + "')";
            // 建立Connection物件
            objCon = new SqlConnection(strDbCon);
            objCon.Open(); // 開啟資料庫連接
            // 建立Command物件的SQL指令
            objCmd = new SqlCommand(strSQL, objCon);
            // 執行SQL指令
            count = objCmd.ExecuteNonQuery();
            GridView1.DataBind();
            if (count == 1)
            {
                Label9.Text = "插入一筆記錄成功 :" + strSQL;
            }
            else
            {
                Label9.Text = "錯誤: 插入記錄失敗!";
            }
            objCon.Close(); // 關閉資料庫連接
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            strSQL = "DELETE FROM stockdata WHERE (id= '";
            strSQL += TextBox1.Text + "')";

            // 建立Connection物件
            objCon = new SqlConnection(strDbCon);
            objCon.Open(); // 開啟資料庫連接
            // 建立Command物件的SQL指令
            objCmd = new SqlCommand(strSQL, objCon);
            // 執行SQL指令
            count = objCmd.ExecuteNonQuery();
            GridView1.DataBind();
            if (count == 1)
            {
                Label9.Text = "刪除一筆記錄成功 :" + strSQL;
            }
            else
            {
                Label9.Text = "錯誤: 插入記錄失敗!";
            }
            objCon.Close(); // 關閉資料庫連接
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            strSQL = "UPDATE stockdata SET stockname = 'N";
            strSQL += TextBox2.Text + "',price ='";
            strSQL += TextBox3.Text + "',epsq1 ='";
            strSQL += TextBox4.Text + "',epsq2 ='";
            strSQL += TextBox5.Text + "',epsq3 ='";
            strSQL += TextBox6.Text + "',epsq4 ='";
            strSQL += TextBox7.Text + "',kind ='N";
            strSQL += TextBox8.Text + "'WHERE (id='";
            strSQL += TextBox1.Text + "')";

            // 建立Connection物件
            objCon = new SqlConnection(strDbCon);
            objCon.Open(); // 開啟資料庫連接
            // 建立Command物件的SQL指令
            objCmd = new SqlCommand(strSQL, objCon);
            // 執行SQL指令
            count = objCmd.ExecuteNonQuery();
            GridView1.DataBind();
            if (count == 1)
            {
                Label9.Text = "修改一筆記錄成功 :" + strSQL;
            }
            else
            {
                Label9.Text = "錯誤: 插入記錄失敗!";
            }
            objCon.Close(); // 關閉資料庫連接
        }
    }
}
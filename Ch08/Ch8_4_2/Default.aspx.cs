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
        SqlDataAdapter objDataAdapter;
        string strDbCon, strSQL;
        // 資料庫連接字串
        strDbCon = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
             "AttachDbFilename=" +
             Server.MapPath("App_Data\\School.mdf") +
             ";Integrated Security=True";
        // 建立Connection物件
        objCon = new SqlConnection(strDbCon);
        objCon.Open(); // 開啟資料庫連接
        // 建立DataAdapter物件的SQL指令
        strSQL = "SELECT * FROM Students";
        objDataAdapter = new SqlDataAdapter(strSQL, objCon);
        // 填入DataSet物件
        DataSet objDataSet = new DataSet();
        objDataAdapter.Fill(objDataSet, "Students");
        lblOutput.Text = "資料表記錄: <hr/>";
        foreach (DataRow objRow in objDataSet.Tables["Students"].Rows)
        {
            lblOutput.Text += objRow["sid"] + " - ";
            lblOutput.Text += objRow["name"] + " - ";
            lblOutput.Text += objRow["tel"] + " - ";
            lblOutput.Text += objRow["birthday"] + "<br/>";
        }
        objCon.Close(); // 關閉資料庫連接
    }
}
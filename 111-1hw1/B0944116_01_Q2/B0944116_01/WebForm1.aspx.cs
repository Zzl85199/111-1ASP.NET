using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B0944116_01
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //使用DataSet物件取得Grades資料庫中fivegrade資料表的內容並且顯示每筆資料的下列欄位(id、name、chinese、math和english)。
            SqlConnection objCon;
            SqlDataAdapter objDataAdapter;
            string strDBcon, strSQL;

            strDBcon = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                       "AttachDbFilename=" +
                       Server.MapPath("App_Data\\Grades.mdf") +
                       ";Integrated Security=True";
            objCon = new SqlConnection(strDBcon);
            objCon.Open();
            strSQL = "SELECT * FROM fivegrade";
            objDataAdapter = new SqlDataAdapter(strSQL, objCon);
            DataSet objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet, "fivegrade");

            Label1.Text = "資料表紀錄: <hr/>";
            Label1.Text += "__id___name__chinese__math__english <br>";
            foreach (DataRow objRow in objDataSet.Tables["fivegrade"].Rows)
                {
                    Label1.Text += objRow["id"] + "-";
                    Label1.Text += objRow["name"] + "---";
                    Label1.Text += objRow["chinese"] + "-------";
                    Label1.Text += objRow["math"] + "-------";
                    Label1.Text += objRow["english"] + "<br/>";
                }
            
        }
    }
}
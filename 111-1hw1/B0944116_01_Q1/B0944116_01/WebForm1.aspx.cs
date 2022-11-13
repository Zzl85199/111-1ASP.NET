using System;
using System.Collections.Generic;
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
            SqlConnection objCon;
            SqlCommand objcmd;
            SqlDataReader objDR;
            string strDBcon, strSQL;

            strDBcon = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                       "AttachDbFilename=" +
                       Server.MapPath("App_Data\\Grades.mdf") +
                       ";Integrated Security=True;";
            objCon = new SqlConnection(strDBcon);
            objCon.Open();
            strSQL = "SELECT * FROM fivegrade";
            objcmd = new SqlCommand(strSQL, objCon);
            objDR = objcmd.ExecuteReader();
            if (objDR.HasRows) {
                Label1.Text = "資料表紀錄: <hr/>";
                while (objDR.Read()) {
                    Label1.Text += objDR["id"] + "-";
                    Label1.Text += objDR["name"] + "-";
                    Label1.Text += objDR["chinese"] + "-";
                    Label1.Text += objDR["math"] + "-";
                    Label1.Text += objDR["english"] + "-";
                    Label1.Text += objDR["computer"] + "-";
                    Label1.Text += objDR["programming"] + "<br/>";
                }
            }

        }
    }
}
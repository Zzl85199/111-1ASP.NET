using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // 取得實際路徑
        string path = Server.MapPath(
                     Request.ServerVariables["PATH_INFO"]);
        // 建立FileInfo物件
        FileInfo fInfo = new FileInfo(path);
        // 顯示檔案資訊
        lblOutput.Text = "檔案名稱: " + fInfo.Name + "<br/>";
        lblOutput.Text += "檔案全名: " + fInfo.FullName + "<br/>";
        lblOutput.Text += "檔案副檔名: " + fInfo.Extension + "<br/>";
        lblOutput.Text += "父資料夾名稱: " + fInfo.Directory.Name + "<br/>";
        lblOutput.Text += "父資料夾全名: " + fInfo.DirectoryName + "<br/>";
        lblOutput.Text += "建立日期: " + fInfo.CreationTime + "<br/>";
        lblOutput.Text += "存取日期: " + fInfo.LastAccessTime + "<br/>";
        lblOutput.Text += "寫入日期: " + fInfo.LastWriteTime + "<br/>";
        lblOutput.Text += "檔案尺寸: " + fInfo.Length + "<br/>";
    }
}
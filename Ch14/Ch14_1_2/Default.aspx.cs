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
        string path = Server.MapPath("Test");
        int i = 0;
        DirectoryInfo dirInfo = new DirectoryInfo(path);
        try
        { // 取得資料夾清單
            DirectoryInfo[] subDirs = dirInfo.GetDirectories();
            for (i = 0; i < subDirs.Length; i++)
            {
                lblOutput.Text += subDirs[i].Name + "<br/>";
            }
        }
        catch (DirectoryNotFoundException ex)
        {
            lblOutput.Text += ex.Message + "<br/>";
        }
        lblOutput.Text += "<hr/>";
        try
        { // 取得檔案清單
            FileInfo[] subFiles = dirInfo.GetFiles();
            foreach (FileInfo subFile in subFiles)
            {
                lblOutput.Text += subFile.Name + "<br/>";
            }
        }
        catch (DirectoryNotFoundException ex)
        {
            lblOutput.Text += ex.Message + "<br/>";
        }
    }
}
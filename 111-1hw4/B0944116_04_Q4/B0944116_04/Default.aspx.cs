﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label13.Text = "課程編號 : CS101";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label13.Text = "課程編號 : CS121";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label13.Text = "課程編號 : CS203";
    }
}
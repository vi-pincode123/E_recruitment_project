﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class JobSeeker_examlogin : System.Web.UI.Page
{

    string str, id;
    SqlDataReader rd;
    Conclass con = new Conclass();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            str = "select cname from compregn";
            rd = con.ReadData(str);
            while (rd.Read())
            {
                ddcomp.Items.Add(rd.GetString(0));
            }
            displayjob();
        }

    }

    //protected void btnsub_Click(object sender, EventArgs e)
    //{
       
    //}
    private void displayjob()
    {
        ddjob.Items.Clear();

        String s = "select compid from compregn where cname='" + ddcomp.SelectedItem.ToString() + "'";
        rd = con.ReadData(s);
        if (rd.Read())
        {
            id = rd.GetValue(0).ToString();
        }
        s = "select j.jobname from jobdetails j,compregn c where j.compid=c.compid and j.compid='" + id + "'";
        rd = con.ReadData(s);
        while (rd.Read())
        {
            ddjob.Items.Add(rd.GetString(0));
        }
    }
    protected void ddcomp_SelectedIndexChanged(object sender, EventArgs e)
    {
        displayjob();
    }

    protected void btnsub_Click(object sender, ImageClickEventArgs e)
    {
        Session["r"] = txtrn.Text;
        Session["cmp"] = ddcomp.SelectedItem.ToString();
        Session["jb"] = ddjob.SelectedItem.ToString();
        Response.Redirect("~/JobSeeker/takequiz.aspx");
    }
}

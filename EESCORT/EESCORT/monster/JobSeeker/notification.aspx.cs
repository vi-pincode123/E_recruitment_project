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
public partial class JobSeeker_notification : System.Web.UI.Page
{
    Conclass con = new Conclass();
    String st;
    SqlDataReader r;
    DataSet ds = new DataSet();
    string qn, qb;
    int RowIndex;
    protected void Page_Load(object sender, EventArgs e)
    {
        st = "select course from academicdetails where usname='" + Session["juser"].ToString() + "'";
        r = con.ReadData(st);
        if (r.Read())
        {
            qn = r.GetString(0);
        }
        st = "select branch from academicdetails where usname='" + Session["juser"].ToString() + "'";
        r = con.ReadData(st);
        if (r.Read())
        {
            qb = r.GetString(0);
        }
        if (!IsPostBack)
            viewvacancy();
    }
    protected void viewvacancy()
    {
        st = "select c.cname,v.jobtitle,v.salary,v.loc,v.des,v.compid from vacancyadd v,compregn c where v.elgcourse='" + qn + "' and v.elgbranch='" + qb + "' and v.compid=c.compid";
        ds = con.GetData(st);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Submit"))
        {
            RowIndex = Convert.ToInt32(e.CommandArgument.ToString());
        }
        string st1 = GridView1.Rows[RowIndex].Cells[5].Text;
        string s = GridView1.Rows[RowIndex].Cells[1].Text;
        string date1 = System.DateTime.Now.ToString("MM/dd/yyyy");
        st = "insert into sendappln values('" + Session["juser"].ToString() + "','" + st1 + "','" + s + "','" + date1 + "','applied')";
        con.CreateCommand(st);
        Response.Redirect("~/jobseeker/jshome.aspx");
    }
}

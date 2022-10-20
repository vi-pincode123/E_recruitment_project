using System;
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
public partial class searchjob : System.Web.UI.Page
{
    string s;
    SqlDataReader rd;
    Conclass obj=new Conclass();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            s = "select jobtitle from vacancyadd";
            rd = obj.ReadData(s);
            while (rd.Read())
            {
                ddjob.Items.Add(rd.GetString(0));
            }

            s = "select loc from vacancyadd";
            rd = obj.ReadData(s);
            while (rd.Read())
            {
                ddcity.Items.Add(rd.GetString(0));
            }
            s = "select compid from vacancyadd";
            rd = obj.ReadData(s);
            while (rd.Read())
            {
                ddcmp.Items.Add(rd.GetString(0));
            }

        }
        
    }
    protected void viewvacancy()
    {
        s = "select jobid,compid,jobtitle,loc,salary from vacancyadd where jobtitle='"+ddjob.SelectedItem+"'";
        ds = obj.GetData(s);
        gdjob.DataSource = ds;
        gdjob.DataBind();
    }
    protected void viewvacancyloc()
    {
        s = "select jobid,compid,jobtitle,loc,salary from vacancyadd where loc='" + ddcity.SelectedItem + "'";
        ds = obj.GetData(s);
        gdjob.DataSource = ds;
        gdjob.DataBind();
    }
    protected void viewvacancycmp()
    {
        s = "select jobid,compid,jobtitle,loc,salary from vacancyadd where compid='" + ddcmp.SelectedItem + "'";
        ds = obj.GetData(s);
        gdjob.DataSource = ds;
        gdjob.DataBind();
    }
    protected void btns_Click(object sender, EventArgs e)
    {
        viewvacancy(); 
    }
    protected void gdjob_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("~/jslogin.aspx");
    }
    protected void btncity_Click(object sender, EventArgs e)
    {
        viewvacancyloc();
    }
    protected void btncmp_Click(object sender, EventArgs e)
    {
        viewvacancycmp();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/cs.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/about.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/contact.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/jslogin.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/jobseeker/jsregn.aspx");
    }
}

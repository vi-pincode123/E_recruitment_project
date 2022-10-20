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
public partial class companyregn : System.Web.UI.Page
{
    String sql;
    String s;
    SqlDataReader rdr;
    Conclass obj = new Conclass();
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/searchjob.aspx");
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
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        s = "select usname from login where usname='" + txtun.Text + "'";
        rdr = obj.ReadData(s);
        if (rdr.Read())
        {
            lblUser.Text = "Username Already Existed";
        }
        else
        {
            sql = "insert into compregn(compid,cname,cdes,caddr,cplace,cphone,cmob,cemail,curl,status)values('" + txtun.Text + "','" + txtcname.Text + "','" + txtcdesc.Text + "','" + txtcaddrs.Text + "','" + txtplace.Text + "','" + txtphone.Text + "','" + txtmob.Text + "','" + txtmail.Text + "','" + txturl.Text + "','pending')";
            obj.CreateCommand(sql);
            sql = "insert into login values('company','" + txtun.Text + "','" + txtPass.Text + "')";
            obj.CreateCommand(sql);
            txtcaddrs.Text = "";
            txtcdesc.Text = "";
            txtcname.Text = "";
            txtmail.Text = "";
            txtmob.Text = "";
            txtphone.Text = "";
            txtplace.Text = "";
            txturl.Text = "";
            Response.Redirect("~/Default.aspx");
        }
    }
   
}

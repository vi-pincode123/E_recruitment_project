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

public partial class jsregn : System.Web.UI.Page
{
    String sql;
    String s;
    SqlDataReader rdr;
    Conclass obj = new Conclass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        s = "select usname from login where usname='" + txtUser.Text + "'";
        rdr=obj.ReadData(s);
        if (rdr.Read())
        {
            lbluser.Text = "Username Already Existed";
        }
        else
        {
            sql = "insert into jobseekerreg(usname,name,fname,mname,dob,nat,gen,cat,haddr,hplace,hdist,hstate,hpin,caddr,cplace,cdist,cstate,cpin,phone,mob,email,status)values('" + txtUser.Text + "','" + txtname.Text + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtdob.Text + "','" + txtnat.Text + "','" + radgen.Text + "','" + txtcat.Text + "','" + txthaddr.Text + "','" + txthplace.Text + "','" + txtdist.Text + "','" + txtstate.Text + "'," + txthpin.Text + ",'" + txtcaddr.Text + "','" + txtcplace.Text + "','" + txtcdist.Text + "','" + txtcst.Text + "'," + txtcpin.Text + "," + txtphno.Text + "," + txtmno.Text + ",'" + txtemail.Text + "','pending')";
            obj.CreateCommand(sql);
            sql = "insert into login values('job seeker','" + txtUser.Text + "','" + txtPass.Text + "')";
            obj.CreateCommand(sql);
        }
        txtcaddr.Text = "";
        txtcat.Text = "";
        txtcdist.Text = "";
        txtCpass.Text = "";
        txtcpin.Text = "";
        txtcplace.Text = "";
        txtcst.Text = "";
        txtdist.Text = "";
        txtdob.Text = "";
        txtemail.Text = "";
        txtfname.Text = "";
        txthaddr.Text = "";
        Response.Redirect("~/Default.aspx");
    }
    
        
    



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
}

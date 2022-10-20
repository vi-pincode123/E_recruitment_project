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
public partial class cmplogin : System.Web.UI.Page
{
    Conclass obj = new Conclass();
    String sql;
    String str;
    SqlDataReader rdr;
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/Default.aspx"); 
    //}
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
    str = "select ustype from login"; //where usname='" + txtuname.Text + "' and pass='" + txtpass.Text + "'";
        rdr = obj.ReadData(str);
        if (rdr.Read())
        {
            String utype = rdr.GetString(0);
            if (utype == "admin")
            {
                Response.Redirect("~/Admin/adminhome.aspx"); 
            }
            else if (utype == "job seeker")
            {
                Session["juser"] = txtuname.Text;
                str = "select status from jobseekerreg where usname='" + txtuname.Text + "'";

                rdr = obj.ReadData(str);
                if (rdr.Read())
                {
                    String st = rdr.GetString(0);
                    if (st == "approved")
                        Response.Redirect("~/searchjob.aspx");
                }

            }
            else if (utype == "company")
            {
                Session["cmpuser"] = txtuname.Text;
                str = "select status from compregn where compid='" + txtuname.Text + "'";

                rdr = obj.ReadData(str);
                if (rdr.Read())
                {
                    String st = rdr.GetString(0);
                    if (st == "approved")
                        Response.Redirect("~/Company/cmphome.aspx"); 
                }
            }
            else
            {
                
            }


        }
        else
            lbl1.Text = "invalid username or password";
    }

    //protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    //{
    //    Response.Redirect("~/searchjob.aspx"); 
    //}
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
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
}

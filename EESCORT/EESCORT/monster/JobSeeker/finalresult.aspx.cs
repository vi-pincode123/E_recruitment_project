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
public partial class JobSeeker_finalresult : System.Web.UI.Page
{
    SqlDataReader rd;
    Conclass con = new Conclass();
    string s, str, id, sq;

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

    //protected void ddcomp_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //}
    private void displayjob()
    {
        String s = "select cname from compregn where cname='" + ddcomp.SelectedItem.ToString() + "'";
        rd = con.ReadData(s);
        if (rd.Read())
        {
            id = rd.GetValue(0).ToString();
        }
        s = "select jobname from jobdetails where compid='" + id + "'";
        rd = con.ReadData(s);
        while (rd.Read())
        {
            ddjob.Items.Add(rd.GetString(0));
        }
    }
    protected void ddcomp_SelectedIndexChanged1(object sender, EventArgs e)
    {
        displayjob();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["sc"] = ddcomp.SelectedItem.ToString();
        Session["sj"] = ddjob.SelectedItem.ToString();
        Response.Redirect("~/JobSeeker/finallist.aspx");
    }
}

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
public partial class JobSeeker_viewresult : System.Web.UI.Page
{
    string str, id;
    Conclass con = new Conclass();
    SqlDataReader rd;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            str = "select regno,compid,jobtitle,mark,status from result where status='qualified' and jobtitle='"+Session["sj"].ToString()+"'";
            ds = con.GetData(str);
            gd2.DataSource = ds;
            gd2.DataBind();
        }

    }
    protected void gd2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //id = gd1.SelectedDataKey.Value.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/intschedule.aspx");
    }
}

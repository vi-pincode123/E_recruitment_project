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

public partial class JobSeeker_finallist : System.Web.UI.Page
{
    SqlDataReader rd;
    Conclass con = new Conclass();
    string str;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            appresult();
    }
    public void appresult()
    {
        str = "select regno,compid,jobtitle,finstatus from result where finstatus='approve' and compid='" + Session["sc"].ToString() + "'";
        ds = con.GetData(str);
        gd1.DataSource = ds;
        gd1.DataBind();

    }

    protected void gd1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

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
public partial class JobSeeker_score : System.Web.UI.Page
{
    string str;
    Conclass con = new Conclass();
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        str = "select tqn,mark from result where usname='" + Session["juser"].ToString() + "'";
        rd = con.ReadData(str);
        if (rd.Read())
        {
            Label1.Text = rd.GetString(0);
            Label2.Text = rd.GetString(1);
        }

    }
}

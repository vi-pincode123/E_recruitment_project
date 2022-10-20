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
public partial class JobSeeker_viewintschedule : System.Web.UI.Page
{
    String str;
    SqlDataReader rd;
    Conclass con = new Conclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        str = "select se.regno,se.compid,s.jobtitle,s.place,s.date,s.time from schinterview as s cross join sendintsch as se where se.jobtitle=s.jobtitle and se.regno='" + Session["rn"].ToString() + "'";
        rd = con.ReadData(str);
        if (rd.Read())
        {
            lb1.Text = rd.GetString(0).ToString();
            lb2.Text = rd.GetString(1).ToString();
            lb3.Text = rd.GetString(2).ToString();
            lb4.Text = rd.GetString(3).ToString();
            lb5.Text = rd.GetString(4).ToString();
            lb6.Text = rd.GetString(5).ToString();

        }
    }
}

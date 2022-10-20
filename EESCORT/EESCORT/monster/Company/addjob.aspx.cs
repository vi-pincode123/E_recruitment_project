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
public partial class Company_addjob : System.Web.UI.Page
{
    String str, id;
    Conclass con = new Conclass();
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            str = "select cname from compregn where compid='" + Session["cmpuser"].ToString() + "'";
            rd = con.ReadData(str);
            if (rd.Read())
                lblCompany.Text = rd.GetString(0);
            
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        str = "insert into jobdetails(compid,jobname)values('" + lblCompany.Text + "','" + txtjob.Text + "')";
        con.CreateCommand(str);
        txtjob.Text = "";
    }
   
}

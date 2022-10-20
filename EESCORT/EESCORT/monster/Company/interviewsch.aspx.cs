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
public partial class Company_interviewsch : System.Web.UI.Page
{
    string str;
    Conclass con = new Conclass();
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            str = "select jobname from jobdetails where compid='" + Session["cmpuser"].ToString() + "'";
            rd = con.ReadData(str);
            while (rd.Read())
            {
                ddjob.Items.Add(rd.GetString(0));
                Session["jj"] = ddjob.SelectedItem.ToString();
            }
        }

    }
    protected void btns_Click(object sender, EventArgs e)
    {
        str = "insert into schinterview values('" + Session["cmpuser"].ToString() + "','" + ddjob.SelectedItem.ToString() + "','" + txtpl.Text + "','" + txtdt.Text + "','" + txtti.Text + "')";
        con.CreateCommand(str);
        txtdt.Text = "";
        txtpl.Text = "";
        txtti.Text = "";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/sendinterview.aspx");
    }
}

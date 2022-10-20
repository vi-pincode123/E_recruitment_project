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
public partial class JobSeeker_academic : System.Web.UI.Page
{
    Conclass con = new Conclass();
    String str;
    SqlDataReader rdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            str = "select course from course";
            rdr = con.ReadData(str);
            while (rdr.Read())
            {
                slcourse.Items.Add(rdr.GetString(0));
            }
            displaybranch();
        }

    }
    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        str = "insert into academicdetails values('" + Session["juser"].ToString() + "','" + slcourse.SelectedItem + "','" + txtclg.Text + "','" + sluty.SelectedItem + "','" + slbranch.SelectedItem + "'," + txtsem.Text + "," + txts1.Text + "," + txts2.Text + "," + txts3.Text + "," + txts4.Text + "," + txts5.Text + "," + txts6.Text + "," + txts7.Text + "," + txts8.Text + "," + txtsslc.Text + "," + txtsyear.Text + "," + txtp2.Text + "," + txtpyear.Text + "," + txtagr.Text + ",'" + txtdoj.Text + "','" + txtdoc.Text + "','" + txtexp.Text + "')";
        con.CreateCommand(str);
        Response.Redirect("~/JobSeeker/jshome.aspx");
    }
    protected void slbranch_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    private void displaybranch()
    {
        slbranch.Items.Clear();
        str = "select branch from coursedetails where course='" + slcourse.SelectedItem.ToString() + "'";
        rdr = con.ReadData(str);
        while (rdr.Read())
        {
            slbranch.Items.Add(rdr.GetString(0));
        }
    }
    protected void slcourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        displaybranch();
    }
}

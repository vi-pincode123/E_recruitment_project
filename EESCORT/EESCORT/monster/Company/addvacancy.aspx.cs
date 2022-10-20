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
public partial class Company_addvacancy : System.Web.UI.Page
{
    String sql, str;
    Conclass obj = new Conclass();
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            str = "select jobname from jobdetails where compid='" + Session["cmpuser"].ToString() + "' ";
            rd = obj.ReadData(str);
            while (rd.Read())
            {
                ddcomp.Items.Add(rd.GetString(0));
            }


            str = "select course from course";
            rd = obj.ReadData(str);
            while (rd.Read())
            {
                slcourse.Items.Add(rd.GetString(0));
            }
        }
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        sql = "insert into vacancyadd(compid,jobtitle,elgcourse,elgbranch,process,salary,loc,des,nvac,period)values('" + Session["cmpuser"].ToString() + "','" + ddcomp.Text + "','" + slcourse.Text + "','" + slbranch.Text + "','" + txtprs.Text + "'," + txtsal.Text + ",'" + txtloc.Text + "','" + txtdec.Text + "'," + txtvac.Text + ",'" + txtduration.Text + "')";
        obj.CreateCommand(sql);
        txtdec.Text = "";
        txtloc.Text = "";
        txtprs.Text = "";
        txtsal.Text = "";
        txtvac.Text = "";
        
    }



    protected void slcourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        slbranch.Items.Clear();
        str = "select branch from coursedetails where course='" + slcourse.SelectedItem.ToString() + "'";
        rd = obj.ReadData(str);
        while (rd.Read())
        {
            slbranch.Items.Add(rd.GetString(0));
        }
    }
    protected void ddcomp_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void slbranch_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtdec_TextChanged(object sender, EventArgs e)
    {

    }
}

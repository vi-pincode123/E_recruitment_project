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

public partial class Company_sendexsch : System.Web.UI.Page
{
    int RowIndex, d;
    SqlDataReader rd;
    Conclass con = new Conclass();
    string s, str, id, username, number;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = Session["comp"].ToString();
            Label2.Text = Session["jtitle"].ToString();
            //ddcomp.Items.Clear();
            //str = "select cname from compregn";
            //rd = con.ReadData(str);
            //while (rd.Read())
            //{
            //    ddcomp.Items.Add(rd.GetString(0));
            //}
            //displayjobtitle();
            schedule();

        }


    }
    private void Autogeneration()
    {
        str = "select MAX(regno) as rno from sendexamsch";
        rd = con.ReadData(str);
        while (rd.Read())
        {
            if (rd.IsDBNull(0))
            {
                number = "1000";
            }
            else
            {
                d = int.Parse(rd["rno"].ToString());
                number = Convert.ToString(d + 1);
            }
        }
    }
    protected void schedule()
    {
        readcompanyid();
        str = "select usname from sendappln where compid='" + id + "' and jobtitle='" + Session["jtitle"].ToString() + "'";
        ds = con.GetData(str);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    private void readcompanyid()
    {
       // ddjob.Items.Clear();

        String s = "select compid from compregn where cname='" + Session["comp"].ToString() + "'";
        rd = con.ReadData(s);
        if (rd.Read())
        {
            id = rd.GetValue(0).ToString();
        }
        //s = "select j.jobname from jobdetails j,compregn c where j.compid=c.compid and j.compid='" + id + "'";
        //rd = con.ReadData(s);
        //while (rd.Read())
        //{
        //    ddjob.Items.Add(rd.GetString(0));
        //}
    }
    protected void ddcomp_SelectedIndexChanged(object sender, EventArgs e)
    {

        //displayjobtitle();
    }




    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //if (e.CommandName.Equals("Submit"))
        //{
        //    RowIndex = Convert.ToInt32(e.CommandArgument.ToString());
        //}
    }

    protected void ddjob_SelectedIndexChanged(object sender, EventArgs e)
    {
        //schedule();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int k = GridView1.Rows.Count;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            Autogeneration();
            username = GridView1.Rows[i].Cells[0].Text;

            str = "insert into sendexamsch values('" + number + "','" + username + "','" + Label1.Text + "','" + Label2.Text+ "','" + System.DateTime.Now.ToString() + "')";
            con.CreateCommand(str);
        }
        Response.Redirect("~/Admin/adminhome.aspx");

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Submit"))
        {
            RowIndex = Convert.ToInt32(e.CommandArgument.ToString());
        }
    }
}

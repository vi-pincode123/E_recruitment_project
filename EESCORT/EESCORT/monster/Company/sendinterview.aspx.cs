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
public partial class Company_sendinterview : System.Web.UI.Page
{
    string str, username, no,job;
    int RowIndex;
    Conclass con = new Conclass();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        str = "select regno,usname,jobtitle from result where status='qualified'";
        ds = con.GetData(str);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Submit"))
        {
            RowIndex = Convert.ToInt32(e.CommandArgument.ToString());
        }
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            //Autogeneration();
            no = GridView1.Rows[i].Cells[0].Text;
            username = GridView1.Rows[i].Cells[1].Text;
            job = GridView1.Rows[i].Cells[3].Text;
            str = "insert into sendintsch values('" + no + "','" + username + "','" + Session["cmpuser"].ToString() + "','" + job + "')";
            con.CreateCommand(str);
            Response.Redirect("cmphome.aspx");
        }
    }
   
   

    
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}

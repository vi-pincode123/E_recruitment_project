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

public partial class Administrator_Communication : System.Web.UI.Page
{
    Conclass con = new Conclass();
    SqlDataReader rdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            pnlinbox.Visible = true;
            pnlsent.Visible = false;
            pnlcompose.Visible = false;
            pnlview.Visible = false;
            inbox();
        }
   }
    void inbox()
    {
        //103 for only display date
        string inbo = "select Id,FromId,ToId,Subject,Contents,convert(varchar(10),MDate,103) as MDate,MailStatus from MailDetails where ToId='admin@pms.com'";
        //rdr = con.select(inbo);
        grdinbox.DataSource = con.GetData (inbo);
        grdinbox.DataBind();
        string count = "select count(*) from MailDetails where  ToId='admin@pms.com' and MailStatus=1 ";
        lblinboxstatus .Text = "(" + con.ExecuteScalar (count).ToString() + ")";

    }
    void sentmail()
    {
        string sent = "select Id,FromId,ToId,Subject,Contents,convert(varchar(10),MDate,103) as MDate,MailStatus from  MailDetails where FromId='admin@pms.com'";
        grdsentbox.DataSource = con.GetData(sent);
        grdsentbox .DataBind();
        string count = "select count(*) from MailDetails where  FromId='admin@pms.com'";
        lblsentstatus .Text = "(" + con.ExecuteScalar(count).ToString() + ")";
    }

    protected void lnkbtnsentmail_Click(object sender, EventArgs e)
    {
        pnlsent.Visible = true;
        pnlinbox.Visible = false;
        pnlcompose.Visible = false;
        pnlview.Visible = false;
        sentmail();

    }
    protected void lnkbtninbox_Click(object sender, EventArgs e)
    {
        pnlinbox.Visible = true;
        pnlsent.Visible = false;
        pnlcompose.Visible = false;
        pnlview.Visible = false;
        inbox();
    }
    protected void btnreply_Click(object sender, EventArgs e)
    {
        pnlcompose.Visible = true;
        pnlview .Visible = false ;
        pnlsent.Visible = false;
        pnlinbox.Visible = false;
        lblcomposefrom.Text = "admin@pms.com";
        drpcomposeto.Items.Clear();
        drpcomposeto.Items.Add("Select");
        drpcomposeto.Items.Add(lblviewfrom.Text);

    }
   
   
    protected void grdinbox_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        pnlview .Visible = true;
        pnlcompose .Visible = false;
        pnlsent.Visible = false;
        pnlinbox.Visible = false;
        //commmandArgument for check the id is matching or not 
        string inbox = "select * from MailDetails where Id=" + int.Parse(e.CommandArgument.ToString());
        rdr = con.ReadData (inbox);
        if (rdr.Read())
        {
            lblviewsubject .Text = rdr["Subject"].ToString();
            lblviewdate .Text = rdr["MDate"].ToString();
            lblviewfrom .Text = rdr["FromId"].ToString();
            lblviewto .Text = rdr["ToId"].ToString();
            lblviewcontent .Text = rdr["Contents"].ToString();
            btnreply .Visible = true;
            //update MailStatus=0 to 
            string update = "update MailDetails set MailStatus=0 where Id=" + int.Parse(e.CommandArgument.ToString());
            con.CreateCommand(update);
        }

    }
    protected void btnsent_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(txtcomposesubject.Text) || String.IsNullOrEmpty(txtcomposecontent.Text))
        {
            lblmsg.Visible = true;
            lblmsg.ForeColor =System.Drawing.Color.Red;
            lblmsg.Text = "* Required Fields";
        }
        else if (drpcomposeto.SelectedValue == "Select")
        {
            lblmsgto.Visible = true;
            lblmsgto.ForeColor = System.Drawing.Color.Red;
            lblmsgto.Text = "Pls Select ToId";
        }
        else 
        {
            string sent= "insert into MailDetails(FromId,ToId,Subject,Contents,MDate,MailStatus) values('" + lblcomposefrom.Text  + "','"+drpcomposeto.SelectedItem.ToString ()+"','"+txtcomposesubject.Text +"','"+txtcomposecontent.Text +"',getdate(),'1') ";
            con.CreateCommand (sent );
            lblmsg.Visible = true;
            txtcomposecontent .Text = "";
            txtcomposesubject .Text = "";
            drpcomposeto.SelectedValue = "Select";
            lblmsg.ForeColor = System.Drawing.Color.Green;
            lblmsg.Text = "Mail Sent";
        }
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        txtcomposecontent.Text = "";
        txtcomposesubject.Text = "";
        drpcomposeto.SelectedValue = "Select";
    }
    protected void lnkbtncomposemail_Click(object sender, EventArgs e)
    {
        drpcomposeto.Items.Clear();
        drpcomposeto.Items.Add("Select");
        drpcomposeto.SelectedValue = "Select";
        pnlcompose .Visible = true;
        pnlsent.Visible = false;
        pnlinbox.Visible = false;
        pnlview.Visible = false;
        lblcomposefrom.Text = "admin@pms.com";
        //To display all th username !admin
        string s = "select usname from login where usname !='admin' ";
        rdr = con.ReadData (s);
        while (rdr .Read())
        {
            drpcomposeto.Items.Add(rdr["usname"].ToString()+"@pms.com");
        }
    }
    protected void grdsentbox_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        pnlview.Visible = true;
        pnlcompose.Visible = false;
        pnlsent.Visible = false;
        pnlinbox.Visible = false;
        string inbox = "select * from MailDetails where Id=" + int.Parse(e.CommandArgument.ToString());
        rdr = con.ReadData(inbox);
        if (rdr.Read())
        {
            lblviewsubject.Text = rdr["Subject"].ToString();
            lblviewdate.Text = rdr["MDate"].ToString();
            lblviewfrom.Text = rdr["FromId"].ToString();
            lblviewto.Text = rdr["ToId"].ToString();
            lblviewcontent.Text = rdr["Contents"].ToString();
            btnreply.Visible = false ;
            string update = "update MailDetails set MailStatus=0 where Id=" + int.Parse(e.CommandArgument.ToString());
            con.CreateCommand(update);
        }
    }
    protected void grdinbox_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string status = ((Label)e.Row.FindControl("lblstatus")).Text;
            if (status == "True")
                e.Row.BackColor = System.Drawing.Color.ForestGreen;
            else
            {
                e.Row.BackColor = System.Drawing.Color.DimGray;
            }

        }
    }
    protected void chkinboxselect_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow row in grdinbox.Rows)
        {
            if (chkinboxselect.Checked)
                ((CheckBox)row.FindControl("chkinboxselect")).Checked = true;
            else
                ((CheckBox)row.FindControl("chkinboxselect")).Checked = false;
        }
    }
    protected void lnkinboxdelete_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in grdinbox.Rows)
        {

            CheckBox check = (CheckBox)row.FindControl("chkinboxselect");
            if (check.Checked)
            {
                Label lbl = (Label)row.FindControl("lblId");
                string sent = "Delete from MailDetails where Id=" + int.Parse(lbl.Text);
                con.CreateCommand(sent);
                inbox();
            }

        }
    }
    protected void lnksentdelete_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in grdsentbox.Rows)
        {

            CheckBox check = (CheckBox)row.FindControl("chksentmail");
            if (check.Checked)
            {
                Label lbl = (Label)row.FindControl("lblId");
                string sent = "Delete from MailDetails where Id=" + int.Parse(lbl.Text);
                con.CreateCommand(sent);
                sentmail();
            }

        }
    }
    protected void chksentselect_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow row in grdsentbox .Rows)
        {
            if (chksentselect.Checked)
                ((CheckBox)row.FindControl("chksentmail")).Checked = true;
            else
                ((CheckBox)row.FindControl("chksentmail")).Checked = false;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/adminhome.aspx");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/cs.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/about.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/contact.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/approvecompany.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/approvejs.aspx");
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/examsch.aspx");
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/addquestion.aspx");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/presult.aspx");
    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/Communication.aspx");
    }
    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/adminhome.aspx");
    }
}

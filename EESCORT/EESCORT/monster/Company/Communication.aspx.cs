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
public partial class Company_Communication : System.Web.UI.Page
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
        string inbo = "select Id,FromId,ToId,Subject,Contents,convert(varchar(10),MDate,103) as MDate,MailStatus from MailDetails where ToId='" + Session["cmpuser"].ToString() + "@pms.com" + "' ";
        //rdr = con.select(inbo);
        //grdinbox.DataSource = con.displaydata(inbo);
        grdinbox.DataSource = con.GetData(inbo);
        grdinbox.DataBind();
        string count = "select count(*) from MailDetails where  ToId='" + Session["cmpuser"].ToString() + "@pms.com" + "' and MailStatus=1 ";
        lblinboxstatus.Text = "(" + con.Scalar(count).ToString() + ")";


    }
    void sentmail()
    {
        string sent = "select Id,FromId,ToId,Subject,Contents,convert(varchar(10),MDate,103) as MDate,MailStatus from  MailDetails where FromId='" + Session["cmpuser"].ToString() + "@pms.com" + "'";
        grdsentbox.DataSource = con.GetData(sent);
        grdsentbox.DataBind();
        string count = "select count(*) from MailDetails where  FromId='" + Session["cmpuser"].ToString() + "@pms.com" + "'";
        lblsentstatus.Text = "(" + con.Scalar(count).ToString() + ")";

    }
    protected void lnksentmail_Click(object sender, EventArgs e)
    {
        pnlsent.Visible = true;
        pnlinbox.Visible = false;
        pnlcompose.Visible = false;
        pnlview.Visible = false;
        sentmail();
    }
    protected void lnkinbox_Click(object sender, EventArgs e)
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
        pnlview.Visible = false;
        pnlsent.Visible = false;
        pnlinbox.Visible = false;
        lblcomposefrom.Text = Session["cmpuser"].ToString() + "@pms.com";
        lblcomposeto.Text = "admin@pms.com";

        //pnlcompose.Visible = true;
        //pnlview.Visible = false;
        //pnlsent.Visible = false;
        //pnlinbox.Visible = false;
        //lblcomposefrom.Text = Session["username"].ToString() + "@sgrs.com";
        //drpcomposeto.Items.Clear();
        //drpcomposeto.Items.Add("Select");
        //drpcomposeto.Items.Add(lblviewfrom.Text);

    }
    protected void grdinbox_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        pnlview.Visible = true;
        pnlcompose.Visible = false;
        pnlsent.Visible = false;
        pnlinbox.Visible = false;
        string inbox = "select * from MailDetails where Id=" + int.Parse(e.CommandArgument.ToString());
        // rdr = con.select(inbox);
        rdr = con.ReadData(inbox);
        if (rdr.Read())
        {
            lblviewsubject.Text = rdr["Subject"].ToString();
            lblviewdate.Text = rdr["MDate"].ToString();
            lblviewfrom.Text = rdr["FromId"].ToString();
            lblviewto.Text = rdr["ToId"].ToString();
            lblviewcontent.Text = rdr["Contents"].ToString();
            btnreply.Visible = true;
            string update = "update MailDetails set MailStatus=0 where Id=" + int.Parse(e.CommandArgument.ToString());
            //con.iducommand(update);
            con.CreateCommand(update);
        }
    }
    protected void btnsent_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(txtcomposesubject.Text) || String.IsNullOrEmpty(txtcomposecontent.Text))
        {
            lblmsg.Visible = true;
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "* Required Fields";
        }
        else
        {
            string sent = "insert into MailDetails(ToId,FromId,Subject,Contents,MDate,MailStatus) values('" + lblcomposeto.Text + "','" + lblcomposefrom.Text + "','" + txtcomposesubject.Text + "','" + txtcomposecontent.Text + "',getdate(),'1') ";
            //con.iducommand(sent);
            con.CreateCommand(sent);
            lblmsg.Visible = true;
            txtcomposecontent.Text = "";
            txtcomposesubject.Text = "";
            lblmsg.ForeColor = System.Drawing.Color.LawnGreen;
            lblmsg.Text = "Mail Sent";
        }
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        txtcomposecontent.Text = "";
        txtcomposesubject.Text = "";
    }
    protected void lnkcomposemail_Click(object sender, EventArgs e)
    {
        pnlcompose.Visible = true;
        pnlsent.Visible = false;
        pnlinbox.Visible = false;
        pnlview.Visible = false;
        lblcomposeto.Text = "admin@pms.com";
        lblcomposefrom.Text = Session["cmpuser"].ToString() + "@pms.com";
    }
    protected void grdsentbox_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        pnlview.Visible = true;
        pnlcompose.Visible = false;
        pnlsent.Visible = false;
        pnlinbox.Visible = false;
        string inbox = "select * from MailDetails where Id=" + int.Parse(e.CommandArgument.ToString());
        // rdr = con.select(inbox);
        rdr = con.ReadData(inbox);
        if (rdr.Read())
        {
            lblviewsubject.Text = rdr["Subject"].ToString();
            lblviewdate.Text = rdr["MDate"].ToString();
            lblviewfrom.Text = rdr["FromId"].ToString();
            lblviewto.Text = rdr["ToId"].ToString();
            lblviewcontent.Text = rdr["Contents"].ToString();
            btnreply.Visible = false;
            string update = "update MailDetails set MailStatus=0 where Id=" + int.Parse(e.CommandArgument.ToString());
            // con.iducommand(update);
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
                // con.iducommand(sent);
                con.CreateCommand(sent);
                inbox();
            }

        }
    }
    protected void lnksentdelete_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in grdsentbox.Rows)
        {

            CheckBox check = (CheckBox)row.FindControl("sentselect");
            if (check.Checked)
            {
                Label lbl = (Label)row.FindControl("lblId");
                string sent = "Delete from MailDetails where Id=" + int.Parse(lbl.Text);
                // con.iducommand(sent);
                con.CreateCommand(sent);
                sentmail();
            }

        }
    }
    protected void chksentselect_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow row in grdsentbox.Rows)
        {
            if (chksentselect.Checked)
                ((CheckBox)row.FindControl("sentselect")).Checked = true;
            else
                ((CheckBox)row.FindControl("sentselect")).Checked = false;
        }
    }
    protected void grdinbox_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Company/addvacancy.aspx"); 
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Company/interviewsch.aspx"); 
    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Company/finallist.aspx"); 
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Company/passchange.aspx"); 
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Company/Communication.aspx"); 
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Company/cmphome.aspx"); 
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Company/about.aspx"); 
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Company/contact.aspx"); 
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Default.aspx"); 
    }
}

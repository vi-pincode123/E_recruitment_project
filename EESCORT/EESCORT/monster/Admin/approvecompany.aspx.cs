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
public partial class Admin_approvecompany : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    String cid;
    String str, str1, sql;
    Conclass obj = new Conclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            appcmp();


    }
    public void appcmp()
    {
        sql = "select compid,cname,cdes,caddr,cemail,curl from compregn where status='pending'";
        ds = obj.GetData(sql);
        gridapprovecomp.DataSource = ds;
        gridapprovecomp.DataBind();
    }
    protected void gridapprovecomp_SelectedIndexChanged(object sender, EventArgs e)
    {
        cid = gridapprovecomp.SelectedDataKey.Value.ToString();
        str1 = "update compregn set status='approved' where compid='" + cid + "'";
        obj.CreateCommand(str1);
        appcmp();
    }
}

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
public partial class Admin_approvejs : System.Web.UI.Page
{
    String sql, str1, cid;
    DataSet ds = new DataSet();
    Conclass obj = new Conclass();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            appjs();

    }
    public void appjs()
    {
        sql = "select usname,name,email from jobseekerreg where status='pending'";
        ds = obj.GetData(sql);
        gridjs.DataSource = ds;
        gridjs.DataBind();
    }
    protected void gridjs_SelectedIndexChanged(object sender, EventArgs e)
    {
        cid = gridjs.SelectedDataKey.Value.ToString();
        str1 = "update jobseekerreg set status='approved' where usname='" + cid + "'";
        obj.CreateCommand(str1);
        appjs();
    }
}

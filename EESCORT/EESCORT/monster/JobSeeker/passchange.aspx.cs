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
public partial class JobSeeker_passchange : System.Web.UI.Page
{
    string str;
    Conclass con = new Conclass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        str = "update login set pass='" + txtnpass.Text + "' where usname='" + txtus.Text + "' and pass='" + txtopass.Text + "'";
        con.CreateCommand(str);
    }
}

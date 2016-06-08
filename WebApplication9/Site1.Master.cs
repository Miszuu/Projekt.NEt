using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Rekrutujemy_click(object sender, ImageClickEventArgs e)
        {
            String url = "";
            url += "Rekrutujemy.aspx";
            Server.Transfer(url, true);
        }
    }
}
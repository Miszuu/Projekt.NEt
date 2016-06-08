using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class Rekrutujemy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void Wroc_Click(object sender, EventArgs e)
        {
            String url = "";
            url += "Strona_Glowna.aspx";
            Server.Transfer(url, true);
        }
        protected void Zatwierdz_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            { 
            String url = "";
            url += "Strona_Glowna.aspx";
            Server.Transfer(url, true);
            }
        }
    }
}
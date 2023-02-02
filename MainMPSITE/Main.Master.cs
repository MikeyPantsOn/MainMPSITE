using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MainMPSITE
{
    public partial class Main : System.Web.UI.MasterPage
    {
        public string loginMSG;
        public string signIn;
        protected void Page_Load(object sender, EventArgs e)
        {
            loginMSG = "<div class=\"MMSG\">Hello " + Session["userFName"] +"</div>";
        }
    }
}
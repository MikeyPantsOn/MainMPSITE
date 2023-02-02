using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MainMPSITE
{
    public partial class SignUp : System.Web.UI.Page
    {
        public string yearOptions;
        protected void Page_Load(object sender, EventArgs e)
        {
            YearPlacement();

        }

        private void YearPlacement()
        {
            int year = DateTime.Now.Year;
            for (int i = 130; i > 0; i--)
            {
                yearOptions += "<option value=\"yearOfBirth" + year + "\">" + year + "</option>";
                year -= 1;
            }
        }
    }
}
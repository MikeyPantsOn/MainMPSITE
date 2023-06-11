using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MainMPSITE
{
    public partial class UsersInfo : System.Web.UI.Page
    {
        public string strdebug = "";
        public string sqlrequest = "";
        public string userList = "";
        string filename = "UsersDB.mdf";
        string tablename = "UsersInfo";
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlrequest = $"SELECT * FROM {tablename}";
            DataTable table = Helper.ExecuteDataTable(filename, sqlrequest);

            string prevuName = "";
            for (int i = 0; i < table.Rows.Count; i++)
            {
                string mainuName = table.Rows[i]["Username_Page"].ToString();
                mainuName = mainuName.Substring(0, mainuName.IndexOf('_'));
                if (prevuName == mainuName) continue;
                userList += $"<div>" +
                                    $"<button type=\"button\" onclick=\"openInfo(this);\" id=\"{mainuName}\" class=\"usersbutton\">{mainuName}</button>" +
                                    $"<div id=\"{mainuName}Info\" class=\"userInfo smalldesc\">" +
                                    $"<table class=\"tUsers\">" +
                                    $"<tr>";
                for (int j = 0; j < table.Rows.Count; j++)
                {
                    string uName = table.Rows[j]["Username_Page"].ToString();
                    uName = uName.Substring(0, uName.IndexOf('_'));
                    if (uName.Equals(mainuName))
                    {
                        string page = table.Rows[j]["Username_Page"].ToString();
                        page = page.Substring(page.IndexOf('_')+1, page.Length-page.IndexOf('_')-1);
                        userList += $"<td>{page}: \n {table.Rows[j]["Amount"]}</td>";
                    }
                    
                }
                userList += $"</tr>" + $"</table>" + $"</div>"+ $"</div>";
                prevuName = mainuName;
            }
            //userList += $"</div>";



        }
    }
}
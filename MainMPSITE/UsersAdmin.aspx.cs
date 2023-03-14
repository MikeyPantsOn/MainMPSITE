using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MainMPSITE
{
    public partial class UsersAdmin : System.Web.UI.Page
    {
        public string sqlrequest = "";
        public string userList = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string filename = "UsersDB.mdf";
            string tablename = "UsersDB";
            sqlrequest = $"SELECT * FROM {tablename}";
            DataTable table = Helper.ExecuteDataTable(filename, sqlrequest);
            for (int i = 0; i < table.Rows.Count; i++)
            {
                userList += $"<div>" +
                    $"<button onclick=\"openInfo(this);\" id=\"{table.Rows[i]["Username"]}\" class=\"userInfoButton\">{table.Rows[i]["Username"]}</button>" +
                    $"<div id=\"{table.Rows[i]["Username"]}Info\" class=\"userInfo\">" +
                    $"<div ></div>" +
                    $"</div>" +
                    $"</div>";
            }
        }
    }
}
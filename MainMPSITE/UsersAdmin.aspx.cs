using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MainMPSITE
{
    public partial class UsersAdmin : System.Web.UI.Page
    {
        public string strdebug = "";
        public string sqlrequest = "";
        public string userList = "";
        public string editUserList = "";
        string filename = "UsersDB.mdf";
        string tablename = "UsersDB";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            sqlRequests();
            DataTable table = Helper.ExecuteDataTable(filename, sqlrequest);
            for (int i = 0; i < table.Rows.Count; i++)
            {
                userList += $"<div>" +
                        $"<button type=\"button\" onclick=\"openInfo(this);\" id=\"{table.Rows[i]["Username"]}\" class=\"usersbutton\">{table.Rows[i]["Username"]}</button>" +
                        $"<div id=\"{table.Rows[i]["Username"]}Info\" class=\"userInfo smalldesc\">" +
                        $"<table class=\"tUsers\">" +
                        $"<tr><td>First Name</td><td>Last Name</td><td>Email</td><td>Gender</td><td>Year Of Birth</td><td>Phone Number</td><td>Password</td><td>Is Admin?</td></tr>" +
                        $"<tr>" +
                        $"<td>{table.Rows[i]["FirstName"]}</td>" +
                        $"<td>{table.Rows[i]["LastName"]}</td>" +
                        $"<td>{table.Rows[i]["Email"]}</td>" +
                        $"<td>{table.Rows[i]["Gender"]}</td>" +
                        $"<td>{table.Rows[i]["yearBorn"]}</td>" +
                        $"<td>{table.Rows[i]["Phone"]}</td>" +
                        $"<td>{table.Rows[i]["Pass"]}</td>";
                if (Request.Form["EditMode"] == null)
                {
                    userList +=
                        $"<td>{table.Rows[i]["Admin"]}</td></tr>" +
                        $"</table>" +
                        $"</div>" +
                        $"</div>";
                }
                else
                {
                    string admincheck;
                    if (Convert.ToChar(table.Rows[i]["Admin"]) == 'T') admincheck = $"<td><input type=\"radio\" id=\"True\" name=\"{table.Rows[i]["Username"]}admincheck\" value=\"T\" checked><label for=\"True\">Is Admin</label><br/><input type=\"radio\" id=\"False\" name=\"{table.Rows[i]["Username"]}admincheck\" value=\"F\"><label for=\"False\">Is Not Admin</label></td>";
                    else admincheck = $"<td><input type=\"radio\" id=\"True\" name=\"{table.Rows[i]["Username"]}admincheck\" value=\"T\"><label for=\"True\">Is Admin</label><br/><input type=\"radio\" id=\"False\" name=\"{table.Rows[i]["Username"]}admincheck\" value=\"F\" checked><label for=\"False\">Is Not Admin</label></td>";
                    userList += 
                        $"{admincheck}" +
                        $"</tr>" +
                        $"</table>" +
                        $"</div>" +
                        $"</div>";
                }
                
            }
            if (Request.Form["submitchanges"] != null && Request.Form["EditMode"] != null)
            {
                for (int i = 0; i < table.Rows.Count; i++)
                {
                    Helper.DoQuery(filename, $"UPDATE {tablename} SET Admin = \'{Request.Form[$"{table.Rows[i]["Username"]}admincheck"]}\' WHERE Username = \'{table.Rows[i]["Username"]}\'");
                    strdebug += Request.Form[$"{table.Rows[i]["Username"]}admincheck"] + " ";
                }
            }
        }
        private void sqlRequests()
        {
            string str = Request.Form["so"];
            if (str!= null) str = Request.Form["so"].Substring(0, Request.Form["so"].LastIndexOf(','));
            if(str == "Admin") sqlrequest = $"SELECT * FROM {tablename} WHERE Admin = \'{Request.Form["admin"]}\'";
            else if (str == "Gender") sqlrequest = $"SELECT * FROM {tablename} WHERE Gender = \'{Request.Form["gender"]}\'";   
            else if (str == null || Request.Form["soallsearch"] == "" || str.Contains("all"))
                sqlrequest = $"SELECT * FROM {tablename}";
            else sqlrequest = $"SELECT * FROM {tablename} WHERE {char.ToUpper(str[0]) + str.Substring(1)} = \'{Request.Form["soallsearch"]}\'";
            strdebug = Request.Form["EditMode"];

        }
    }
}
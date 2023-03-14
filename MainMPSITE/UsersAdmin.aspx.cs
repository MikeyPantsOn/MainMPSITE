using System;
using System.Collections.Generic;
using System.Data;
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
        string filename = "UsersDB.mdf";
        string tablename = "UsersDB";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            sqlRequests();
            DataTable table = Helper.ExecuteDataTable(filename, sqlrequest);
            for (int i = 0; i < table.Rows.Count; i++)
            {
                userList += $"<div>" +
                    $"<button onclick=\"openInfo(this);\" id=\"{table.Rows[i]["Username"]}\" class=\"usersbutton\">{table.Rows[i]["Username"]}</button>" +
                    $"<div id=\"{table.Rows[i]["Username"]}Info\" class=\"userInfo smalldesc\">" +
                    $"<table class=\"tUsers\">" +
                    $"<tr><td>First Name</td><td>Last Name</td><td>Email</td><td>Gender</td><td>Year Of Birth</td><td>Phone Number</td><td>Password</td><td>Is Admin?</td></tr>" +
                    $"<tr><td>{table.Rows[i]["FirstName"]}</td><td>{table.Rows[i]["LastName"]}</td><td>{table.Rows[i]["Email"]}</td><td>{table.Rows[i]["Gender"]}</td><td>{table.Rows[i]["yearBorn"]}</td><td>{table.Rows[i]["Phone"]}</td><td>{table.Rows[i]["Pass"]}</td><td>{table.Rows[i]["Admin"]}</td></tr>" +
                    $"</table>" +
                    $"</div>" +
                    $"</div>";
            }
        }
        private void sqlRequests()
        {
            string str = Request.Form["so"].Substring(0, Request.Form["so"].LastIndexOf(','));
            strdebug = $"{str.Contains("all")} {str}";
            Console.Write(str);
            if(str == "Admin") sqlrequest = $"SELECT * FROM {tablename} WHERE Admin = \'{Request.Form["admin"]}\'";
            else if (str == "Gender") sqlrequest = $"SELECT * FROM {tablename} WHERE Gender = \'{Request.Form["gender"]}\'";   
            else if (str == null || Request.Form["soallsearch"] == "" || str.Contains("all"))
                sqlrequest = $"SELECT * FROM {tablename}";
            else sqlrequest = $"SELECT * FROM {tablename} WHERE {char.ToUpper(str[0]) + str.Substring(1)} = \'{Request.Form["soallsearch"]}\'";


        }
    }
}
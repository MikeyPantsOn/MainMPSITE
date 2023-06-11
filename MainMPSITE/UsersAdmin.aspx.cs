using System;
using System.Data;

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
                        $"<tr>";
                if (Request.Form["EditMode"] == null)
                {
                    userList +=
                        $"<td>{table.Rows[i]["FirstName"]}</td>" +
                        $"<td>{table.Rows[i]["LastName"]}</td>" +
                        $"<td>{table.Rows[i]["Email"]}</td>" +
                        $"<td>{table.Rows[i]["Gender"]}</td>" +
                        $"<td>{table.Rows[i]["yearBorn"]}</td>" +
                        $"<td>{table.Rows[i]["Phone"]}</td>" +
                        $"<td>{table.Rows[i]["Pass"]}</td>" +
                        $"<td>{table.Rows[i]["Admin"]}</td></tr>" +
                        $"</table>" +
                        $"</div>" +
                        $"</div>";
                }
                else
                {
                    string admincheck, gendercheck;
                    if (Convert.ToChar(table.Rows[i]["Admin"]) == 'T') admincheck = $"<td><input class=\"radioinput\" type=\"radio\" id=\"True\" name=\"{table.Rows[i]["Username"]}admincheck\" value=\"T\" checked><label class=\"radioinput\" for=\"True\">Is Admin</label><br/><input type=\"radio\" id=\"False\" name=\"{table.Rows[i]["Username"]}admincheck\" value=\"F\"><label class=\"radioinput\" for=\"False\">Is Not Admin</label></td>";
                    else admincheck = $"<td><input  type=\"radio\" id=\"True\" name=\"{table.Rows[i]["Username"]}admincheck\" value=\"T\"><label class=\"radioinput\" for=\"True\">Is Admin</label><br/><input type=\"radio\" id=\"False\" name=\"{table.Rows[i]["Username"]}admincheck\" value=\"F\" checked><label class=\"radioinput\" for=\"False\">Is Not Admin</label></td>";
                    if (Convert.ToChar(table.Rows[i]["Gender"]) == 'M') gendercheck = $"<td><input type=\"radio\" id=\"Male\" name=\"{table.Rows[i]["Username"]}gendercheck\" value=\"male\" checked><label class=\"radioinput\" for=\"male\">Male</label><br/><input type=\"radio\" id=\"Female\" name=\"{table.Rows[i]["Username"]}gendercheck\" value=\"female\"><label class=\"radioinput\" for=\"Female\">Female</label></td>";
                    else gendercheck = $"<td><input type=\"radio\" id=\"Male\" name=\"{table.Rows[i]["Username"]}gendercheck\" value=\"male\"><label class=\"radioinput\" for=\"male\">Male</label><br/><input type=\"radio\" id=\"Female\" name=\"{table.Rows[i]["Username"]}gendercheck\" value=\"female\" checked><label class=\"radioinput\" for=\"female\">Female</label></td>";
                    userList +=
                        $"<td><input class=\"inputchange\" type=\"text\" name=\"{table.Rows[i]["Username"]}FName\" id=\"{table.Rows[i]["Username"]}FName\" value=\"{table.Rows[i]["FirstName"]}\" /></td>" +
                        $"<td><input class=\"inputchange\" type=\"text\" name=\"{table.Rows[i]["Username"]}LName\" id=\"{table.Rows[i]["Username"]}LName\" value=\"{table.Rows[i]["LastName"]}\" /></td>" +
                        $"<td><input class=\"inputchange\" type=\"text\" name=\"{table.Rows[i]["Username"]}Email\" id=\"{table.Rows[i]["Username"]}Email\" value=\"{table.Rows[i]["Email"]}\" /></td>" +
                        $"{gendercheck}" +
                        $"<td><select class=\"yob\" name=\"{table.Rows[i]["Username"]}yob\" id=\"{table.Rows[i]["Username"]}yob\" value=\"{table.Rows[i]["yearBorn"]}\">{YearPlacement(int.Parse(table.Rows[i]["yearBorn"].ToString()))}</select></td>" +
                        $"<td><input class=\"inputchange\" type=\"text\" name=\"{table.Rows[i]["Username"]}Phone\" id=\"{table.Rows[i]["Username"]}Phone\" value=\"{table.Rows[i]["Phone"]}\" /></td>" +
                        $"<td><input class=\"inputchange\" type=\"text\" name=\"{table.Rows[i]["Username"]}Pass\" id=\"{table.Rows[i]["Username"]}Pass\" value=\"{table.Rows[i]["Pass"]}\" /></td>" +
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
                    char gender;
                    if (Request.Form[$"{table.Rows[i]["Username"]}gendercheck"] == "female") gender = 'F';
                    else gender = 'M';
                    string update = $"UPDATE {tablename} SET " +
                        $"FirstName = \'{Request.Form[$"{table.Rows[i]["Username"]}FName"]}\', " +
                        $"LastName = \'{Request.Form[$"{table.Rows[i]["Username"]}LName"]}\', " +
                        $"Email = \'{Request.Form[$"{table.Rows[i]["Username"]}Email"]}\', " +
                        $"Gender = \'{gender}\', " +
                        $"yearBorn = \'{Request.Form[$"{table.Rows[i]["Username"]}yob"]}\', " +
                        $"Phone = \'{Request.Form[$"{table.Rows[i]["Username"]}Phone"]}\', " +
                        $"Pass = \'{Request.Form[$"{table.Rows[i]["Username"]}Pass"]}\', " +
                        $"Admin = \'{Request.Form[$"{table.Rows[i]["Username"]}admincheck"]}\' " +
                        $"WHERE Username = \'{table.Rows[i]["Username"]}\'";

                    Helper.DoQuery(filename,update);
                    

                }
                Response.Redirect(Request.RawUrl);

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
            else sqlrequest = $"SELECT * FROM {tablename} WHERE {char.ToUpper(str[0]) + str.Substring(1)} LIKE \'%\' + \'{Request.Form["soallsearch"]}\' + '%'";

        }
        private string YearPlacement(int mainyear)
        {
            string yearOptions = "<option value=\"" + mainyear + "\">" + mainyear + "</option>";
            int year = DateTime.Now.Year;
            for (int i = 130; i > 0; i--)
            {
                yearOptions += "<option value=\"" + year + "\">" + year + "</option>";
                year -= 1;
            }
            return yearOptions;
        }
    }
}
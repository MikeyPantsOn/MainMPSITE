using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MainMPSITE
{
    public partial class SignIn : System.Web.UI.Page
    {
        public string msg;
        public string sqlLogin;
        public string UserMsg;
        public string PassMsg;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string uName = Request.Form["uName"];
                string pass = Request.Form["pw"];

                string fileName = "UsersDB.mdf";
                string tableName = "UsersDB";

                sqlLogin = $"SELECT * FROM {tableName} WHERE Username = '{uName}' AND Pass = '{pass}'";
                if(Helper.IsExist(fileName, sqlLogin))
                {
                    DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);
                    int length = table.Rows.Count; 
                    if(length == 0)
                    {
                        Response.Redirect("SignIn.aspx");
                        msg = "No Users Signed In Yet!";
                    }
                    else
                    {
                        Session["userFName"] = table.Rows[0]["FirstName"];
                        Session["uName"] = table.Rows[0]["Username"];
                        Response.Redirect("main.aspx");
                    }
                }
                else
                {
                    if (uName == "") UserMsg = "Username Required!";
                    else if (pass == "") PassMsg = "Missing password!";
                    else msg = "Username or Password are Incorrect!";

                }

            }
        }
    }
}
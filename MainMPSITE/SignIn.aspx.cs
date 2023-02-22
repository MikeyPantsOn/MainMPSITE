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
        public string sqlLogin;
        public string msg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string uName = Request.Form["uName"];
                string pw = Request.Form["pw"];

                string fileName = "UsersDB.mdf";
                string tableName = "UsersDB";

                sqlLogin = $"SELECT * FROM {tableName} WHERE Username = '{uName}' AND Pass = '{pw}'";

                if(Helper.IsExist(fileName, sqlLogin))
                {
                    DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);
                    if (table.Rows.Count == 0)
                    {
                        Response.Redirect("SignIn.aspx");
                        msg = "No Users\nSigned Up!";
                    }
                    else
                    {
                        Session["uName"] = uName;
                        Session["userFName"] = table.Rows[0]["FirstName"];
                        Session["admin"] = (string)table.Rows[0]["Admin"] == "T";
                        Response.Redirect("main.aspx");
                    }
                }
                else
                {
                    msg = "Username Or\nPassword Are Incorrect!";
                }
            }
        }
    }
}
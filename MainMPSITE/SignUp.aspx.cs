using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MainMPSITE
{
    public partial class SignUp : System.Web.UI.Page
    {
        public string yearOptions;
        private string sqlInsert;

        public string emailErr;
        public string uNameErr;
        public string passErr;

        protected void Page_Load(object sender, EventArgs e)
        {
            YearPlacement();
            emailErr = Request.Form["submit"] + "1";
            if (Request.Form["submit"] != null)
            {

                CheckSignUp(sender);
            }
        }

        private void CheckSignUp(object sender)
        {
            string fileName = "UsersDB.mdf";
            string tableName = "UsersDB";

            

            string email = Request.Form["Email"];
            emailErr = email;
            if (email.IndexOf("@") == -1 || email.LastIndexOf(".") < email.IndexOf("@") || email.Length < 8 || email == null)
            { emailErr = "Problematic Email."; return; }
            string uName = Request.Form["Username"];
            if (uName == null || uName.Length < 5 || Helper.IsExist(fileName, $"SELECT * FROM {tableName} when username = {uName}"))
            { uNameErr = "Username is already used or too short."; return; }
            string pass = Request.Form["password"];
            string passc = Request.Form["passwordcheck"];
            if (pass == null || pass.Length < 8 || pass != passc) { passErr = "Password too short or don't match."; return; }

            sqlInsert = $"INSERT INTO {tableName} ";
            sqlInsert += $"VALUES ('{uName}' , '{Request.Form["userFName"]}' , '{Request.Form["userLName"]}' , '{email}' , '{Request.Form["gender"]}' , '{Request.Form["yob"]}'";

            Helper.DoQuery(fileName, sqlInsert);
            
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
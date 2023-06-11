using System;

namespace MainMPSITE
{
    public partial class SignUp : System.Web.UI.Page
    {
        public string yearOptions;
        private string sqlInsert;

        public string emailErr;
        public string uNameErr;
        public string pNameErr;
        public string passErr;

        protected void Page_Load(object sender, EventArgs e)
        {
            YearPlacement();
            if (Request.Form["submit"] != null)
            {
                emailErr = "";
                passErr = "";
                uNameErr = "";
                CheckSignUp();
            }
        }

        private void CheckSignUp()
        {
            string fileName = "UsersDB.mdf";
            string tableName = "UsersDB";

            string uName = Request.Form["uName"];

            if (uName == null || uName.Length < 5)
            { uNameErr = "Username is Too Short."; return; }

            if (Helper.IsExist(fileName, $"SELECT * FROM {tableName} WHERE Username = '{uName}'"))
            { uNameErr = "Username is already used."; return; }

            string pfName = Request.Form["userFname"];
            string plName = Request.Form["userLname"];
            if ((pfName == null || pfName.Length < 2) || (plName == null || plName.Length < 2))
            { uNameErr = "Please Write a Proper First And Last Name."; return; }


            string email = Request.Form["Email"];
            if(email.IndexOf("@") == -1)
            { emailErr = "Missing @."; return; }
            if(email.LastIndexOf(".") < email.IndexOf("@"))
            { emailErr = "Missing Email Domain. (gmail.com, yahoo.com etc..)"; return; }

            if (email.Length < 8 || email == null)
            { emailErr = "Email Too Short."; return; }

            if(Helper.IsExist(fileName, $"SELECT * FROM {tableName} WHERE Email = '{email}'"))
            { emailErr = "Email Already Used!"; return; }

            string pass = Request.Form["Password"];
            string passc = Request.Form["PasswordCheck"];
            if (pass == null || pass.Length < 8) 
            { passErr = "Password too short."; return; }
            if(pass != passc) 
            { passErr = "Passwords Don't Match."; return; }

            char admin = 'F';
            if (Helper.ExecuteDataTable(fileName, $"SELECT * FROM {tableName}").Rows.Count == 0) admin = 'T';
            char gender;
            if (Request.Form["gender"] == "female") gender = 'F';
            else gender = 'M';

            sqlInsert = $"INSERT INTO {tableName} ";
            sqlInsert += $"VALUES ('{uName}' , '{Request.Form["userFname"]}' , '{Request.Form["userLname"]}' , '{email}' , " +
                $"'{gender}' , '{Request.Form["yob"]}', '{Request.Form["phonenumber"]}', '{pass}', '{admin}')";

            Helper.DoQuery(fileName, sqlInsert);

            Session["uName"] = uName;
            Session["userFName"] = Request.Form["userFName"];
            Session["admin"] = admin == 'T';

            Response.Redirect("main.aspx");
            

        }

        private void YearPlacement()
        {
            int year = DateTime.Now.Year;
            for (int i = 130; i > 0; i--)
            {
                yearOptions += "<option value=\"" + year + "\">" + year + "</option>";
                year -= 1;
            }
        }
    }
}
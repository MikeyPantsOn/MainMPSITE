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
        public string sqlSignUp;
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            YearPlacement();
            if (Request.Form["submit"] != null)
            {
                if (CheckInputs())
                {
                    string fileName = "UsersDB.mdf";
                    string tableName = "UsersDB";

                    sqlSignUp = $"SELECT * FROM {tableName} WHERE Username='{Request.Form["uName"]}' OR Email='{Request.Form["Email"]}'";

                    if (Helper.IsExist(fileName, sqlSignUp))
                    {
                        msg = "Username Or Email Already Used!";
                    }
                    else
                    {
                        sqlSignUp = $"INSERT INTO UsersDB VALUES";
                        sqlSignUp += $" ('{Request.Form["uName"]}', '{Request.Form["userFName"]}', '{Request.Form["userLName"]}', " +
                            $"'{Request.Form["Email"]}', '{Request.Form["gender"]}', '{Request.Form["yob"]}', '{Request.Form["phoneNumber"]}', '{Request.Form["password"]}')";
                        msg = sqlSignUp;
                        Helper.DoQuery(fileName, sqlSignUp);
                        
                        Session["userFName"] = Request.Form["userFName"];
                        Session["uName"] = Request.Form["uName"];
                        Response.Redirect("main.aspx");
                    }
                }
            }

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

        private bool CheckInputs()
        {

            if (Request.Form["uName"] == "")
            {
                msg = "Missing Username!";
                return false;
            }
            if (Request.Form["password"] == "")
            {
                msg = "Missing Password!";
                return false;
            }
            if (Request.Form["UserFName"] == "")
            {
                msg = "Missing First Name!";
                return false;
            }
            if (Request.Form["UserLName"] == "")
            {
                msg = "Missing Last Name!";
                return false;
            }
            if (Request.Form["yob"] == null)
            {
                msg = "Missing year Of Birth!";
                return false;
            }
            if (Request.Form["gender"] == null)
            {
                msg = "Please Select A Gender!";
                return false;
            }
            if (Request.Form["phoneNumber"] == null)
            {
                msg = "Missing Phone Number!";
                return false;
            }
            return true;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mpSite
{
    public partial class imageTable : System.Web.UI.Page
    {
        public string sqlLogin;
        public string msg;
        string fileName = "UsersDB.mdf";
        string tableName = "UsersInfo";
        protected void Page_Load(object sender, EventArgs e)
        {
            msg = Request.Form["page"] + " Hello";
            if (Request.Form["page"] != null)
            {
                Console.WriteLine("hello");
                string uName = Session["uName"].ToString();
                string page = Request.Form["page"];


                sqlLogin = $"SELECT * FROM {tableName} WHERE Username_Page = '{uName}_{page}'";

                if (Helper.IsExist(fileName, sqlLogin))
                {
                    DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);
                    if (table.Rows.Count == 0)
                    {
                        CreatePageForUser(uName, page);
                    }
                    else
                    {
                        string sqlInsert = $"UPDATE {tableName} " +
                            $"SET Amount = {int.Parse(table.Rows[0]["Amount"].ToString()) + 1}" +
                            $"WHERE Username_Page = '{uName}_{page}'";
                        Helper.DoQuery(fileName, sqlInsert);
                    }
                }
                else
                {
                    CreatePageForUser(uName, page);
                }
                Response.Redirect($"./{page}");
            }
            
        }
        private void CreatePageForUser(string uName, string page)
        {
            string sqlInsert = $"INSERT INTO {tableName} VALUES ('{uName}_{page}', 1)";
            Helper.DoQuery(fileName, sqlInsert);
        }
    }
}
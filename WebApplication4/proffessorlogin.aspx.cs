using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication4
{
    public partial class proffessorlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
        }
        public string Mycon = @"Data Source=HACONA-MATATA\SQLEXPRESS;Initial Catalog=e-exam1;Integrated Security=True";

        protected void Button1_Click(object sender, EventArgs e)
        {
             Session["data"] = TextBox2.Text;
            
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            con.ConnectionString = Mycon;
            con.Open();
            cmd.CommandText = "select* from Table_1 where username='" + TextBox2.Text + "'and password='" + TextBox1.Text + "'and typeofuser!='" + "Student" + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Table_1");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["state1"] = "signed";
                Response.Redirect("profnavigation");
               

            }
            else
            {
                Label1.Visible = true;
            }
        }
    }
}
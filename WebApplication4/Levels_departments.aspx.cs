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
    public partial class Levels_departments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Mycon8 = @"Data Source=HACONA-MATATA\SQLEXPRESS;Initial Catalog=e-exam1;Integrated Security=True";
            using (SqlConnection sqlcon = new SqlConnection(Mycon8))
            {
                sqlcon.Open();
                SqlCommand sqlcmd = new SqlCommand("useradd5", sqlcon);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@level_name", TextBox1.Text);
                sqlcmd.Parameters.AddWithValue("@department", TextBox2.Text);

                sqlcmd.ExecuteNonQuery();
                GridView1.DataBind();
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}
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
    public partial class subject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {
            string Mycon3 = @"Data Source=HACONA-MATATA\SQLEXPRESS;Initial Catalog=e-exam1;Integrated Security=True";
            //chapters
            SqlConnection connection11 = new SqlConnection(Mycon3);
            
            connection11.Open();
            SqlCommand command11 = new SqlCommand("select id from Table_level where level_name=@level_name AND department=@department", connection11);
            command11.Parameters.Add("@level_name", Name.SelectedValue);
            command11.Parameters.Add("@department", Department.SelectedValue);

            SqlDataReader dataReader11 = command11.ExecuteReader();
            int id = 0;
            while (dataReader11.Read())
            {
               id= Convert.ToInt32(dataReader11[0]);
                
            }
            connection11.Close();
          
            using (SqlConnection sourcecon4 = new SqlConnection(Mycon3))

            {
               sourcecon4.Open();
                SqlCommand cmd3 = new SqlCommand();
                cmd3.CommandText = "INSERT INTO Table_subjects values ('" +TextBox1.Text+ "','" + id + "')";
                cmd3.Connection = sourcecon4;
                cmd3.ExecuteNonQuery();
                GridView1.DataBind();
                Response.Write("<script>alert('Data inserted successfully')</script>");
                TextBox1.Text = "";
            }
        }
    }
}
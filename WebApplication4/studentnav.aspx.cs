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
    public partial class studentnav : System.Web.UI.Page
    {
        [Obsolete]
        protected void Page_Load(object sender, EventArgs e)
        {
            string Mycon3 = @"Data Source=HACONA-MATATA\SQLEXPRESS;Initial Catalog=e-exam1;Integrated Security=True";
            //chapters
            SqlConnection connection11 = new SqlConnection(Mycon3);
            string level = "";
            string department = "";

            connection11.Open();
            SqlCommand command11 = new SqlCommand("select level_1, department from Table_1 where username=@username ", connection11);
             command11.Parameters.Add("@username",Session["data8"]);
          //  command11.Parameters.Add("@department", Department.SelectedValue);

            SqlDataReader dataReader11 = command11.ExecuteReader();
           
            while (dataReader11.Read())
            {
                level =dataReader11[0].ToString();
                department = dataReader11[1].ToString();

            }
            connection11.Close();

            //id
            SqlConnection connection112 = new SqlConnection(Mycon3);

            connection112.Open();
            SqlCommand command112 = new SqlCommand("select id from Table_level where level_name=@level_name AND department=@department", connection112);
            command112.Parameters.Add("@level_name", level);
            command112.Parameters.Add("@department", department);

            SqlDataReader dataReader112 = command112.ExecuteReader();
            int id = 0;
            while (dataReader112.Read())
            {
                id = Convert.ToInt32(dataReader112[0]);

            }
            connection112.Close();
            Label1.Text = id.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["exam"] = DropDownList1.SelectedValue;
            Response.Redirect("try1");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["state2"] = "unsigned";
            Response.Redirect("studentlogin");
        }
    }
}
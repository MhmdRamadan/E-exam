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
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            TextBox9.Visible = false;
            TextBox10.Visible = false;
            TextBox11.Visible = false;
            TextBox12.Visible = false;
            TextBox13.Visible = false;
            TextBox14.Visible = false;
            TextBox15.Visible = false;
            Label17.Visible = false;
            Label18.Visible = false;
            Label19.Visible = false;
            Label20.Visible = false;
            Label21.Visible = false;
            Label22.Visible = false;
            Label23.Visible = false;


        }
        public string Mycon = @"Data Source=HACONA-MATATA\SQLEXPRESS;Initial Catalog=e-exam1;Integrated Security=True";
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            con.ConnectionString = Mycon;
            con.Open();
            cmd.CommandText = "select* from Table_1 where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'and typeofuser='" + "admin" + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Table_1");
            if (ds.Tables[0].Rows.Count > 0)
            {

                MultiView1.ActiveViewIndex = 1;
            }
            else
            {
                Label5.Text = "data not found";
                Label5.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Mycon = @"Data Source=HACONA-MATATA\SQLEXPRESS;Initial Catalog=e-exam1;Integrated Security=True";
            if (TextBox3.Text == data1.SelectedRow.Cells[6].Text)
            {

                using (SqlConnection sourcecon = new SqlConnection(Mycon))
                {
                    SqlCommand cmd = new SqlCommand("select* from Table_2 where fullname='" + TextBox3.Text + "'", sourcecon);
                    sourcecon.Open();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        using (SqlConnection sourcecon2 = new SqlConnection(Mycon))

                        {
                            using (SqlBulkCopy bc = new SqlBulkCopy(Mycon))
                            {
                                bc.DestinationTableName = "Table_1";
                                sourcecon2.Open();
                                bc.WriteToServer(rdr);


                                Label6.Text = "done";
                                Label6.Visible = true;

                            }

                        }

                    }
                }


                //delete 
                string Mycon2 = @"Data Source=HACONA-MATATA\SQLEXPRESS;Initial Catalog=e-exam1;Integrated Security=True";
                using (SqlConnection sourcecon3 = new SqlConnection(Mycon2))

                {

                    sourcecon3.Open();
                    SqlCommand cmd2 = new SqlCommand();
                    cmd2.CommandText = "delete from Table_2 where username='" + TextBox3.Text + "'";
                    cmd2.Connection = sourcecon3;
                    cmd2.ExecuteNonQuery();
                    
                    Label6.Text = "done";
                    Label6.Visible = true;
                    data1.DataBind();

                }
                using (SqlConnection sourcecon4 = new SqlConnection(Mycon2))

                {
                    sourcecon4.Open();
                    SqlCommand cmd3 = new SqlCommand();
                    cmd3.CommandText = "update Table_1 set subject='" + TextBox4.Text + "'where username='"+TextBox3.Text +"'";
                    cmd3.Connection = sourcecon4;
                    cmd3.ExecuteNonQuery();
                }
                }else
            {
                Label6.Text = "data isnot found";
                Label6.Visible = true;
            }
                   

            
           
        }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string Mycon3 = @"Data Source=HACONA-MATATA\SQLEXPRESS;Initial Catalog=e-exam1;Integrated Security=True";
            using (SqlConnection sourcecon4 = new SqlConnection(Mycon3))

            {
                sourcecon4.Open();
                SqlCommand cmd3 = new SqlCommand();
                cmd3.CommandText = "update Table_1 set subject='" + TextBox4.Text + "'where username='" + TextBox3.Text + "'";
                cmd3.Connection = sourcecon4;
                cmd3.ExecuteNonQuery();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string Mycon8= @"Data Source=HACONA-MATATA\SQLEXPRESS;Initial Catalog=e-exam1;Integrated Security=True";
            using (SqlConnection sqlcon = new SqlConnection(Mycon8))
            {
                sqlcon.Open();
                SqlCommand sqlcmd = new SqlCommand("useradd5", sqlcon);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@level_name", TextBox5.Text);
                sqlcmd.Parameters.AddWithValue("@department", TextBox6.Text);
            
                sqlcmd.ExecuteNonQuery();
                GridView1.DataBind();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            TextBox6.Visible = false;
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            if (TextBox5.Text != "one" && TextBox5.Text != "two")
            {
                TextBox6.Visible = true;
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {
            int n = int.Parse(TextBox8.Text);
           if(n>=1)
            {
                TextBox9.Visible = true;
                Label17.Visible = true;
            }
            if(n>=2)
            {
                TextBox10.Visible = true;
                Label18.Visible = true;
            }
            if (n>=3)
            {
                TextBox11.Visible = true;
                Label19.Visible = true;
            }
            if (n >= 4)
            {
                TextBox12.Visible = true;
                Label20.Visible = true;
            }
            if (n >=5)
            {
                TextBox13.Visible = true;
                Label21.Visible = true;
            }
            if (n >= 6)
            {
                TextBox14.Visible = true;
                Label22.Visible = true;
            }
            if (n >= 7)
            {
                TextBox15.Visible = true;
                Label23.Visible = true;
                
            }
        }

        protected void Button8_Click1(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
           
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}


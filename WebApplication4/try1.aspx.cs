using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Configuration;

namespace WebApplication4
{
    public partial class try1 : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {

        }

        public string Mycon = @"Data Source=HACONA-MATATA\SQLEXPRESS;Initial Catalog=e-exam1;Integrated Security=True";

        RadioButtonList[] radioo = new RadioButtonList[3];

        [Obsolete]
        protected override void OnInit(EventArgs e)
        {
            //chapters
            SqlConnection connection11 = new SqlConnection(Mycon);
            List<string> chapters = new List<string>();
            List<string> category = new List<string>();
            connection11.Open();
            SqlCommand command11 = new SqlCommand("select chapter, category from examstructure where subject=@subject", connection11);
            command11.Parameters.Add("@subject", Session["exam"]);
            SqlDataReader dataReader11 = command11.ExecuteReader();
            while (dataReader11.Read())
            {
                chapters.Add(dataReader11[0].ToString());
                category.Add(dataReader11[1].ToString());
            }
            connection11.Close();


            int noofmcq = 0;
            int nooftrueandfalse = 0;
            int sum = chapters.Count - 1;

            for (int j = 0; j <= sum; j++)
            {
                SqlConnection connection8 = new SqlConnection(Mycon);

                SqlCommand command8 = new SqlCommand("select noofmcq, nooftandf from examstructure where chapter=@chapters AND category=@category", connection8);
                command8.Parameters.Add("@chapters", chapters[j]);
                command8.Parameters.Add("@category", category[j]);


                connection8.Open();
                SqlDataReader reader = command8.ExecuteReader();

                while (reader.Read())
                {
                    noofmcq = Convert.ToInt32(reader[0]);
                    nooftrueandfalse = Convert.ToInt32(reader[1]);
                }







                //exam
                Label[] labels1 = new Label[3];
                Label[] labels = new Label[3];                //RadioButtonList[] radioo = new RadioButtonList[n];


                //Questions
                SqlConnection connection = new SqlConnection(Mycon);
                List<string> questions = new List<string>();
                connection.Open();
                string stringno = noofmcq.ToString();
                SqlCommand command = new SqlCommand("SELECT TOP " + noofmcq + " question from mcqquestions where chapter=@chapter AND category=@category", connection);
                command.Parameters.Add("@chapter", chapters[j]);
                command.Parameters.Add("@category", category[j]);

                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    questions.Add(dataReader[0].ToString());
                }
                connection.Close();


                //first choice
                connection.Open();
                List<string> first_choice = new List<string>();

                SqlCommand command1 = new SqlCommand("SELECT TOP " + noofmcq + " first from mcqquestions where chapter=@chapter AND category=@category", connection);
                command1.Parameters.Add("@chapter", chapters[j]);
                command1.Parameters.Add("@category", category[j]);
                SqlDataReader dataReader1 = command1.ExecuteReader();
                while (dataReader1.Read())
                {
                    first_choice.Add(dataReader1[0].ToString());
                }
                connection.Close();

                //second choice
                connection.Open();
                List<string> second_choice = new List<string>();
                SqlCommand command2 = new SqlCommand("select top " + noofmcq + " second from mcqquestions where chapter=@chapter AND category=@category", connection);
                command2.Parameters.Add("@chapter", chapters[j]);
                command2.Parameters.Add("@category", category[j]);
                SqlDataReader dataReader2 = command2.ExecuteReader();
                while (dataReader2.Read())
                {
                    second_choice.Add(dataReader2[0].ToString());
                }
                connection.Close();

                //third choice
                connection.Open();
                List<string> third_choice = new List<string>();
                SqlCommand command3 = new SqlCommand("select top " + noofmcq + " third from mcqquestions where chapter=@chapter AND category=@category", connection);
                command3.Parameters.Add("@chapter", chapters[j]);
                command3.Parameters.Add("@category", category[j]);
                SqlDataReader dataReader3 = command3.ExecuteReader();
                while (dataReader3.Read())
                {
                    third_choice.Add(dataReader3[0].ToString());
                }
                connection.Close();


                for (int i = 0; i < noofmcq; i++)
                {
                    labels1[i] = new Label();
                    labels1[i].Text = questions[i];
                    
                    labels[i] = new Label();
                    labels[i].Text = "<br/><br/>";
                    radioo[i] = new RadioButtonList();
                    radioo[i].Items.Add(first_choice[i]);
                    radioo[i].Items.Add(second_choice[i]);
                    radioo[i].Items.Add(third_choice[i]);

                    radioo[i].DataBind();

                    radioo[i].ID = " " + i + chapters[j] + chapters[i] + j;
                    
                    Panel1.Controls.Add(labels[i]);
                    Panel1.Controls.Add(labels1[i]);
                    Panel1.Controls.Add(this.radioo[i]);
                }

            }
        }

        [Obsolete]
        public void Button4_Click(object sender, EventArgs e)
        {

            //chapters
            SqlConnection connection11 = new SqlConnection(Mycon);
            List<string> chapters = new List<string>();
            List<string> category = new List<string>();
            connection11.Open();
            SqlCommand command11 = new SqlCommand("select chapter, category from examstructure where subject=@subject", connection11);
            command11.Parameters.Add("@subject", Session["exam"]);
            SqlDataReader dataReader11 = command11.ExecuteReader();
            while (dataReader11.Read())
            {
                chapters.Add(dataReader11[0].ToString());
                category.Add(dataReader11[1].ToString());
            }
            connection11.Close();






            int n = 2;
            int result = 0;
            int sum = chapters.Count - 1;

            int noofmcq = 0;
            int nooftrueandfalse = 0;
            for (int j = 0; j <= sum; j++)
            {
                SqlConnection connection8 = new SqlConnection(Mycon);

                SqlCommand command8 = new SqlCommand("select noofmcq, nooftandf from examstructure where chapter=@chapters AND category=@category", connection8);
                command8.Parameters.Add("@chapters", chapters[j]);
                command8.Parameters.Add("@category", category[j]);


                connection8.Open();
                SqlDataReader reader = command8.ExecuteReader();

                while (reader.Read())
                {
                    noofmcq = Convert.ToInt32(reader[0]);
                    nooftrueandfalse = Convert.ToInt32(reader[1]);
                }
                for (int i = 0; i < n; i++)
                {
                    

                    RadioButtonList rb = (RadioButtonList)Page.FindControl(" " + i + chapters[j] + chapters[i]+j);



                    //Correct answers
                    SqlConnection connection = new SqlConnection(Mycon);
                    List<string> answers = new List<string>();
                    connection.Open();
                    SqlCommand command = new SqlCommand("select top " + noofmcq + " correct from mcqquestions where chapter=@chapter AND category=@category" , connection);
                    command.Parameters.Add("@chapter", chapters[j]);
                    command.Parameters.Add("@category", category[j]);

                    SqlDataReader dataReader = command.ExecuteReader();
                    while (dataReader.Read())
                    {
                        answers.Add(dataReader[0].ToString());
                    }
                    connection.Close();
                       if(rb.SelectedValue==answers[i])
                       {
                           result += 1;
                       }

                }
                Button4.Visible = false;
                
               
                //  Response.Redirect("jumbotron");

               // Response.Write("<script>alert('Data inserted successfully')</script>");

            }
        
            //insert results

            SqlConnection sourcecon4 = new SqlConnection(Mycon);

            
                sourcecon4.Open();
                SqlCommand cmd3 = new SqlCommand();
            cmd3.CommandText = "INSERT INTO Table_results values ('" + Session["data8"] + "','" + Session["exam"] + "','"+result+ "')";
                cmd3.Connection = sourcecon4;
                cmd3.ExecuteNonQuery();
            Response.Write("<script>alert('Data inserted successfully')</script>");
            Response.Write("your result is : " + result);
        }
        }
      
    }


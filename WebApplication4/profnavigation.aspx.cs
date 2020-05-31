using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class proffessornavigation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
         

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["state1"] = "unsigned";
            Response.Redirect("proffessorlogin");
        }
    }
}
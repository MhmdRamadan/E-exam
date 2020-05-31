using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class master1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
#pragma warning disable CS0252 // Possible unintended reference comparison; left hand side needs cast
            //admin
            if (Session["state"] == "signed")
            {      
                Session["Url"] = "adminNavigation.aspx";
            }
            else
            {
                Session["Url"] = "adminlogin.aspx";
              
            }

            //professor
            if (Session["state1"] == "signed")
            {
                Session["Url1"] = "profnavigation.aspx";
            }
            else
            {
                Session["Url1"] = "proffessorlogin.aspx";

            }

            //student
            if (Session["state2"] == "signed")
            {
                Session["Url2"] = "studentnav.aspx";
            }
            else
            {
                Session["Url2"] = "studentlogin.aspx";

            }
        }
    }
}
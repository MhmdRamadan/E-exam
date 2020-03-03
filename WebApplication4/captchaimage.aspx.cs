using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;

namespace WebApplication4
{
    public partial class captchaimage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Random rand = new Random();
            Bitmap bmp = new Bitmap(90,50);
            Graphics gfx = Graphics.FromImage(bmp);
            Font fnt =new Font("impact",13,FontStyle.Strikeout);
            int intnum = rand.Next(10000, 99999);
            gfx.Clear(Color.White);
            gfx.DrawString(intnum.ToString(), fnt, Brushes.Red, 15, 15);
            int randy1 = rand.Next(0, 50);
            int randy2 = rand.Next(0, 50);
            gfx.DrawLine(Pens.Black, 0, randy1, 90, randy2);
             randy1 = rand.Next(0, 50);
             randy2 = rand.Next(0, 50);
            gfx.DrawLine(Pens.Blue, 0, randy1, 0, randy2);
            randy1 = rand.Next(0, 50);
            randy2 = rand.Next(0, 50);
            gfx.DrawLine(Pens.Blue, 0, randy1, 90, randy2);

            bmp.Save(Response.OutputStream, ImageFormat.Gif);

            Session["randum"] = intnum;





        }
    }
}
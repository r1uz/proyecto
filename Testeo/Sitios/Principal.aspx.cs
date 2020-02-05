using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testeo.Sitios
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["id"]==(null))
            {
                HttpContext.Current.Session["tipo"] = "visitante";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mantenimiento.aspx");
        }

        protected void btn_cierre_Click(object sender, EventArgs e)
        {
            
            Session.Remove("id");
            Response.Redirect("Login.aspx");

        }

        protected void Button_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}
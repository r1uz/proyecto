using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testeo.Sitios
{
    public partial class Mantenimiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["id"] == (null))
            {
                HttpContext.Current.Session["tipo"] = "visitante";
            }

            if (HttpContext.Current.Session["tipo"].Equals("visitante")|| HttpContext.Current.Session["tipo"].Equals("cliente"))
            {
                MsgBox("Acceso Restringido", this.Page, this);
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CategoriaWeb.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductoWeb.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModuloDetalleReserva.aspx");
        }
       

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModuloReserva.aspx");
        }

        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());

        }
    }
}
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
    }
}
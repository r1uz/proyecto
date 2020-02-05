using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Testeo.ADO;

namespace Testeo.Sitios
{
    public partial class ModuloReserva1 : System.Web.UI.Page
    {
        private ReservaADO ado = new ReservaADO();


        public void BindData()
        {
            GridView1.DataSource = ado.getReservas();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["id"] == (null))
            {
                HttpContext.Current.Session["tipo"] = "visitante";
            }

            if (HttpContext.Current.Session["tipo"].Equals("visitante") || HttpContext.Current.Session["tipo"].Equals("cliente"))
            {
                MsgBox("Acceso Restringido", this.Page, this);
            }

            if (!IsPostBack)
            {
                BindData();
            }
        }

        protected void RowDeletingEvent(object sender, GridViewDeleteEventArgs e)
        {

            int codigo = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            ado.eliminarReserva(codigo);
            GridView1.EditIndex = -1;
            BindData();

        }

        protected void RowEditingEvent(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindData();
        }


        protected void RowCancelingEvent(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mantenimiento.aspx");
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Testeo.ADO;

namespace Testeo.Sitios
{
    public partial class ModuloReserva : System.Web.UI.Page
    {
        private Detalle_ReservaADO ado = new Detalle_ReservaADO();
        public void BindData()
        {
            GridView1.DataSource = ado.getDetalleReservas();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        protected void RowDeletingEvent(object sender, GridViewDeleteEventArgs e)
        {
            
            int codigo = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            ado.eliminarDetalleReserva(codigo);
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
    }
}
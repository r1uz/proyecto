using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Testeo.ADO;

namespace Testeo.Sitios
{
    public partial class CategoriaWeb : System.Web.UI.Page
    {
        private CategoriaADO ado = new CategoriaADO();

        private void BindData()
        {
            GridView1.DataSource = ado.getCategorias();
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

        protected void btnADD_Click(object sender, EventArgs e)
        {

            if (txtnombre.Text == "" || txtdescripcion.Text == "")
            {

                lb_descr.Text = "Favor no ingresar campos vacíos";


            }
            else
            {

                lb_descr.Text = "";
                Categoria nueva = new Categoria();
                nueva.nombre = txtnombre.Text.ToUpper();
                nueva.descripcion = txtdescripcion.Text.ToUpper();
                int i = ado.agregarCategoria(nueva);
                txtnombre.Text = "";
                txtdescripcion.Text = "";
                Label1.Text = i + " Categoria agregada";
                BindData();

            }
        }

        protected void rowCancelEditEvent(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindData();

        }

        protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
        {

            int codigo = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            ado.eliminarCategoria(codigo);
            GridView1.EditIndex = -1;
            BindData();

        }

        protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
        {

            GridViewRow fila = GridView1.Rows[e.RowIndex];
            int codigo = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);

            string nombre = (fila.FindControl("txtnombre2") as TextBox).Text.ToUpper();
            string descripcion = (fila.FindControl("txtdescripcion2") as TextBox).Text.ToUpper();

            Categoria c = ado.buscarCategoria(codigo);
            c.nombre = nombre;
            c.descripcion = descripcion;
            ado.actualizarCategoria(c);

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
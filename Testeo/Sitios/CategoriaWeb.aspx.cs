using System;
using System.Collections.Generic;
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
            BindData();
        }

        protected void btnADD_Click(object sender, EventArgs e)
        {
            Categoria nueva = new Categoria();
            nueva.nombre = txtnombre.Text.ToUpper();
            nueva.descripcion = txtdescripcion.Text.ToUpper();
            int i= ado.agregarCategoria(nueva);

            Label1.Text = i+" Categoria agregada" ;

            BindData();
        }
    }
}
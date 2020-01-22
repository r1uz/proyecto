using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Testeo.ADO;

namespace Testeo.Sitios
{
    public partial class ProductoWeb : System.Web.UI.Page
    {
        private ProductoADO adoproducto = new ProductoADO();
        private CategoriaADO adocategoria = new CategoriaADO();

        private void BindDataProd()
        {
            GridView1.DataSource = adoproducto.getProductos();
            GridView1.DataBind();
        }

        private void BindDataCat()
        {
            dlcategoria.DataSource = adocategoria.getCategorias();
            dlcategoria.DataTextField = "nombre";
            dlcategoria.DataValueField = "id_categoria";
            dlcategoria.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDataProd();
                BindDataCat();
            }
        }

        protected void btnprod_Click(object sender, EventArgs e)
        {
            Categoria c = adocategoria.buscarCategoria(Convert.ToInt32(dlcategoria.SelectedValue));
            Producto p = new Producto();
            p.nombre = txtnombre.Text.ToUpper();
            p.precio = Convert.ToInt32(txtprecio.Text);
            p.stock = Convert.ToInt32(txtstock.Text);
            p.descripcion = txtdescripcion.Text.ToUpper();
            p.id_categoriap = c.id_categoria;
            c.Producto.Add(p);
            int i= adoproducto.agregarProducto(p);
            Label5.Text = i + " Producto Agregado";
            BindDataProd();

        }
    }
}
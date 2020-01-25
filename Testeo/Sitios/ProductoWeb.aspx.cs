using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
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
        string CadenaConexion = "Data Source=(Localdb)\\MSSQLLocalDB;Initial Catalog=Proyecto;Integrated Security=True";
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
            if (txtnombre.Text == "" || txtprecio.Text == "" || txtstock.Text == "" || txtdescripcion.Text == "")
            {
                lb_descr.Text = "Favor no ingresar campos vacíos";
            }
            else
            {
                Categoria c = adocategoria.buscarCategoria(Convert.ToInt32(dlcategoria.SelectedValue));
                Producto p = new Producto();


                int tamano = fuploadImagen.PostedFile.ContentLength;
                byte[] ImagenOriginal = new byte[tamano];

                fuploadImagen.PostedFile.InputStream.Read(ImagenOriginal, 0, tamano);
                Bitmap ImagenOriginalBinaria = new Bitmap(fuploadImagen.PostedFile.InputStream);

                string ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(ImagenOriginal);



                p.Imagen = ImagenOriginal;
                p.nombre = txtnombre.Text.ToUpper();
                p.precio = Convert.ToInt32(txtprecio.Text);
                p.stock = Convert.ToInt32(txtstock.Text);
                p.descripcion = txtdescripcion.Text.ToUpper();
                p.id_categoriap = c.id_categoria;
                c.Producto.Add(p);
                int i = adoproducto.agregarProducto(p);
                Label5.Text = i + " Producto Agregado";
                lb_image.Text = "Imagen Agregada: ";
                txtnombre.Text = "";
                txtprecio.Text = "";
                txtstock.Text = "";
                txtdescripcion.Text = "";
                Image2.ImageUrl = ImagenDataURL64;

                BindDataProd();

            }
        }

        protected void RowDeletingEvent(object sender, GridViewDeleteEventArgs e)
        {
            Image2.ImageUrl = null;
            int codigo = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            adoproducto.eliminarProducto(codigo);
            GridView1.EditIndex = -1;
            BindDataProd();
        }

        protected void RowEditingEvent(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindDataProd();
        }

        protected void RowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow fila = GridView1.Rows[e.RowIndex];
            int codigo = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);

            string nombre = (fila.FindControl("txtnombre2") as TextBox).Text.ToUpper();
            string descripcion = (fila.FindControl("txtdescripcion2") as TextBox).Text.ToUpper();
            int precio = Convert.ToInt32((fila.FindControl("txtprecio2") as TextBox).Text);
            int stock = Convert.ToInt32((fila.FindControl("txtstock2") as TextBox).Text);


            int codCategoria = Convert.ToInt32((fila.FindControl("dlcategoria2") as DropDownList).SelectedValue);

            Producto p = adoproducto.buscarProducto(codigo);
            Categoria c = adocategoria.buscarCategoria(codCategoria);
            p.nombre = nombre;
            p.precio = precio;
            p.descripcion = descripcion;
            p.stock = stock;
            p.id_categoriap = codCategoria;
            c.Producto.Add(p);
            adoproducto.actualizar(p);

            GridView1.EditIndex = -1;
            BindDataProd();
        }


        protected void RowCancelingEvent(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindDataProd();
        }



        protected void RowDataBoundEvent(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex == GridView1.EditIndex)
            {
                DropDownList lista = e.Row.FindControl("dlcategoria2") as DropDownList;
                lista.DataSource = adocategoria.getCategorias();
                lista.DataTextField = "nombre";
                lista.DataValueField = "id_categoria";
                lista.DataBind();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mantenimiento.aspx");
        }
    }
}
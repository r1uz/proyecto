using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Testeo.Sitios
{
    public partial class PruebaImagen : System.Web.UI.Page
    {
        string CadenaConexion = "Data Source=(Localdb)\\MSSQLLocalDB;Initial Catalog=Proyecto;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubir_Click(object sender, EventArgs e)
        {
            int tamano = fuploadImagen.PostedFile.ContentLength;
            byte[] ImagenOriginal = new byte[tamano];

            fuploadImagen.PostedFile.InputStream.Read(ImagenOriginal, 0, tamano);
            Bitmap ImagenOriginalBinaria = new Bitmap(fuploadImagen.PostedFile.InputStream);

            //bbdd
            SqlConnection conexionSQL = new SqlConnection(CadenaConexion);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO PRODUCTO (imagen) VALUES (@imagen)";
            cmd.Parameters.Add("@imagen", SqlDbType.Image).Value = ImagenOriginal;
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionSQL;
            conexionSQL.Open();
            cmd.ExecuteNonQuery();

            string ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(ImagenOriginal);
            imgPreview.ImageUrl = ImagenDataURL64;

        }
    }
}
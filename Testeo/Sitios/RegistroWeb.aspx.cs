using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Testeo.ADO;

namespace Testeo.Sitios
{
    public partial class RegistroWeb : System.Web.UI.Page
    {
        string CadenaConexion = "Data Source=(Localdb)\\MSSQLLocalDB;Initial Catalog=Proyecto;Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void btnADD_Click1(object sender, EventArgs e)
        {



            SqlConnection cn = new SqlConnection(CadenaConexion);
            cn.Open();
            var cmd = new SqlCommand("Select count(*) from usuario where usuario=@user or email=@email", cn);
            cmd.Parameters.Add("@user", SqlDbType.VarChar).Value = txtuser.Text;
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = txtemail.Text + dlcorreo.SelectedValue;
            cmd.Connection = cn;


            int result = Convert.ToInt32(cmd.ExecuteScalar());

            if (result >= 1)
            {
                MsgBox("ERROR: Usuario ya existe o el correo ya está en uso", this.Page, this);
            }
            else
            {

                UsuarioADO ado = new UsuarioADO();
                Usuario u = new Usuario();
                u.nombre = txtname.Text.ToUpper();
                u.email = txtemail.Text + dlcorreo.SelectedValue;
                u.usuario1 = txtuser.Text;
                u.pwd = txtpass.Text;
                u.tipo = "cliente";
                int i = ado.agregarUsuario(u);
                string str = "Usuario Registrado con éxito";

                MsgBox(str, this.Page, this);


            }


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
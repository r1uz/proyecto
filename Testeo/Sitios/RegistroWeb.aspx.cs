using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Testeo.ADO;

namespace Testeo.Sitios
{
    public partial class RegistroWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void btnADD_Click1(object sender, EventArgs e)
        {


                UsuarioADO ado = new UsuarioADO();
                Usuario u = new Usuario();
                u.nombre = txtname.Text.ToUpper();
                u.email = txtemail.Text+dlcorreo.SelectedValue;
                u.usuario1 = txtuser.Text;
                u.pwd = txtpass.Text;
                u.tipo = "cliente";
                int i = ado.agregarUsuario(u);
                string str = "Usuario Registrado con éxito";

                MsgBox(str, this.Page, this);
                
           



        }

        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
            Response.Redirect("Login.aspx");
        }
    }
}
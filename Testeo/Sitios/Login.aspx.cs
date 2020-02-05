using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testeo.Sitios
{
    public partial class Login : System.Web.UI.Page
    {

        string CadenaConexion = "Data Source=(Localdb)\\MSSQLLocalDB;Initial Catalog=Proyecto;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnADD_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(CadenaConexion);
            cn.Open();
            var cmd = new SqlCommand("Select usuario from usuario where usuario=@user and pwd=@pass", cn);
            cmd.Parameters.Add("@user", SqlDbType.VarChar).Value = txtuser.Text;
            cmd.Parameters.Add("@pass", SqlDbType.VarChar).Value = txtpass.Text;
            cmd.Connection = cn;

            string result = Convert.ToString(cmd.ExecuteScalar());

            var cmd2 = new SqlCommand("Select pwd from usuario where usuario=@user and pwd=@pass", cn);
            cmd2.Parameters.Add("@user", SqlDbType.VarChar).Value = txtuser.Text;
            cmd2.Parameters.Add("@pass", SqlDbType.VarChar).Value = txtpass.Text;
            cmd2.Connection = cn;

            string result2 = Convert.ToString(cmd2.ExecuteScalar());

            var cmd3 = new SqlCommand("Select tipo from usuario where usuario=@user and pwd=@pass", cn);
            cmd3.Parameters.Add("@user", SqlDbType.VarChar).Value = txtuser.Text;
            cmd3.Parameters.Add("@pass", SqlDbType.VarChar).Value = txtpass.Text;
            cmd3.Connection = cn;

            string result3 = Convert.ToString(cmd3.ExecuteScalar());

            var cmd4 = new SqlCommand("Select id from usuario where usuario=@user and pwd=@pass", cn);
            cmd4.Parameters.Add("@user", SqlDbType.VarChar).Value = txtuser.Text;
            cmd4.Parameters.Add("@pass", SqlDbType.VarChar).Value = txtpass.Text;
            cmd4.Connection = cn;

            int result4 = Convert.ToInt32(cmd4.ExecuteScalar());



            if ((result.Equals(txtuser.Text)) && (result2.Equals(txtpass.Text)))
            {

                if (result3.Equals("administrador"))
                {

                    System.Web.HttpContext.Current.Session["id"] = result4;
                    System.Web.HttpContext.Current.Session["tipo"] = result3;
                    Response.Redirect("Principal.aspx");

                }
                else if (result3.Equals("cliente"))
                {
                    System.Web.HttpContext.Current.Session["tipo"] = result3;
                    System.Web.HttpContext.Current.Session["id"] = result4;
                    Response.Redirect("Principal.aspx");
                }

            }

            else
            {
                string str = "Datos Incorrectos";
                MsgBox(str, this.Page, this); ;
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
using PRY_Taglitore.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRY_Taglitore
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
    {
        string nombre = txtNombre.Text.Trim();
        string contrasena = txtContrasena.Text.Trim();

        
        using (var db = new DbModels()) 
        {
            // Validación usando LINQ
            var usuario = db.Usuario
                            .Where(u => u.Nombre == nombre && u.contrasena == contrasena)
                            .FirstOrDefault();

            if (usuario != null)
            {
                // Login exitoso
                Session["Usuario"] = usuario.Nombre;
                Response.Redirect("~/Orden/Index"); // Redirigir a la página de órdenes
            }
            else
            {
                lblMensaje.Text = "Usuario o contraseña incorrectos.";
            }
        }
    }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Carolyn
{
    public partial class login : System.Web.UI.Page
    {
        NutritionDBEntities1 db = new NutritionDBEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            this.txtUsername.Focus();
        }

        protected void lbLogin_Click(object sender, EventArgs e)
        {
            try
            {
                var L = this.db.v_UserAccounts.SingleOrDefault(p => p.Username == this.txtUsername.Value && p.UserPassword == this.txtPassword.Value);

                if (L != null)
                {
                    if (L.Role_Description == "Dietitian")
                    {
                        FormsAuthentication.SetAuthCookie(this.txtUsername.Value, false);

                        Response.Redirect("default.aspx");
                    }
                    else
                    {
                        //
                        // Patient role
                        //
                        FormsAuthentication.SetAuthCookie(this.txtUsername.Value, false);

                        Session["Patient_ID"] = L.Patient_ID;

                        Response.Redirect("/PatientHome/default.aspx");
                    }
                }
                else
                {
                    throw new Exception("Usuario o contraseña invalida. Verifique que CAPS no este puesto.");
                }
            }
            catch (Exception E)
            {
                this.CustomValidator1.IsValid = false;
                this.CustomValidator1.ErrorMessage = E.Message;
            }
        }
    }
}
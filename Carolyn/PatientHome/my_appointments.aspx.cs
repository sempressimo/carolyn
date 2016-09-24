using Data_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Carolyn.PatientHome
{
    public partial class my_appointments : System.Web.UI.Page
    {
        NutritionDBEntities db = new NutritionDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    this.LoadRecords(Convert.ToInt32(Session["Patient_ID"]));


                }
                catch (Exception E)
                {
                    this.CustomValidator1.IsValid = false;
                    this.CustomValidator1.ErrorMessage = E.Message;

                    if (E.InnerException != null)
                    {
                        this.CustomValidator1.ErrorMessage += " Inner details: " + E.InnerException.Message;
                    }
                }
            }
        }

        protected string GetStatusColor(string Date, string Status_ID)
        {
            if (Convert.ToDateTime(Date) < DateTime.Today)
            {
                return "Red";
            }
            else
            {
                // 0 = Pending answer, 1 = Accepted, 2 = Rejected
                if (Status_ID == "0")
                {
                    return "Orange";
                }
                else if (Status_ID == "1")
                {
                    return "Green";
                }
                else
                {
                    return "Orange";
                }
            }
        }

        protected string GetStatusText(string Date, string Status_ID)
        {
            if (Convert.ToDateTime(Date) < DateTime.Today)
            {
                return "Expired";
            }
            else
            {
                // 0 = Pending answer, 1 = Accepted, 2 = Rejected
                if (Status_ID == "0")
                {
                    return "Pendiente Confirmación";
                }
                else if (Status_ID == "1")
                {
                    return "Confirmada";
                }
                else
                {
                    return "Rechazada";
                }
            }
        }

        protected void LoadRecords(int Patient_ID)
        {
            var A = this.db.Appointments_Master.Where(p => p.Patient_ID == Patient_ID).OrderByDescending(p => p.Requested_DateTime);

            this.lvRecords.DataSource = A.ToList();
            this.lvRecords.DataBind();
        }
    }
}
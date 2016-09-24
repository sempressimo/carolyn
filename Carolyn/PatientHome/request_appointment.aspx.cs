using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data_Layer;

namespace Carolyn.PatientHome
{
    public partial class request_appointment : System.Web.UI.Page
    {
        NutritionDBEntities db = new NutritionDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    this.LoadLists();

                    if (Request.QueryString["id"] != null)
                    {
                        ViewState["id"] = Request.QueryString["id"];

                        this.LoadRecord(Convert.ToInt32(ViewState["id"]));
                    }
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

        protected void LoadRecord(int id)
        {
            var L = this.db.Appointments_Master.Single(p => p.Appointment_Request_ID == id);

            this.txtComments.Value = L.Request_Comments;
            this.txtDate.Value = L.Requested_DateTime.Value.ToShortDateString();
            this.txtTime.Value = L.Requested_DateTime.Value.ToShortTimeString();

            if (this.cmbLocation.Items.FindByValue(L.Request_Location.Value.ToString()) != null)
            {
                this.cmbLocation.Items.FindByValue(L.Request_Location.Value.ToString()).Selected = true;
            }
        }

        protected void LoadLists()
        {
            var L = this.db.Appointment_Locations.OrderBy(p => p.Appointment_Location_Description);

            this.cmbLocation.DataSource = L.ToList();
            this.cmbLocation.DataValueField = "Appointment_Location_ID";
            this.cmbLocation.DataTextField = "Appointment_Location_Description";
            this.cmbLocation.DataBind();

            var D = this.db.Dietitians.OrderBy(p => p.FullName);

            this.cmbDietitian.DataSource = D.ToList();
            this.cmbDietitian.DataValueField = "Dietian_ID";
            this.cmbDietitian.DataTextField = "FullName";
            this.cmbDietitian.DataBind();
        }

        protected void lbSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToDateTime(this.txtDate.Value) < DateTime.Today)
                {
                    throw new Exception("La fecha escojida ya paso. Escoja una de hoy en adelante.");
                }

                var AR = new Appointments_Master();

                //AR.Appointment_Request_ID = null;
                AR.Patient_ID = Convert.ToInt32(Session["Patient_ID"]);
                AR.Request_Comments = this.txtComments.Value;
                AR.Request_Location = Convert.ToInt32(this.cmbLocation.SelectedValue);
                AR.Requested_DateTime = Convert.ToDateTime(this.txtDate.Value + " " + this.txtTime.Value);
                AR.Dietitian_ID = Convert.ToInt32(this.cmbDietitian.SelectedValue);

                // 0 = Pending answer, 1 = Accepted, 2 = Rejected
                AR.Request_Status = 0; 

                this.db.Appointments_Master.Add(AR);
                this.db.SaveChanges();

                Response.Redirect("my_appointments.aspx");
            }
            catch (Exception E)
            {
                this.CustomValidator1.IsValid = false;
                this.CustomValidator1.ErrorMessage = E.Message;

                if (E.InnerException != null)
                {
                    this.CustomValidator1.ErrorMessage += " Inner details: " + E.InnerException.ToString();
                }
            }
        }

        protected void lbCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}
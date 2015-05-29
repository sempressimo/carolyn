using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Carolyn
{
    public partial class patient_record : System.Web.UI.Page
    {
        NutritionDBEntities db = new NutritionDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    this.txtRecordDate.Text = DateTime.Today.ToShortDateString();

                    if (Request.QueryString["id"] != null)
                    {
                        ViewState["id"] = Request.QueryString["id"];

                        this.LoadRecord(Convert.ToInt32(ViewState["id"]));
                    }
                }
                catch (Exception E)
                {
                    DisplayError(E.Message);
                }
            }
        }

        private void LoadRecord(int Key)
        {
            Patients p = this.db.Patients.Single(k => k.Patient_ID == Key);

            this.txtAge.Text = p.Age.ToString();
            this.txtBirthdate.Text = p.Birthday.Value.ToShortDateString();
            this.txtEmail.Text = p.Email;
            p.Emergency_Contact = this.txtAge.Text;
            p.Emergency_Contact_Phone = this.txtAge.Text;
            p.Emergency_Contact_Relationship = this.txtAge.Text;
            p.Full_Name = this.txtAge.Text;
            //p.IsActive = this.cbIsActive.Checked;
            p.Job = this.txtOcupation.Text;
            p.Main_Phone = this.txtMainPhone.Text;
            p.Other_Phone = this.txtSecondaryPhone.Text;
            p.Record_Date = Convert.ToDateTime(this.txtRecordDate.Text);
            //p.Record_Number = this.txtRecordNumber.Text;
            p.Res_Address_Line_1 = this.txtAddressLine1.Text;
            p.Res_Address_Line_2 = this.txtAddressLine2.Text;
            p.Res_Town = this.txtTown.Text;
            p.Res_ZipCode = this.txtZipcode.Text;
            p.Sex = this.cmbSex.Text;
            p.Work_Phone = this.txtWorkPhone.Text;
        }

        protected void lbSave_Click(object sender, EventArgs e)
        {

        }

        private void DisplayError(string message)
        {
            this.CustomValidator1.IsValid = false;
            this.CustomValidator1.ErrorMessage = message;
        }

        protected void txtZipcode_TextChanged(object sender, EventArgs e)
        {
            try
            {
                ListZip lz = db.ListZip.SingleOrDefault(p => p.ZipCode == this.txtZipcode.Text);

                if (lz != null)
                {
                    this.txtTown.Text = lz.City;
                }
            }
            catch (Exception E)
            {
                DisplayError(E.Message);
            }
        }
    }
}
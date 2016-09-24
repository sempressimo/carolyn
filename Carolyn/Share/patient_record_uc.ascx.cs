using Data_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Carolyn.Share
{
    public partial class patient_record_uc : System.Web.UI.UserControl
    {
        NutritionDBEntities db = new NutritionDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    this.txtRecordDate.Value = DateTime.Today.ToShortDateString();

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
            Patient p = this.db.Patients.Single(k => k.Patient_ID == Key);

            this.txtAge.Value = p.Age.ToString();
            this.txtBirthdate.Value = p.Birthday.Value.ToShortDateString();
            this.txtEmail.Value = p.Email;
            p.Emergency_Contact = this.txtAge.Value;
            p.Emergency_Contact_Phone = this.txtAge.Value;
            p.Emergency_Contact_Relationship = this.txtAge.Value;
            p.Full_Name = this.txtAge.Value;
            //p.IsActive = this.cbIsActive.Checked;
            p.Job = this.txtOcupation.Value;
            p.Main_Phone = this.txtMainPhone.Value;
            p.Other_Phone = this.txtSecondaryPhone.Value;
            p.Record_Date = Convert.ToDateTime(this.txtRecordDate.Value);
            //p.Record_Number = this.txtRecordNumber.Text;
            p.Res_Address_Line_1 = this.txtAddressLine1.Value;
            p.Res_Address_Line_2 = this.txtAddressLine2.Value;
            p.Res_Town = this.txtTown.Value;
            p.Res_ZipCode = this.txtZipcode.Value;
            p.Sex = this.cmbSex.Text;
            p.Work_Phone = this.txtWorkPhone.Value;
        }

        protected void AddRecord()
        {
            Patient p = new Patient();

            p.Age = Convert.ToInt32(this.txtAge.Value);
            p.Birthday = Convert.ToDateTime(this.txtBirthdate.Value);
            p.Email = this.txtEmail.Value;
            p.Emergency_Contact = this.txtContactName.Value;
            p.Emergency_Contact_Phone = this.txtContactPhone.Value;
            p.Emergency_Contact_Relationship = this.cmbRelationship.SelectedValue;
            p.Full_Name = this.txtFullname.Value;
            p.Job = this.txtOcupation.Value;
            p.Main_Phone = this.txtMainPhone.Value;
            p.Other_Phone = this.txtSecondaryPhone.Value;
            p.Record_Date = Convert.ToDateTime(this.txtRecordDate.Value);
            p.Res_Address_Line_1 = this.txtAddressLine1.Value;
            p.Res_Address_Line_2 = this.txtAddressLine2.Value;
            p.Res_Town = this.txtTown.Value;
            p.Res_ZipCode = this.txtZipcode.Value;
            p.Sex = this.cmbSex.SelectedValue;
            p.Work_Phone = this.txtWorkPhone.Value;

            db.Patients.Add(p);
            db.SaveChanges();
        }

        protected void SaveRecord(int Patient_ID)
        {
            Patient p = this.db.Patients.Single(k => k.Patient_ID == Patient_ID);

            p.Age = Convert.ToInt32(this.txtAge.Value);
            p.Birthday = Convert.ToDateTime(this.txtBirthdate.Value);
            p.Email = this.txtEmail.Value;
            p.Emergency_Contact = this.txtContactName.Value;
            p.Emergency_Contact_Phone = this.txtContactPhone.Value;
            p.Emergency_Contact_Relationship = this.cmbRelationship.SelectedValue;
            p.Full_Name = this.txtFullname.Value;
            p.Job = this.txtOcupation.Value;
            p.Main_Phone = this.txtMainPhone.Value;
            p.Other_Phone = this.txtSecondaryPhone.Value;
            p.Record_Date = Convert.ToDateTime(this.txtRecordDate.Value);
            p.Res_Address_Line_1 = this.txtAddressLine1.Value;
            p.Res_Address_Line_2 = this.txtAddressLine2.Value;
            p.Res_Town = this.txtTown.Value;
            p.Res_ZipCode = this.txtZipcode.Value;
            p.Sex = this.cmbSex.SelectedValue;
            p.Work_Phone = this.txtWorkPhone.Value;

            this.db.SaveChanges();
        }

        protected void lbSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["id"] != null)
                {
                    int Patient_ID = Convert.ToInt32(Request.QueryString["id"]);

                    this.SaveRecord(Patient_ID);
                }
                else
                {
                    this.AddRecord();
                }

                Page p = this.Page;

                if (p.Form.Name == "frmPatient")
                {
                    Response.Redirect("default.aspx");
                }
                else
                {
                    Response.Redirect("patient_list.aspx");
                }
            }
            catch (Exception E)
            {
                DisplayError(E.Message);
            }
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
                ListZip lz = db.ListZips.SingleOrDefault(p => p.ZipCode == this.txtZipcode.Value);

                if (lz != null)
                {
                    this.txtTown.Value = lz.City;
                }
            }
            catch (Exception E)
            {
                DisplayError(E.Message);
            }
        }

        protected void lbCancel_Click(object sender, EventArgs e)
        {
            Page p = this.Page;

            if (p.Form.Name == "frmPatient")
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                Response.Redirect("patient_list.aspx");
            }
        }
    }
}
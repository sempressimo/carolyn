using Data_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Carolyn
{
    public partial class daily_schedule : System.Web.UI.Page
    {
        NutritionDBEntities db = new NutritionDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                this.LoadHourSlots();
            }
            catch (Exception E)
            {
                this.CustomValidator1.IsValid = false;
                this.CustomValidator1.ErrorMessage = E.Message;
            }
        }

        protected void LoadHourSlots()
        {
            var HourSlots = this.db.HourSlots.Where(p => p.IsActive == true).OrderBy(p => p.HourSlotOrder);

            this.lvSchedule.DataSource = HourSlots.ToList();
            this.lvSchedule.DataBind();
        }
    }
}
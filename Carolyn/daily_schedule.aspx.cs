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
        NutritionDBEntities1 db = new NutritionDBEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoadHourSlots()
        { 
            var HourSlots = this.db.ho
        }
    }
}
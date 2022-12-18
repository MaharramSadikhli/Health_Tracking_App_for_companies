using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class Vaccine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.CovidVaccine_TBLTableAdapter dt = new
                DataSet1TableAdapters.CovidVaccine_TBLTableAdapter();
            RepeaterVac.DataSource = dt.Vaccine();
            RepeaterVac.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class CovidPerson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.CovidPersonnel_TBLTableAdapter dt = new
                DataSet1TableAdapters.CovidPersonnel_TBLTableAdapter();
            RepeaterCov.DataSource= dt.CovidPerson();
            RepeaterCov.DataBind();
        }
    }
}
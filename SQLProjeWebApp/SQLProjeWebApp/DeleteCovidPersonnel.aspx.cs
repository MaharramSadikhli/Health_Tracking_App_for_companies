using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class DeleteCovidPersonnel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["CovidPerson_ID"]);
            DataSet1TableAdapters.CovidPersonnel_TBLTableAdapter dt = new
                DataSet1TableAdapters.CovidPersonnel_TBLTableAdapter();
            dt.DeleteCovPerson(id);
            Response.Redirect("CovidPerson.aspx");
        }
    }
}
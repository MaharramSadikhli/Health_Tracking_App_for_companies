using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class DelPersonnel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Personnel_NO"]);

            DataSet1TableAdapters.Personal_TBLTableAdapter dt = new
                DataSet1TableAdapters.Personal_TBLTableAdapter();
            dt.DelPersonnel(id);
            Response.Redirect("WebForm1.aspx");

        }
    }
}
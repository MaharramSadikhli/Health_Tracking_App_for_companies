using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class DeletePersonnelTBL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Personnel_ID"]);

            DataSet1TableAdapters.Personnel_TBLTableAdapter dt = new
                DataSet1TableAdapters.Personnel_TBLTableAdapter();
            dt.DeletePersonnelTBL(id);
            Response.Redirect("Personnel.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class DeleteSickPersonnel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["SickPers_ID"]);

            DataSet1TableAdapters.Personnel_illness_TBLTableAdapter dt = new
                DataSet1TableAdapters.Personnel_illness_TBLTableAdapter();
            dt.DELETESICKPERSON(id);
            Response.Redirect("illnessPersonnel.aspx");
        }
    }
}
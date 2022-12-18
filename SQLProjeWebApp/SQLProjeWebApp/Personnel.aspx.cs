using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class Personnel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Personnel_TBLTableAdapter dt = new
                DataSet1TableAdapters.Personnel_TBLTableAdapter();
            Repeater1.DataSource = dt.Personnel();
            Repeater1.DataBind();
        }
    }
}
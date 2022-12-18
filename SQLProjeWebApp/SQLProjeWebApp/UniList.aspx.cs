using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class UniList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Uni_TBLTableAdapter dt = new
                DataSet1TableAdapters.Uni_TBLTableAdapter();
            Repeater2.DataSource = dt.Uni();
            Repeater2.DataBind();
        }
    }
}
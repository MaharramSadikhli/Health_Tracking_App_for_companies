using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class Position : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Position_TBLTableAdapter dt = new
                DataSet1TableAdapters.Position_TBLTableAdapter();
            Repeater1.DataSource = dt.Positions();
            Repeater1.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Personal_TBLTableAdapter dt = new
                DataSet1TableAdapters.Personal_TBLTableAdapter();
            Repeater1.DataSource = dt.PersonalList();
            Repeater1.DataBind();
        }
    }
}
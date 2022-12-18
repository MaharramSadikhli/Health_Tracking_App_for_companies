using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class Addillness : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Buttonill_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.illness_TBLTableAdapter dt = new
                DataSet1TableAdapters.illness_TBLTableAdapter();
            dt.InsertilnessName(txtAddill.Text, txtSymp.Text);
            Response.Redirect("illness.aspx");
        }
    }
}
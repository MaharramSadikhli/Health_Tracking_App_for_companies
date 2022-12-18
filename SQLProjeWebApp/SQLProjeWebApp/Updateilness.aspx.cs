using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class Updateilness : System.Web.UI.Page
    {
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                try
                {


                    i = Convert.ToInt32(Request.QueryString["illness_ID"].ToString());
                    DataSet1TableAdapters.illness_TBLTableAdapter dt = new
                        DataSet1TableAdapters.illness_TBLTableAdapter();
                    txtAddill.Text = dt.Selectilness(i)[0].illness_Name;
                    txtSymp.Text = dt.Selectilness(i)[0].illness_Symptoms;
                }
                catch (Exception)
                {
                    txtSymp.Text = "Enter Symptoms of illness";
                }
            }
        }

        protected void ButtonAddill_Click(object sender, EventArgs e)
        {
            i = Convert.ToInt32(Request.QueryString["illness_ID"].ToString());
            DataSet1TableAdapters.illness_TBLTableAdapter dt = new
                DataSet1TableAdapters.illness_TBLTableAdapter();
            dt.Updateilness(txtAddill.Text, txtSymp.Text, i);
            Response.Redirect("illness.aspx");
        }
    }
}
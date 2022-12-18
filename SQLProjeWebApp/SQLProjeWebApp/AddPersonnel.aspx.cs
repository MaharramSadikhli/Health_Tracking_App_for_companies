using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class AddPersonnel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                DataSet1TableAdapters.City_TBLTableAdapter dt = new
                    DataSet1TableAdapters.City_TBLTableAdapter();
                DropDownList1City.DataSource = dt.City();
                DropDownList1City.DataTextField = "City_Name";
                DropDownList1City.DataValueField = "City_ID";
                DropDownList1City.DataBind();
                
            }
        }


       

        protected void Unnamed7_Click1(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Personal_TBLTableAdapter dt = new
                DataSet1TableAdapters.Personal_TBLTableAdapter();
            dt.AddPersonnel(txtPerTCNO.Text, txtPerName.Text, txtPerSurname.Text, txtPerBloogG.Text, Convert.ToInt32(DropDownList1City.SelectedValue), Convert.ToInt32(txtPerNO.Text));
            Response.Redirect("WebForm1.aspx#");
        }
    }
}
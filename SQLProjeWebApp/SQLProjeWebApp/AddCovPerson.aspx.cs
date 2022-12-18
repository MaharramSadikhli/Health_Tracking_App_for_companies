using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class AddCovPerson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                DataSet1TableAdapters.Personnel_TBLTableAdapter dt = new
                    DataSet1TableAdapters.Personnel_TBLTableAdapter();
                DropDownList1Person_ID.DataSource = dt.Personnel();
                DropDownList1Person_ID.DataTextField = "Personnel_ID";
                DropDownList1Person_ID.DataValueField = "Personnel_ID";
                DropDownList1Person_ID.DataBind();

                DataSet1TableAdapters.CovidVaccine_TBLTableAdapter dv = new
                    DataSet1TableAdapters.CovidVaccine_TBLTableAdapter();
                DropDownList1Vacine.DataSource = dv.Vaccine();
                DropDownList1Vacine.DataTextField = "Vaccine_Name";
                DropDownList1Vacine.DataValueField = "Vaccine_ID";
                DropDownList1Vacine.DataBind();
                
            }
        }

        protected void Button2CovPerson_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.CovidPersonnel_TBLTableAdapter dt = new
                DataSet1TableAdapters.CovidPersonnel_TBLTableAdapter();
            dt.InsertCovPerson(Convert.ToInt32(DropDownList1Person_ID.SelectedValue), Convert.ToInt32(DropDownList1Vacine.SelectedValue), TextBox1Symptoms.Text, DateTime.Parse(TextBox2Positive.Text), DateTime.Parse(TextBox3Negative.Text));
            Response.Redirect("CovidPerson.aspx");
        }
    }
}
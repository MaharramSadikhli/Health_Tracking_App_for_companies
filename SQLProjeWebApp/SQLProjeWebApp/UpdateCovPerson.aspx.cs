using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class UpdateCovPerson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                try
                {


                    int i = Convert.ToInt32(Request.QueryString["CovidPerson_ID"]);
                    TextBoxCovPerID.Text = i.ToString();
                    DataSet1TableAdapters.CovidPersonnel_TBLTableAdapter dt = new
                        DataSet1TableAdapters.CovidPersonnel_TBLTableAdapter();
                    DropDownListPersonnel_ID.SelectedValue = dt.SelectCovidPerson(i)[0].Personnel_ID.ToString();
                    DropDownList1Vaccine.SelectedValue = dt.SelectCovidPerson(i)[0].Vaccine_ID.ToString();
                    TextBox1Symptoms.Text = dt.SelectCovidPerson(i)[0].Symptoms;
                    TextBox1Positive.Text = dt.SelectCovidPerson(i)[0].Covid_Positive_Date.ToString();
                    TextBox1Negative.Text = dt.SelectCovidPerson(i)[0].Covid_Negatif_Date.ToString();

                    DataSet1TableAdapters.Personnel_TBLTableAdapter dp = new
                        DataSet1TableAdapters.Personnel_TBLTableAdapter();
                    DropDownListPersonnel_ID.DataSource = dp.Personnel();
                    DropDownListPersonnel_ID.DataTextField = "Personnel_ID";
                    DropDownListPersonnel_ID.DataValueField = "Personnel_ID";
                    DropDownListPersonnel_ID.DataBind();
                    DataSet1TableAdapters.CovidVaccine_TBLTableAdapter dv = new
                        DataSet1TableAdapters.CovidVaccine_TBLTableAdapter();
                    DropDownList1Vaccine.DataSource= dv.Vaccine();
                    DropDownList1Vaccine.DataTextField = "Vaccine_Name";
                    DropDownList1Vaccine.DataValueField = "Vaccine_ID";
                    DropDownList1Vaccine.DataBind();
                }
                catch(Exception)
                {
                    TextBox1Symptoms.Text = "Enter Symptoms";
                }



            }
        }

        protected void ButtonCov_Click(object sender, EventArgs e)
        {
            int i = Convert.ToInt32(Request.QueryString["CovidPerson_ID"]);
            TextBoxCovPerID.Text = i.ToString();
            DataSet1TableAdapters.CovidPersonnel_TBLTableAdapter dt = new
                DataSet1TableAdapters.CovidPersonnel_TBLTableAdapter();
            dt.UpdateCovPerson(Convert.ToInt32(DropDownListPersonnel_ID.SelectedValue), Convert.ToInt32(DropDownList1Vaccine.SelectedValue), TextBox1Symptoms.Text, DateTime.Parse( TextBox1Positive.Text),DateTime.Parse( TextBox1Negative.Text), i);
            Response.Redirect("CovidPerson.aspx");
        }
    }
}
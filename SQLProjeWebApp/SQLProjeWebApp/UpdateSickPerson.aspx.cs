using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class UpdateSickPerson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {


                if (Page.IsPostBack == false)
                {

                    int id = Convert.ToInt32(Request.QueryString["SickPers_ID"]);
                    TextBox1SickPersID.Text = id.ToString();
                    
                    DataSet1TableAdapters.Personnel_illness_TBLTableAdapter dt = new
                        DataSet1TableAdapters.Personnel_illness_TBLTableAdapter();
                    TextBox1Pers_ID.Text = dt.SelectSickPers(id)[0].Personnel_ID.ToString();
                    DropDownList1illID.SelectedValue = dt.SelectSickPers(id)[0].illness_ID.ToString();
                    DropDownList1MedicamentID.SelectedValue = dt.SelectSickPers(id)[0].Medicament_ID.ToString();
                    TextBox1illDate.Text = dt.SelectSickPers(id)[0].illness_date.ToString();
                    txtMedDos.Text = dt.SelectSickPers(id)[0].Medicament_Dosage;


                    DataSet1TableAdapters.illness_TBLTableAdapter it = new
                        DataSet1TableAdapters.illness_TBLTableAdapter();
                    DropDownList1illID.DataSource = it.Illness();
                    DropDownList1illID.DataTextField = "illness_Name";
                    DropDownList1illID.DataValueField = "illness_ID";
                    DropDownList1illID.DataBind();

                    DataSet1TableAdapters.Medicament_TBLTableAdapter mt = new
                     DataSet1TableAdapters.Medicament_TBLTableAdapter();
                    DropDownList1MedicamentID.DataSource = mt.Medicament();
                    DropDownList1MedicamentID.DataTextField = "Medicament_Name";
                    DropDownList1MedicamentID.DataValueField = "Medicament_ID";
                    DropDownList1MedicamentID.DataBind();


                    


                }
            }
            catch (Exception)
            {
                int id = Convert.ToInt32(Request.QueryString["SickPers_ID"]);
                TextBox1SickPersID.Text = id.ToString();
                
                DataSet1TableAdapters.Personnel_illness_TBLTableAdapter dt = new
                    DataSet1TableAdapters.Personnel_illness_TBLTableAdapter();
                TextBox1Pers_ID.Text = dt.SelectSickPers(id)[0].Personnel_ID.ToString();
                DropDownList1illID.SelectedValue = dt.SelectSickPers(id)[0].illness_ID.ToString();
                DropDownList1MedicamentID.SelectedValue = dt.SelectSickPers(id)[0].Medicament_ID.ToString();
                TextBox1illDate.Text = dt.SelectSickPers(id)[0].illness_date.ToString();

                txtMedDos.Text = "Enter Dosage";

                DataSet1TableAdapters.illness_TBLTableAdapter it = new
                    DataSet1TableAdapters.illness_TBLTableAdapter();
                DropDownList1illID.DataSource = it.Illness();
                DropDownList1illID.DataTextField = "illness_Name";
                DropDownList1illID.DataValueField = "illness_ID";
                DropDownList1illID.DataBind();

                DataSet1TableAdapters.Medicament_TBLTableAdapter mt = new
                 DataSet1TableAdapters.Medicament_TBLTableAdapter();
                DropDownList1MedicamentID.DataSource = mt.Medicament();
                DropDownList1MedicamentID.DataTextField = "Medicament_Name";
                DropDownList1MedicamentID.DataValueField = "Medicament_ID";
                DropDownList1MedicamentID.DataBind();
                txtMedDos.Text = "Enter Dosage";
            }
        }

        protected void Unnamed6_Click1(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Personnel_illness_TBLTableAdapter dt = new
                DataSet1TableAdapters.Personnel_illness_TBLTableAdapter();
            dt.UpdateSickPerson(Convert.ToInt32(TextBox1Pers_ID.Text), Convert.ToInt32(DropDownList1illID.SelectedValue), TextBox1illDate.Text, Convert.ToInt32(DropDownList1MedicamentID.SelectedValue), txtMedDos.Text, Convert.ToInt32(TextBox1SickPersID.Text));
            Response.Redirect("illnessPersonnel.aspx");
        }
    }
}
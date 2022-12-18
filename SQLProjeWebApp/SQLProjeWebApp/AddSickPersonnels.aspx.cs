using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class AddSickPersonnels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                DataSet1TableAdapters.Personnel_TBLTableAdapter dt = new
                    DataSet1TableAdapters.Personnel_TBLTableAdapter();
                DropDownList1PersonID.DataSource = dt.Personnel();
                DropDownList1PersonID.DataTextField = "Personnel_ID";
                DropDownList1PersonID.DataValueField = "Personnel_ID";
                DropDownList1PersonID.DataBind();

                DataSet1TableAdapters.illness_TBLTableAdapter di = new
                    DataSet1TableAdapters.illness_TBLTableAdapter();
                DropDownList1illID.DataSource = di.Illness();
                DropDownList1illID.DataTextField = "illness_Name";
                DropDownList1illID.DataValueField = "illness_ID";
                DropDownList1illID.DataBind();

                DataSet1TableAdapters.Medicament_TBLTableAdapter dm = new
                    DataSet1TableAdapters.Medicament_TBLTableAdapter();
                DropDownList1MedicamentID.DataSource = dm.Medicament();
                DropDownList1MedicamentID.DataTextField = "Medicament_Name";
                DropDownList1MedicamentID.DataValueField = "Medicament_ID";
                DropDownList1MedicamentID.DataBind();

                
            }

        }

        protected void Unnamed6_Click(object sender, EventArgs e)
        {
            
            
            DataSet1TableAdapters.Personnel_illness_TBLTableAdapter dt = new
                DataSet1TableAdapters.Personnel_illness_TBLTableAdapter();
            dt.InsertSickPerson(Convert.ToInt32(DropDownList1PersonID.SelectedValue), Convert.ToInt32(DropDownList1illID.SelectedValue), TextBox1illDate.Text, Convert.ToInt32(DropDownList1MedicamentID.SelectedValue), txtMedDos.Text, Convert.ToInt32(TextBox1SickPerson_ID.Text));
            Response.Redirect("illnessPersonnel.aspx");   
        }
    }
}
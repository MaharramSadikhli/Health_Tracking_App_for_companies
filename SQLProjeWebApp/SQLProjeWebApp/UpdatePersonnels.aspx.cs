using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class UpdatePersonnels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                int id = Convert.ToInt32(Request.QueryString["Personnel_ID"]);
                TextBox1Per_ID.Text = id.ToString();

                DataSet1TableAdapters.Personnel_TBLTableAdapter pt = new
                    DataSet1TableAdapters.Personnel_TBLTableAdapter();
                DropDownList1PosNO.SelectedValue = pt.SelectPers(id)[0].Position_ID.ToString();
                DropDownList1GRAD.SelectedValue = pt.SelectPers(id)[0].Grad_ID.ToString();
                DropDownList1UNI.SelectedValue = pt.SelectPers(id)[0].Uni_ID.ToString();
                DropDownList1VACCINE.SelectedValue = pt.SelectPers(id)[0].Vaccine_ID.ToString();
                txtVaccineDosage.Text = pt.SelectPers(id)[0].VaccineDosage.ToString();
                txtCovid_Status.Text = pt.SelectPers(id)[0].Covid_Status.ToString();
                DropDownList1PerNO.SelectedValue = pt.SelectPers(id)[0].Personnel_NO.ToString();


              

                DataSet1TableAdapters.Position_TBLTableAdapter dt = new
                    DataSet1TableAdapters.Position_TBLTableAdapter();
               
                DropDownList1PosNO.DataSource = dt.Positions();
                DropDownList1PosNO.DataTextField = "Position_Name";
                DropDownList1PosNO.DataValueField = "Position_ID";
                DropDownList1PosNO.DataBind();


                DataSet1TableAdapters.Graduation_Information_TBLTableAdapter dG = new
                    DataSet1TableAdapters.Graduation_Information_TBLTableAdapter();
                DropDownList1GRAD.DataSource = dG.Graduation();
                DropDownList1GRAD.DataTextField = "Grad_Status";
                DropDownList1GRAD.DataValueField = "Grad_ID";
                DropDownList1GRAD.DataBind();

                DataSet1TableAdapters.Uni_TBLTableAdapter dU = new
                    DataSet1TableAdapters.Uni_TBLTableAdapter();
                DropDownList1UNI.DataSource = dU.Uni();
                DropDownList1UNI.DataTextField = "Uni_Name";
                DropDownList1UNI.DataValueField = "Uni_ID";
                DropDownList1UNI.DataBind();


                DataSet1TableAdapters.CovidVaccine_TBLTableAdapter dV = new
                    DataSet1TableAdapters.CovidVaccine_TBLTableAdapter();
                DropDownList1VACCINE.DataSource = dV.Vaccine();
                DropDownList1VACCINE.DataTextField = "Vaccine_Name";
                DropDownList1VACCINE.DataValueField = "Vaccine_ID";
                DropDownList1VACCINE.DataBind();

                DataSet1TableAdapters.Personal_TBLTableAdapter dp = new
                    DataSet1TableAdapters.Personal_TBLTableAdapter();
                DropDownList1PerNO.DataSource = dp.PersonalList();
                DropDownList1PerNO.DataTextField = "Personnel_Name";
                DropDownList1PerNO.DataValueField = "Personnel_NO";
                DropDownList1PerNO.DataBind();





            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Personnel_TBLTableAdapter dt = new
                DataSet1TableAdapters.Personnel_TBLTableAdapter();
            dt.PersonnelUPDATE( Convert.ToInt32(DropDownList1GRAD.SelectedValue), Convert.ToInt32(DropDownList1UNI.SelectedValue), Convert.ToInt32(DropDownList1VACCINE.SelectedValue), Convert.ToByte(txtVaccineDosage.Text), Convert.ToBoolean(txtCovid_Status.Text), Convert.ToInt32(DropDownList1PerNO.SelectedValue), Convert.ToInt32(TextBox1Per_ID.Text));
            Response.Redirect("Personnel.aspx");

        }
    }
}
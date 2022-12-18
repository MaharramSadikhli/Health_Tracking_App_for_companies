using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class UpdateP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {


                int id = Convert.ToInt32(Request.QueryString["Personnel_NO"]);
                txtPerNO.Text = id.ToString();
                DataSet1TableAdapters.Personal_TBLTableAdapter dt = new
                    DataSet1TableAdapters.Personal_TBLTableAdapter();
                txtPerTCNO.Text = dt.SelectPersonnel(id)[0].Personnel_TCNO;
                txtPerName.Text = dt.SelectPersonnel(id)[0].Personnel_Name;
                txtPerSurname.Text = dt.SelectPersonnel(id)[0].Personnel_Surname;
                txtPerBloogG.Text = dt.SelectPersonnel(id)[0].Personnell_BloogG;
                DropDownList1City.SelectedValue = dt.SelectPersonnel(id)[0].City_ID.ToString();
                
                DataSet1TableAdapters.City_TBLTableAdapter dc = new
                    DataSet1TableAdapters.City_TBLTableAdapter();
                DropDownList1City.DataSource = dc.City();
                DropDownList1City.DataTextField = "City_Name";
                DropDownList1City.DataValueField = "City_ID";
                DropDownList1City.DataBind();
            }

        }

        protected void Unnamed7_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.City_TBLTableAdapter dc = new
                DataSet1TableAdapters.City_TBLTableAdapter();
            dc.UpdateCity(Convert.ToInt32(DropDownList1City.SelectedValue));

            DataSet1TableAdapters.Personal_TBLTableAdapter dt = new
                 DataSet1TableAdapters.Personal_TBLTableAdapter();
            
            dt.UpdatePersonnels(txtPerTCNO.Text, txtPerName.Text, txtPerSurname.Text, txtPerBloogG.Text , Convert.ToInt32(DropDownList1City.SelectedValue), Convert.ToInt32(txtPerNO.Text));
            dc.UpdateCity(Convert.ToInt32(DropDownList1City.SelectedValue));
            Response.Redirect("WebForm1.aspx#");
        }
    }
}
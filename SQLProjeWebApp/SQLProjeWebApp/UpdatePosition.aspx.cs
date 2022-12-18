using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class UpdatePosition : System.Web.UI.Page
    {
        int i;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {


                i = Convert.ToInt32(Request.QueryString["Position_ID"]);
                txtPos_ID.Text = i.ToString();


                DataSet1TableAdapters.Position_TBLTableAdapter dt = new
                    DataSet1TableAdapters.Position_TBLTableAdapter();

                TextBox1Positions.Text = dt.SelectPositions(i)[0].Position_Name;
                txtSalary.Text = dt.SelectPositions(i)[0].Position_Salary.ToString();
                txtWorkDate.Text = dt.SelectPositions(i)[0].WorkingDate;
            }

            
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Position_TBLTableAdapter dt = new
                  DataSet1TableAdapters.Position_TBLTableAdapter();
            dt.UpdatePositions(TextBox1Positions.Text, decimal.Parse(txtSalary.Text), txtWorkDate.Text, Convert.ToInt32(txtPos_ID.Text));
            Response.Redirect("Position.aspx");
          
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class AddMed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Medicament_TBLTableAdapter dt = new
                DataSet1TableAdapters.Medicament_TBLTableAdapter();
            dt.InsertMed(txtMed.Text);
            Response.Redirect("Medicament.aspx");
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLProjeWebApp
{
    public partial class Medicament : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Medicament_TBLTableAdapter dt = new
                DataSet1TableAdapters.Medicament_TBLTableAdapter();
            Repeater3.DataSource = dt.Medicament();
            Repeater3.DataBind();
        }

        
    }
}
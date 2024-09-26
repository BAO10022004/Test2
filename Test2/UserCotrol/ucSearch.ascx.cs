using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test2.UserCotrol
{
    public partial class ucSearch : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void EntityDataSource1_Selecting(object sender, EntityDataSourceSelectingEventArgs e)
        {

        }

        protected void Search_Click(object sender, EventArgs e)
        {
            if(int.TryParse(PriceFrom.Text, out _))
            {
                PriceFrom.Text = "0";
            }
            if (int.TryParse(PriceTo.Text, out _))
            {
                PriceFrom.Text = "0";
            }
            if (NameSearch.Text.Length == 0)
                {
                NameSearch.Text = "0";
                }
            ListView1.DataBind();
        }
    }
}
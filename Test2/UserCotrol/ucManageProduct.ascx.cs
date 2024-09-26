using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Test2.UserCotrol
{
    public partial class ucManageProduct : System.Web.UI.UserControl
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindDropDownList();
            }
            
        }

        protected void EntityDataSource1_Selecting(object sender, EntityDataSourceSelectingEventArgs e)
        {

        }

        protected void EntityDataSource1_Updated(object sender, EntityDataSourceChangedEventArgs e)
        {
            Page.Master.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void BindDropDownList()
        {
            MyShopEntities context = new MyShopEntities();
            DropDownList.DataSource = (from c in context.Categories select c).ToList<Category>();
            DropDownList.DataTextField = "Name";
            DropDownList.DataValueField = "id";
            DropDownList.DataBind();
        }
        protected void ADD_Click(object sender, EventArgs e)
        {
            string path = "";
            if (FileUpload.HasFile)
            {
                path = FileUpload.FileName;
                FileUpload.SaveAs(Server.MapPath("~/img/Products/" + path));
            }
            MyShopEntities contex =     new MyShopEntities();
            Product product = new Product();
            product.Name = PRONAME.Text;
            product.Price =Convert.ToDecimal( PROPRICE.Text);
            product.Description = PRODESCRIPTION.Text;
            product.FilePath = path;
            product.Category_id = int.Parse(DropDownList.SelectedValue);

            contex.Products.Add(product);
            contex.SaveChanges();
            GridView1.DataBind();
            Page.Master.DataBind(); 

        }
    }
}
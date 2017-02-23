using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages.admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //this.BindGrid();
                LoadSubjects();
                TextBox7.TextMode = TextBoxMode.MultiLine;
                TextBox7.Rows = 10;
            }
        }


        

        private void LoadSubjects()
        {

        }



        protected void ddlSubject_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            String savePath = @"~\Uploads\";
            String fileName = "";
            if (FileUpload1.HasFile)
            {
                fileName = FileUpload1.FileName;
                savePath += fileName;
                FileUpload1.SaveAs(Server.MapPath(savePath));
            }

        }
    }

}

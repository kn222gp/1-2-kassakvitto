using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var recieptDiv = ReceiptDiv;
            recieptDiv.Visible = false;
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            var input = InputTextBox.Text;
            Model.Receipt receipt = new Model.Receipt();
            
        }
    }
}
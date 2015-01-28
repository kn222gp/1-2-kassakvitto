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
            InputTextBox.Focus();
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            double input = double.Parse(InputTextBox.Text);
            Model.Receipt receipt = new Model.Receipt(input);
            receipt.Calculate(input);


            TotalSumLabel.Text = string.Format("{0:c}", receipt.Subtotal);
            DiscountPercentLabel.Text = string.Format("{0:p}", receipt.DiscountRate);
            TotalDiscountLabel.Text = string.Format("{0:c}", receipt.MoneyOff);
            PayLabel.Text = string.Format("{0:c}", receipt.Total);

            ReceiptDiv.Visible = true;

 
        }
    }
}
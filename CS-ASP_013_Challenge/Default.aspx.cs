using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS_ASP_013_Challenge
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void purchaseButton_Click(object sender, EventArgs e)
        {
            //DECLARE

            double size = 0;
            double crust = 0;
            double toppings = 0;

            double pepperoni = 0;
            double onions = 0;
            double greenPep = 0;
            double redPep = 0;
            double anchovies = 0;

            //SIZE

            if (babyRadioButton.Checked)
            {
                size = 10.00;
            }
            else if (mamaRadioButton.Checked)
            {
                size = 13.00;
            }
            else if (papaRadioButton.Checked)
            {
                size = 16.00;
            }

            //CRUST 

            if (deepDishRadioButton.Checked)
            {
                crust = 2.00;
            }

            //TOPPINGS

            if (pepperoniCheckBox.Checked) { pepperoni = 1.50; }
            if (onionCheckBox.Checked) { onions = 0.75; }
            if (greenPepCheckBox.Checked) { greenPep = 0.50; }
            if (redPepCheckBox.Checked) { redPep = 0.75; }
            if (anchoviesCheckBox.Checked) { anchovies = 2.00; }

            toppings = pepperoni + onions + greenPep + redPep + anchovies;

            double toppingDiscount =
               (pepperoniCheckBox.Checked
                && ((greenPepCheckBox.Checked
                && anchoviesCheckBox.Checked)
                || (redPepCheckBox.Checked
                && onionCheckBox.Checked)))
                ? -2.00 : 0.00;

            double subtotal = size + crust + toppings + toppingDiscount;

            purchaseLabel.Text = "Total = $" + subtotal.ToString();

         }
    }
}
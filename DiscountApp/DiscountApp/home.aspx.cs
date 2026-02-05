using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiscountApp
{
    public partial class home : System.Web.UI.Page
    {

        // Food Prices
        double porkAdobo = 280.00;
        double sinigangBaboy = 350.00;
        double tapsilog = 80.00;
        double porkSisig = 150.00;
        double lechonKawali = 200.00;
        double porkBinagoongan = 300.00;
        double discount = 0.15;

        double price;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                noDiscountPrice.Text = "0.00";
                totalPrice.Text = "0.00";
            }
        }

        protected void buyBtn1_Click(object sender, EventArgs e)
        {
            price += porkAdobo;
            double total = price - (price * discount);
            noDiscountPrice.Text = price.ToString();
            totalPrice.Text = total.ToString();
        }

        protected void buyBtn2_Click(object sender, EventArgs e)
        {
            price += sinigangBaboy;
            noDiscountPrice.Text = price.ToString();
        }

        protected void buyBtn3_Click(object sender, EventArgs e)
        {
            price += tapsilog;
            noDiscountPrice.Text = price.ToString();
        }
        protected void buyBtn4_Click(object sender, EventArgs e)
        {
            price += porkSisig;
            noDiscountPrice.Text = price.ToString();
        }
        protected void buyBtn5_Click(object sender, EventArgs e)
        {
            price += lechonKawali;
            noDiscountPrice.Text = price.ToString();
        }
        protected void buyBtn6_Click(object sender, EventArgs e)
        {
            price += porkBinagoongan;
            noDiscountPrice.Text = price.ToString();
        }

    }
}
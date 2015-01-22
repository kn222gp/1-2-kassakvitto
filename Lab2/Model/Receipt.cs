using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab2.Model
{
    public class Receipt
    {
        private double _subtotal;

        public Receipt(double subtotal)
        {

        }   

        public double DiscountRate
        {
            get;

            private set;

        }
        public double MoneyOff
        {
            get;

            private set;
        }

        public double Subtotal
        {
            get
            {
                return Subtotal;
            }
            set
            {
                _subtotal = value;
                
            }
        }

        public double Total
        {
            get;

            private set;
        }

        public void Calculate (double subtotal)
        {
            _subtotal = subtotal;
        }

        
    }
}
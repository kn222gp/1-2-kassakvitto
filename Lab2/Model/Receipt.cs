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
                return _subtotal;
            }
            set
            {
                if(value < 0 )
                {
                    throw new ArgumentOutOfRangeException();
                }
                else
                {
                    _subtotal = value;
                }
                
            }
        }

        public double Total
        {
            get;

            private set;
        }

        public void Calculate (double subtotal)
        {
            Subtotal = subtotal;

            if(subtotal < 500)
            {
                DiscountRate = 0;
            }

            else if(subtotal < 1000)
            {
                DiscountRate = 0.05;
            }

            else if(subtotal < 5000)
            {
                DiscountRate = 0.10;
            }

            else
            {
                DiscountRate = 0.15;
            }

            MoneyOff = Subtotal * DiscountRate;
            Total = Subtotal - MoneyOff;

            
        }

        
    }
}
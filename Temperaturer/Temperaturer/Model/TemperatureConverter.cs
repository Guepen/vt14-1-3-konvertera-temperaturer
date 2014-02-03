using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Temperaturer.Model
{
    public class TemperatureConverter
    {
        public static int CelciusToFahrenheit(int degreesC)
        {
            return (int)(degreesC * 1.8 + 32);
        }

        public static int FahrenheitToCelcius(int degreesF)
        {
            return (int)((degreesF - 32) * 5/9);
        }
    }
}
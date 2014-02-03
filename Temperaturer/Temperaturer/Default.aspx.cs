using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Temperaturer.Model;

namespace Temperaturer
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Send_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                TempTable.Visible = true;
                var firstTemp = int.Parse(FirstTemp.Text);
                var secondTemp = int.Parse(SecondTemp.Text);
                var stageValue = int.Parse(ThirdTemp.Text);
                

               if (CF.Checked == true)
               {
                    TableHeaderRow thr = new TableHeaderRow();
                    
                    TableHeaderCell thc1 = new TableHeaderCell();
                    thc1.Text = "°C";

                    TableHeaderCell thc2 = new TableHeaderCell();
                    thc2.Text = "°F";

                    TempTable.Rows.Add(thr);
                    thr.Cells.Add(thc1);
                    thr.Cells.Add(thc2);

                    thr.CssClass = "tHead";
                   


                    for (int temp = firstTemp; temp < secondTemp; temp += stageValue)
                    {
                        TableRow row = new TableRow();
                        TempTable.Rows.Add(row);

                        TableCell cell = new TableCell();
                        TableCell cell2 = new TableCell();

                        cell.Text = temp.ToString();
                        cell2.Text = TemperatureConverter.CelciusToFahrenheit(temp).ToString();

                        TempTable.Rows.Add(row);
                        row.Cells.Add(cell);
                        row.Cells.Add(cell2);
                    }
               }

               else if (FC.Checked == true)
               {
                   TableHeaderRow thr = new TableHeaderRow();

                   TableHeaderCell thc1 = new TableHeaderCell();
                   thc1.Text = "°F";

                   TableHeaderCell thc2 = new TableHeaderCell();
                   thc2.Text = "°C";

                   TempTable.Rows.Add(thr);
                   thr.Cells.Add(thc1);
                   thr.Cells.Add(thc2);


                   for (int temp = firstTemp; temp < secondTemp; temp += stageValue)
                   {
                       TableRow row = new TableRow();
                       TempTable.Rows.Add(row);

                       TableCell cell = new TableCell();
                       TableCell cell2 = new TableCell();

                       cell.Text = temp.ToString();
                       cell2.Text = TemperatureConverter.FahrenheitToCelcius(temp).ToString();

                       TempTable.Rows.Add(row);
                       row.Cells.Add(cell);
                       row.Cells.Add(cell2);
                   }
               }

            }
        }
    }
}
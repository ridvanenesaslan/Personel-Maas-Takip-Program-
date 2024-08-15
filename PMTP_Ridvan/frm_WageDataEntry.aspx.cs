using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMTP_Ridvan
{
    public partial class frm_WageDataEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource3.InsertParameters["Empl_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource3.InsertParameters["Wage_Paid_Date"].DefaultValue = TextBox1.Text;
            SqlDataSource3.InsertParameters["Wage_Amount"].DefaultValue = TextBox3.Text;
            SqlDataSource3.InsertParameters["Wage_Commission"].DefaultValue = TextBox2.Text;
            SqlDataSource3.InsertParameters["Month_ID"].DefaultValue = DropDownList2.SelectedValue;

            int s = SqlDataSource3.Insert();

            if (s > 0)
            {
                Label1.Text = "Yeni Personel Maaş Verisi: <b>" + DropDownList1.SelectedItem + "</b><p>Başarı İle Eklendi";
                Label1.Visible = true;
            }
            else
                Label1.Text = "Yeni Personel Maaş Kaydı Başarısız. Verilerinizi Kontrol Ettikten Sonra Tekrar Deneyiniz!";
                Label1.Visible = true;
        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
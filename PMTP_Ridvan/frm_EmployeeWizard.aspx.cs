using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPMTP
{
    public partial class frm_EmployeeWizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            SqlDataSource1.InsertParameters["Empl_FName"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["Empl_LName"].DefaultValue = TextBox2.Text;
            SqlDataSource1.InsertParameters["Empl_BDate"].DefaultValue = TextBox3.Text;
            SqlDataSource1.InsertParameters["Empl_Start_Date"].DefaultValue = TextBox4.Text;
            SqlDataSource1.InsertParameters["Title_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource1.InsertParameters["Gender_ID"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlDataSource1.InsertParameters["Empl_Phone"].DefaultValue = TextBox5.Text;
            SqlDataSource1.InsertParameters["Empl_Cell"].DefaultValue = TextBox6.Text;
            SqlDataSource1.InsertParameters["Empl_Email"].DefaultValue = TextBox7.Text;
            SqlDataSource1.InsertParameters["Dept_ID"].DefaultValue = DropDownList2.SelectedValue; ;
            SqlDataSource1.InsertParameters["Empl_Address"].DefaultValue = TextBox8.Text;
            SqlDataSource1.InsertParameters["Empl_City"].DefaultValue = DropDownList3.SelectedValue;
            SqlDataSource1.InsertParameters["Empl_Province"].DefaultValue = DropDownList4.SelectedValue;

            bool d = false;
            if (CheckBox1.Checked == true) 
            {
                d=true;
            }
            SqlDataSource1.InsertParameters["Is_Empl_Active"].DefaultValue = d.ToString();

            int s = SqlDataSource1.Insert();

            if (s > 0)
            {
                Label2.Text = "Yeni Personel Bilgisi: <b>" + TextBox2.Text + "</b><p>Başarı ile Eklendi";
                Label2.Visible = true;
            }
            else
                Label2.Text = "Yeni Personel Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";
                Label2.Visible = true;
        }


        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (e.NextStepIndex == Wizard1.WizardSteps.Count - 2)
            {
                Label1.Text = "<p>Adı: " + TextBox1.Text + "</p><p>Soyadı: " + TextBox2.Text + "</p><p>DTarihi: " + TextBox3.Text + "</p><p>Giriş Tarihi: " + TextBox4.Text
                    + "</p><p>Ünvanı: " + DropDownList1.SelectedItem + "</p><p>Tel: " + TextBox5.Text + "</p><p>Cep: " + TextBox6.Text + "</p><p>Email: " + TextBox7.Text + "</p><p>Bölümü: " + DropDownList2.SelectedItem;
                //+ "</p><p>Kuruluş Tarihi: " + Calendar1.SelectedDate.ToShortDateString()
            }
        }
    }
}
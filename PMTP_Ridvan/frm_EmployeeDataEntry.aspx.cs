using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMTP_Ridvan
{
    public partial class frm_EmployeeDataEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource5.InsertParameters["Empl_FName"].DefaultValue = TextBox1.Text;
            SqlDataSource5.InsertParameters["Empl_LName"].DefaultValue = TextBox2.Text;
            SqlDataSource5.InsertParameters["Empl_BDate"].DefaultValue = TextBox3.Text;
            SqlDataSource5.InsertParameters["Empl_Start_Date"].DefaultValue = TextBox4.Text;
            SqlDataSource5.InsertParameters["Empl_Phone"].DefaultValue = TextBox5.Text;
            SqlDataSource5.InsertParameters["Empl_Email"].DefaultValue = TextBox6.Text;
            SqlDataSource5.InsertParameters["Empl_Address"].DefaultValue = TextBox7.Text;
            SqlDataSource5.InsertParameters["Empl_Cell"].DefaultValue = TextBox8.Text;
            SqlDataSource5.InsertParameters["Dept_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource5.InsertParameters["Title_ID"].DefaultValue = DropDownList2.SelectedValue;
            SqlDataSource5.InsertParameters["Empl_City"].DefaultValue = DropDownList3.SelectedValue;
            SqlDataSource5.InsertParameters["Empl_Province"].DefaultValue = DropDownList4.SelectedValue;
            SqlDataSource5.InsertParameters["Gender_ID"].DefaultValue = RadioButtonList1.SelectedValue;

            bool d = false;
            if  (CheckBox1.Checked == true)
            {
                d = true;
            }
            SqlDataSource5.InsertParameters["Is_Empl_Active"].DefaultValue = d.ToString();

            int s = SqlDataSource5.Insert();

            if (s > 0)
            {
                Label1.Text = "Yeni Personel Bilgisi: <b>" + TextBox1.Text + " " + TextBox2.Text + "</b><p>Başarı İle Eklendi";
                Label1.Visible = true;
            }
            else
                Label1.Text = "Yeni Personel Girişi Başarısız. Verilerinizi Kontrol Ettikten Sonra Tekrar Deneyiniz!";
                Label1.Visible = true;
        }
    }
}
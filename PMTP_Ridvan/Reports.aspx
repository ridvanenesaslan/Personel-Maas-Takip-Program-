<%@ Page Title="Raporlar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="Reports.aspx.cs" Inherits="PMTP_Ridvan.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center" colspan="3" style="height: 19px; color: #CC0000; font-size: xx-large"><strong>PMTP Raporlar</strong></td>
        </tr>
        <tr>
            <td style="height: 26px" class="text-right">
                <asp:Button ID="Button1" runat="server" Text="Bölümlere Göre Personel Listesi" Width="239px" OnClick="Button1_Click" OnClientClick="target='_blank'" PostBackUrl="~/rpt_EmployeesByDepartment.aspx" style="color: #0033CC" />
            </td>
            <td style="height: 26px">
                <asp:Button ID="Button4" runat="server" Text="Personele Göre Maaşlar Listesi" Width="226px" OnClientClick="target='_blank'" PostBackUrl="~/rpt_WagesByEmployee.aspx" style="color: #0033CC" />
            </td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td class="text-right" style="height: 53px">
                <asp:Button ID="Button2" runat="server" Text="Personele Göre Yıllık Maaş Grafiği" Width="239px" OnClick="Button1_Click" OnClientClick="target='_blank'" PostBackUrl="~/rpt_EmployeeWagesChart.aspx" style="color: #0033CC" />
            </td>
            <td style="height: 53px">
                <asp:Button ID="Button5" runat="server" Text="Personel İletişim Raporu" Width="225px" OnClientClick="target='_blank'" PostBackUrl="~/rpt_EmployeeCommunication.aspx" style="color: #0033CC" />
            </td>
            <td style="height: 53px"></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

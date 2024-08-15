<%@ Page Title="Formlar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="Forms.aspx.cs" Inherits="PMTP_Ridvan.Forms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 1198px">
    <tr>
        <td class="text-center" colspan="3" style="height: 19px; color: #000000; font-size: xx-large"><strong>&nbsp;<span style="color: #CC0000">PMTP Formlar</span></strong></td>
    </tr>
    <tr>
        <td style="height: 41px; width: 616px;" class="text-right">
            <asp:Button ID="Button1" runat="server" Text="Personel Veri Giriş Formu" Width="239px" PostBackUrl="~/frm_EmployeeDataEntry.aspx" OnClientClick="target='_blank'" ForeColor="#0033CC" />
        </td>
        <td style="height: 41px">
            <asp:Button ID="Button4" runat="server" Text="Maaş Veri Giriş Formu" Width="214px" OnClick="Button4_Click" OnClientClick="target='_blank'" PostBackUrl="~/frm_WageDataEntry.aspx" ForeColor="#0033CC" />
        </td>
        <td style="height: 41px; width: 2px;"></td>
    </tr>
    <tr>
        <td class="text-right" style="width: 616px; height: 45px;">
            <asp:Button ID="Button2" runat="server" Text="Personel Veri Güncelleme Formu" Width="239px" OnClientClick="target='_blank'" PostBackUrl="~/frm_EmployeeUptade.aspx" ForeColor="#0033CC" />
        </td>
        <td style="height: 45px">
            <asp:Button ID="Button5" runat="server" Text="Maaş Veri Güncelleme Formu" Width="214px" OnClick="Button5_Click" OnClientClick="target='_blank'" PostBackUrl="~/frm_Wage_Update.aspx" ForeColor="#0033CC" />
        </td>
        <td style="height: 45px; width: 2px"></td>
    </tr>
    <tr>
        <td class="text-right" style="width: 616px; height: 43px;">
            <asp:Button ID="Button3" runat="server" Text="Personel Wizard Formu" Width="239px" OnClientClick="target='_blank'" PostBackUrl="~/frm_EmployeeWizard.aspx" ForeColor="#0033CC" />
        </td>
        <td style="height: 43px">
            <asp:Button ID="Button6" runat="server" Text="Bölüm Veri Giriş Formu" Width="214px" OnClick="Button6_Click" OnClientClick="target='_blank'" PostBackUrl="~/frm_Departments.aspx" ForeColor="#0033CC" />
        </td>
        <td style="height: 43px; width: 2px"></td>
    </tr>
    <tr>
        <td style="height: 20px; width: 616px;">&nbsp;</td>
        <td style="height: 20px"></td>
        <td style="height: 20px; width: 2px;"></td>
    </tr>
    <tr>
        <td style="width: 616px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 2px">&nbsp;</td>
    </tr>
</table>
</asp:Content>

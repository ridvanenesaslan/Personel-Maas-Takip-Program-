<%@ Page Language="C#" AutoEventWireup="true" Codefile="rpt_EmployeeWagesChart.aspx.cs" Inherits="PMTP_Ridvan.rpt_EmployeeWagesChart" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">
                    <h1><strong>Personel Maaşları Toplam Grafiği</strong></h1>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="407px" Width="629px">
                        <series>
                            <asp:Series Name="Series1" XValueMember="Empl_Name" YValueMembers="Total">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT        
dbo.tbl_Employees.Empl_Name,
SUM(dbo.tbl_EmployeeWages.Wage_Total)
AS Total, YEAR(dbo.tbl_EmployeeWages.Wage_Paid_Date)
AS Year FROM dbo.tbl_Employees 
INNER JOIN
dbo.tbl_EmployeeWages ON dbo.tbl_Employees.Empl_ID = dbo.tbl_EmployeeWages.Empl_ID
GROUP BY
dbo.tbl_Employees.Empl_Name,YEAR(dbo.tbl_EmployeeWages.Wage_Paid_Date)
"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>

                    <asp:Button ID="Button3" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />

                    </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>

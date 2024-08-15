<%@ Page Language="C#" AutoEventWireup="true" Codefile="rpt_EmployeeCommunication.aspx.cs" Inherits="PMTP_Ridvan.rpt_EmployeeCommunication" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <h1><strong>Personel İletişim Raporu</strong></h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        
                        <HeaderTemplate>
                        <tr style ="background-color:seagreen; color:azure;">
                            <td style="width:50px">ID</td>
                            <td style="width:250px">İsim</td>
                            <td style="width:150px">Tel</td>
                            <td style="width:150px">Cep</td>
                            <td style="width:250px">Email</td>
                        </tr>
                        <tr></tr>
                        </HeaderTemplate>

                        <ItemTemplate>
                            <tr style ="background-color: sandybrown;">
                            <td><%# Eval("Empl_ID") %></td>
                            <td><%# Eval("Empl_Name") %></td>
                            <td><%# Eval("Empl_Phone") %></td>
                            <td><%# Eval("Empl_Cell") %></td>
                            <td><%# Eval("Empl_Email") %></td>
                        </tr>
                        </ItemTemplate>

                        <AlternatingItemTemplate>
                        <tr style ="background-color:lightblue;">
                            <td><%# Eval("Empl_ID") %></td>
                            <td><%# Eval("Empl_Name") %></td>
                            <td><%# Eval("Empl_Phone") %></td>
                            <td><%# Eval("Empl_Cell") %></td>
                            <td><%# Eval("Empl_Email") %></td>
                        </tr>
                        </AlternatingItemTemplate>
                            </asp:Repeater>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Phone], [Empl_Cell], [Empl_Email], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

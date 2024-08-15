<%@ Page Language="C#" AutoEventWireup="true" Codefile="frm_EmployeeUptade.aspx.cs" Inherits="PMTP_Ridvan.frm_EmployeeUptade" %>

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
            height: 23px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 364px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">
                    <h1 class="auto-style3">Personel Veri Güncelleme</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Personel Seçiniz:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Empl_Name" DataValueField="Empl_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource1" Height="50px" Width="726px">
                        <Fields>
                            <asp:BoundField DataField="Empl_ID" HeaderText="Empl_ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                            <asp:BoundField DataField="Empl_FName" HeaderText="Empl_FName" SortExpression="Empl_FName" />
                            <asp:BoundField DataField="Empl_LName" HeaderText="Empl_LName" SortExpression="Empl_LName" />
                            <asp:BoundField DataField="Empl_BDate" HeaderText="Empl_BDate" SortExpression="Empl_BDate" />
                            <asp:BoundField DataField="Empl_Start_Date" HeaderText="Empl_Start_Date" SortExpression="Empl_Start_Date" />
                            <asp:BoundField DataField="Empl_Left_Date" HeaderText="Empl_Left_Date" SortExpression="Empl_Left_Date" />
                            <asp:BoundField DataField="Empl_Phone" HeaderText="Empl_Phone" SortExpression="Empl_Phone" />
                            <asp:BoundField DataField="Empl_Cell" HeaderText="Empl_Cell" SortExpression="Empl_Cell" />
                            <asp:BoundField DataField="Empl_Email" HeaderText="Empl_Email" SortExpression="Empl_Email" />
                            <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" SortExpression="Dept_ID" />
                            <asp:BoundField DataField="Title_ID" HeaderText="Title_ID" SortExpression="Title_ID" />
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                    </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT Empl_ID, Empl_FName, Empl_LName, Empl_BDate, Empl_Start_Date, Empl_Left_Date, Empl_Address, Empl_City, Empl_Province, Empl_Phone, Empl_Cell, Dept_ID, Gender_ID, Title_ID, Empl_Email, Empl_TCN, Empl_CV, Empl_CV_File, Empl_CV_Web, Entered_By, Empl_Name FROM tbl_Employees WHERE (Empl_ID = @Empl_ID)" UpdateCommand="UPDATE tbl_Employees SET Empl_FName = @Empl_FName, Empl_LName = @Empl_LName, Empl_BDate = @Empl_BDate, Empl_Start_Date = @Empl_Start_Date, Empl_Left_Date = @Empl_Left_Date, Empl_Phone = @Empl_Phone, Empl_Cell = @Empl_Cell, Dept_ID = @Dept_ID, Title_ID = Title_ID, Empl_Email = @Empl_Email WHERE (Empl_ID = @Empl_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue"/>
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Empl_FName" />
                            <asp:Parameter Name="Empl_LName" />
                            <asp:Parameter Name="Empl_BDate" type="DateTime"/>
                            <asp:Parameter Name="Empl_Start_Date" type="DateTime"/>
                            <asp:Parameter Name="Empl_Left_Date" type="DateTime"/>
                            <asp:Parameter Name="Empl_Phone" />
                            <asp:Parameter Name="Empl_Cell" />
                            <asp:Parameter Name="Dept_ID" />
                            <asp:Parameter Name="Empl_Email" />
                            <asp:Parameter Name="Empl_ID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <div>
                        <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
        </div>
    </form>
</body>
</html>

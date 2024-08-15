<%@ Page Language="C#" AutoEventWireup="true" Codefile="frm_EmployeeDataEntry.aspx.cs" Inherits="PMTP_Ridvan.frm_EmployeeDataEntry" %>

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
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            width: 171px;
        }
        .auto-style5 {
            width: 171px;
        }
        .auto-style6 {
            height: 23px;
            width: 284px;
        }
        .auto-style7 {
            width: 284px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="4">
                    <h1><strong>Personel Veri Giriş Formu</strong></h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style7">Adı:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderStyle="Double"></asp:TextBox>
                </td>
                <td class="auto-style5">Soyadı:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderStyle="Double"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Doğum Tarihi</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" BorderColor="Black" BorderStyle="Double"></asp:TextBox>
                </td>
                <td class="auto-style5">İşe Giriş Tarihi:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" BorderColor="Black" BorderStyle="Double"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Cinsiyeti:</td>
                <td class="auto-style5">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="1">Erkek</asp:ListItem>
                        <asp:ListItem Value="2">Kadın</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style5">Aktif Mi:</td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Bölümü:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Dept_Name" DataValueField="Dept_ID">
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">Ünvanı:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="LK_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Cep Telefonu:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" BorderColor="Black" BorderStyle="Double"></asp:TextBox>
                </td>
                <td class="auto-style4">İş Telefonu:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox8" runat="server" BorderColor="Black" BorderStyle="Double" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Email:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Email" BorderColor="Black" BorderStyle="Double"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Adres:</td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox7" runat="server" Width="790px" BorderColor="Black" BorderStyle="Double"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Kenti:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="City" DataValueField="City">
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">İl:</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Province" DataValueField="Province">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                </td>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [LK_ID], [Title] FROM [tbl_Lookups]
WHERE Title is not null"></asp:SqlDataSource>
                </td>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [City] FROM [tbl_Lookups]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Province] FROM [tbl_Lookups]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" InsertCommand="INSERT INTO tbl_Employees(Empl_FName,Empl_LName,Empl_BDate,Empl_Start_Date, Gender_ID,Is_Empl_Active, Dept_ID,Title_ID,Empl_Cell,Empl_Email,Empl_Address,Empl_City,Empl_Province) VALUES (@Empl_FName,@Empl_LName,@Empl_BDate,@Empl_Start_Date,@Gender_ID,@Is_Empl_Active,@Dept_ID,@Title_ID,@Empl_Cell,@Empl_Email,@Empl_Address,@Empl_City,@Empl_Province)" SelectCommand="SELECT * FROM [tbl_Employees]">
                        <InsertParameters>
                            <asp:Parameter Name="Empl_FName" />
                            <asp:Parameter Name="Empl_LName" />
                            <asp:Parameter Name="Empl_BDate" />
                            <asp:Parameter Name="Empl_Start_Date" />
                            <asp:Parameter Name="Gender_ID" />
                            <asp:Parameter Name="Is_Empl_Active" />
                            <asp:Parameter Name="Dept_ID" />
                            <asp:Parameter Name="Title_ID" />
                            <asp:Parameter Name="Empl_Cell" />
                            <asp:Parameter Name="Empl_Email" />
                            <asp:Parameter Name="Empl_Address" />
                            <asp:Parameter Name="Empl_City" />
                            <asp:Parameter Name="Empl_Province" />
                            <asp:Parameter Name="Empl_Phone" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="Veriyi Kaydet" OnClick="Button1_Click" style="width: 118px" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" Text="Formu Kapat" OnClientClick="window.close()" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>

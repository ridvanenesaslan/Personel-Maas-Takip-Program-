<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="frm_EmployeeWizard.aspx.cs" Inherits="WebPMTP.frm_EmployeeWizard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Personel Veri Giriş Sihirbazı</title>
    <style type="text/css">

        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 253px;
        }
        .auto-style5 {
            width: 253px;
            height: 33px;
        }
        .auto-style6 {
            height: 33px;
        }
        .auto-style8 {
            width: 209px;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style12 {
            width: 95px;
        }
        .auto-style13 {
            width: 94px;
        }
        .auto-style14 {
            color: #FF0000;
        }
        </style>
    </head>
<body>
<form id="form1" runat="server">
<div>
<table class="auto-style3">
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style10">
                    <strong>Personel&nbsp; Veri Giriş Sihirbazı</strong></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" 
                                        InsertCommand="INSERT INTO tbl_Employees (Empl_FName, Empl_LName, Empl_BDate, Gender_ID, Title_ID, Dept_ID, Empl_Start_Date, Is_Empl_Active, Empl_Cell, Empl_Phone, Empl_Email, Empl_Address, Empl_City, Empl_Province)
VALUES (@Empl_FName, @Empl_LName, @Empl_BDate, @Gender_ID, @Title_ID, @Dept_ID, @Empl_Start_Date, @Is_Empl_Active, @Empl_Cell, @Empl_Phone, @Empl_Email, @Empl_Address, @Empl_City, @Empl_Province)" 
                                        SelectCommand="SELECT * FROM [tbl_Employees]">
                        <InsertParameters>
                            <asp:Parameter Name="Empl_FName" />
                            <asp:Parameter Name="Empl_LName" />
                            <asp:Parameter Name="Empl_BDate" />
                            <asp:Parameter Name="Gender_ID" />
                            <asp:Parameter Name="Title_ID" />
                            <asp:Parameter Name="Dept_ID" />
                            <asp:Parameter Name="Empl_Start_Date" />
                            <asp:Parameter Name="Is_Empl_Active" />
                            <asp:Parameter Name="Empl_Cell" />
                            <asp:Parameter Name="Empl_Phone" />
                            <asp:Parameter Name="Empl_Email" />
                            <asp:Parameter Name="Empl_Address" />
                            <asp:Parameter Name="Empl_City" />
                            <asp:Parameter Name="Empl_Province" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    </td>
                <td class="auto-style6">
                    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" HeaderText="Personel Veri Giriş Formu" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" Width="474px" Height="203px" CssClass="auto-style11">
                        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
                        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                        <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                        <StartNavigationTemplate>
                            <asp:Button ID="StartNextButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Sonraki" />
                        </StartNavigationTemplate>
                        <StepNavigationTemplate>
                            <asp:Button ID="StepPreviousButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Önceki" />
                            <asp:Button ID="StepNextButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Sonraki" />
                        </StepNavigationTemplate>
                        <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
                        <WizardSteps>
                            <asp:WizardStep runat="server" title="Kişisel Veriler">
                                    <table class="auto-style3">
                                    <tr>
                                        <td class="auto-style13">Adı:</td> 
                                        <td class="auto-style8"><asp:TextBox ID="TextBox1" runat="server" Width="132px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style14" ErrorMessage="Personel Adını Giriniz..."></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Soyadı:</td>
                                        <td class="auto-style8"><asp:TextBox ID="TextBox2" runat="server" Width="130px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style14" ErrorMessage="Personel Soyadını Giriniz..."></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Doğum Tarihi:</td>
                                        <td class="auto-style8"><asp:TextBox ID="TextBox3" runat="server" Width="110px" TextMode="Date"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Giriş Tarihi:</td>
                                        <td class="auto-style8"><asp:TextBox ID="TextBox4" runat="server" Width="220px" TextMode="Date"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Ünvanı:</td>
                                            <td class="auto-style8">
                                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="LK_ID" Height="16px" Width="132px">
                                                </asp:DropDownList>
                                        </td>
                                    </tr>
                                        <tr>
                                            <td class="auto-style13">Cinsiyeti</td>
                                            <td class="auto-style8">
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style31" RepeatDirection="Horizontal" Width="201px">
                                                    <asp:ListItem Selected="True" Value="1">Erkek</asp:ListItem>
                                                    <asp:ListItem Value="2">Kadın</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                    </table>  
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" title="İletişim Verileri">
                                <table class="auto-style3">
                                <tr>
                                    <td class="auto-style10">Tel:</td>
                                    <td class="auto-style8"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">Cep:</td>
                                    <td class="auto-style8"><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
           
                                </tr>
                                <tr>
                                    <td class="auto-style10">Email:</td>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">Bölümü:</td>
                                    <td class="auto-style8">
                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Dept_Name" DataValueField="Dept_ID" Height="16px" Width="132px">
                                        </asp:DropDownList>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style10">Aktif mi?</td>
                                        <td class="auto-style8">
                                            <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Adres Verileri">
                                <table class="auto-style3">
                                    <tr>
                                        <td class="auto-style12">Adres</td>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">Kenti</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="City" DataValueField="City" Height="16px" Width="132px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">İli</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="Province" DataValueField="Province" Height="16px" Width="132px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Onay">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                <br />
                                <br />
                                <br />
                                Tüm Veri Girişleri doğruysa Son butonuna basınız...
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" StepType="Complete" Title="Son">
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [LK_ID], [Title] FROM [tbl_Lookups]
WHERE Title is not NULL"></asp:SqlDataSource>
                    </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [City] FROM [tbl_Lookups]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Province] FROM [tbl_Lookups]"></asp:SqlDataSource>
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                    </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Sonuç mesajı..." CssClass="auto-style14" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
            <asp:Button ID="Button1" runat="server" Text="Sayfayı Kapat" Width="181px" OnClientClick="window.close()" />
                </td>
            </tr>
</table>
</div>
</form>
</body>
</html>

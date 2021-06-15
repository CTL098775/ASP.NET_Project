<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inquire1.aspx.cs" Inherits="Inquire1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        
        body {
            background: url(img/new2.jpg) center center fixed no-repeat;
            background-size: cover;
            font-family:"微軟正黑體";
        }
        
        .auto-style2{
            width: 528px;
            margin :40px auto;
            font-size:18pt;
        }

        .auto-style3{
            width: 500px;
            margin :40px auto;
            font-size:18pt;
            text-align :left ;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="ImageButton2" runat="server" Height="80px" ImageUrl="~/img/logo.png" Width="273px" PostBackUrl="~/index.aspx" CausesValidation="false"/>
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td >
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        身份證號碼：<asp:TextBox ID="TextBox_id" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_id" ErrorMessage="請輸入身份證號碼" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        出生年月日：<asp:TextBox ID="TextBox_day" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_day" EnableViewState="False" ErrorMessage="請輸入出生年月日" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        科別查詢：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="43px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="請選擇科別"></asp:ListItem>
                <asp:ListItem>一般醫學內科</asp:ListItem>
                <asp:ListItem>精神科</asp:ListItem>
            </asp:DropDownList>
                        <br />
                        <br />
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" Text="查詢" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" Font-Size="Medium" ForeColor="#0066FF" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" PostBackUrl="~/index.aspx" Text="回網路掛號主頁面" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" Font-Size="Medium" ForeColor="#0066FF" CausesValidation="false" />
                    </td>
                </tr>
            </table>
           
        </div>
    </form>
</body>
</html>

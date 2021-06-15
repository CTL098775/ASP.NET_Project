<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Second.aspx.cs" Inherits="Second" %>

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
        table{
             background-color :antiquewhite ;
             
         }
        .auto-style2 {
            width: 700px;
            margin :40px auto;
            font-size:18pt;
            border :2px black solid ;
        }

        .auto-style3 {
            width: 700px;
            margin :40px auto;
            font-size:18pt;
            text-align:center;
            height: 36px;
        }

        
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <asp:ImageButton ID="ImageButton2" runat="server" Height="80px" ImageUrl="~/img/logo.png" Width="273px" PostBackUrl="~/index.aspx" />
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td>本頁只適用複診病患，如未曾在本院掛過號，請至【初診掛號】<br />
            您目前預約掛號：
            <asp:Label ID="Label1" runat="server"></asp:Label>
            &nbsp;<br />
            預約掛號序號：<asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;號<br />
                        <br />
                        身份證號碼：<br />
            <asp:TextBox ID="TextBox_id" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_id" ErrorMessage="請輸入身份證號碼" ForeColor="Red" ValidationExpression="[a-zA-Z]\d{9}"></asp:RegularExpressionValidator>
                        <br />
                        <br />
            出生年月日<asp:TextBox ID="TextBox_day" runat="server" Width="208px" CssClass="auto-style1"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_day" ErrorMessage="請輸入出生年月日" ForeColor="Red" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
                        <br />
                        (西元年+月份+日期 
                        <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="ex:20210615"></asp:Label>
                        )<br />
                        <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                        <br />
            </td>
            </tr>
                <tr>
                <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" Text="確定掛號" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" Font-Size="Medium" ForeColor="#0066FF" CausesValidation="false" OnClick="Button1_Click" style="height: 26px" />
                        <asp:Button ID="Button2" runat="server" PostBackUrl="~/index.aspx" Text="回網路掛號主頁面" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" Font-Size="Medium" ForeColor="#0066FF" CausesValidation="false" />
                        <asp:Button ID="Button4" runat="server" Text="返回" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" Font-Size="Medium" ForeColor="#0066FF" OnClick="Button4_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

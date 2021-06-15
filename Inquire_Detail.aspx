<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inquire_Detail.aspx.cs" Inherits="Inquire_Detail" %>

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
        table {
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
        }

        .auto-style2 {
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            width: 24%;
            margin: 40px auto;
            font-size: 20px;
            height: 50px;
            text-align:center ;
        }
        

        .auto-style4 {
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            width: 24%;
            margin: 40px auto;
            font-size: 20px;
            height: 150px;
            text-align:center ;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="80px" ImageUrl="~/img/logo.png" Width="273px" PostBackUrl="~/index.aspx" />
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style2">科別</td>
                    <td  class="auto-style2">
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">醫師</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">目前看診號碼</td>
                    <td class="auto-style2">下一號</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label7" runat="server" Font-Size="32pt">1</asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="Label8" runat="server" Font-Size="32pt">2</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style2">
                        <asp:Button ID="Button2" runat="server" PostBackUrl="~/index.aspx" Text="回網路掛號主頁面" Font-Size="Large" ForeColor="#0066FF" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" />
                    </td>
                </tr>
            </table>
            <br />
            
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inquire_Cancel.aspx.cs" Inherits="Inquire_Cancel" %>

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
            text-align :center ;
            
        }
        .auto-style1 {
            height: 20px;
            width: 266px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            height :50px;
        }
        .auto-style2 {
            height: 20px;
            width: 262px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            height: 50px;
        }

        .auto-style5 {
            width: 23%;
            
            margin :40px auto;
            font-size :20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="80px" ImageUrl="~/img/logo.png" Width="273px" PostBackUrl="~/index.aspx" />
            <br />
            <br />
            <br />
            <table class="auto-style5">
                <tr>
                    <td class="auto-style2">預約日期時間</td>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">預約科別</td>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                    </td>
                    
                </tr>
               <tr>
                    <td class="auto-style2">預約醫師</td>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">預約序號</td>
                    <td class="auto-style1">
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2">
            <asp:Button ID="Button1" runat="server" Text="取消掛號" Font-Size="Large" BackColor="#CEEDFF" ForeColor="#0066FF" BorderColor="#2894FF" BorderStyle="Solid" OnClick="Button1_Click" Visible="False" />
                        <asp:Button ID="Button2" runat="server" PostBackUrl="~/index.aspx" Text="回網路掛號主頁面" Font-Size="Large" BackColor="#CEEDFF" ForeColor="#0066FF" BorderColor="#2894FF" BorderStyle="Solid" />
                    </td>
                    
                        
                   
                    
                </tr>
            </table>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;</div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Division_Doctor.aspx.cs" Inherits="Division_Doctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin :auto;
            width: 400px;
            height: 100px;
            text-align :center;
            font-size :30px;
            
        }
        body {
            background: url(img/new2.jpg) center center fixed no-repeat;
            background-size: cover;
            font-family:"微軟正黑體";
        }       
        .auto-style2 {
            height: 50px;
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
            
            <table class="auto-style1">
                <tr>
                    <td colspan="2"class="auto-style1">網路掛號</td>
                </tr>
                <tr>
                    <td>
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Hospital_Division.aspx" Text="依科別資料掛號" Font-Size="X-Large" BackColor="#CEEDFF" ForeColor="#0066FF" BorderColor="#2894FF" BorderStyle="Solid" OnClick="Button1_Click" />

                    </td>
                    <td >
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/Hospital_Doctor.aspx" Text="依醫師資料掛號" Font-Size="X-Large" BackColor="#CEEDFF" ForeColor="#0066FF" BorderColor="#2894FF" BorderStyle="Solid" OnClick="Button2_Click" />
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2" class="auto-style2">

                        <asp:Button ID="Button3" runat="server" Text="返回" Font-Size="Large" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" OnClick="Button3_Click" />

                    </td>

                </tr>


            </table>
            <br />
        </div>
    </form>
</body>
</html>

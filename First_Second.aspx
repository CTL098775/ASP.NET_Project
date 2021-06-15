<%@ Page Language="C#" AutoEventWireup="true" CodeFile="First_Second.aspx.cs" Inherits="First_Second" %>

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
            <br />
            <br />
            <br />
        </div>
            <table class="auto-style1">
                 <tr>
                    <td>
            <asp:Button ID="Button3" runat="server" Text="初診" Font-Size="X-Large" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" OnClick="Button3_Click" />

                    </td>
                    <td >
            <asp:Button ID="Button4" runat="server" Text="複診" Font-Size="X-Large" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" OnClick="Button4_Click" />
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2" class="auto-style2">

                        <asp:Button ID="Button1" runat="server" Text="返回" Font-Size="Large" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" OnClick="Button1_Click" />

                    </td>

                </tr>
            </table>
    </form>
</body>
</html>

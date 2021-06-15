<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin : 0 auto;
            width: 413px;
            height: 400px;
            text-align :center;
            font-size :50px;
        }
        body {
            background: url(img/new2.jpg) center center fixed no-repeat;
            background-size: cover;
            font-family:"微軟正黑體";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <script>
        alert("COVID-19疫情重要公告\n看病及陪病民眾請配戴口罩，並攜帶身份證及健保卡");
        </script>
        <div>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="80px" ImageUrl="~/img/logo.png" Width="273px" PostBackUrl="~/index.aspx" />
            <table class="auto-style1">
                <tr>
                    <td>
            <asp:Label ID="Label1" runat="server" Text="歡迎進入黑心醫院掛號系統" Font-Bold="True" ForeColor="#257039" ClientIDMode="Static" Font-Size="XX-Large" ></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Button ID="Button1" runat="server" Text="我要掛號" Font-Size="X-Large" ForeColor="#0066FF" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Button ID="Button2" runat="server" Text="查詢掛號" Font-Size="X-Large" ForeColor="#0066FF" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Button ID="Button3" runat="server" Text="取消掛號" Font-Size="X-Large" ForeColor="#0066FF" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" OnClick="Button3_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Button ID="Button4" runat="server" Text="查詢目前進度" Font-Size="X-Large" ForeColor="#0066FF" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" OnClick="Button4_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>

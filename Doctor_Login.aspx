<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor_Login.aspx.cs" Inherits="Doctor_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        body {
            background: url(img/new1.jpg) center center fixed no-repeat;
            background-size: cover;
            font-family:"微軟正黑體";
        }

        .auto-style1 {
            width: 34%;
            margin :100px auto ;
            font-size :20px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="80px" ImageUrl="~/img/logo.png" Width="273px" PostBackUrl="~/Doctor_Login.aspx" />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td>醫師編號 
            <asp:TextBox ID="TextBox_id" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_id" ErrorMessage="請輸入醫師編號" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
            密碼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
            <asp:TextBox ID="TextBox_psd" runat="server" MaxLength="7" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_psd" ErrorMessage="請輸入密碼" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="登入" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" Font-Size="Large"  CausesValidation="false" OnClick="Button1_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:Button ID="Button2" runat="server" Text="取消" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" CausesValidation="false" Font-Size="Large"/>
                    </td>
                    
                </tr>
               
            </table>
            <br />
            &nbsp;<br />
            <br />
            <br />
            <br />
            <br />
&nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>

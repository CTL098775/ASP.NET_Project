<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hospital_Doctor.aspx.cs" Inherits="Hospital_Doctor" %>

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
                    <td colspan="2"class="auto-style1">請選擇要看診的醫師</td>
                </tr>
                
                 <tr>
                   <td>

                       <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="一般醫學內科"></asp:Label>

                   </td>
                   <td>

                       <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="精神科"></asp:Label>

                   </td>
                </tr>
                 
                   <tr>
                   <td>

            <asp:Button ID="Button1" runat="server" Text="許夢璇 醫師" Font-Size="Large" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" OnClick="Button1_Click" />

                   </td>
                   <td>

            <asp:Button ID="Button5" runat="server" Text="江卉玲 醫師" Font-Size="Large" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" OnClick="Button5_Click" />

                   </td>
                </tr>

                <tr>
                    <td>
            <asp:Button ID="Button2" runat="server" Text=" 董葵庭 醫師 " Font-Size="Large" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" OnClick="Button2_Click" />

                    </td>
                    <td >
            <asp:Button ID="Button6" runat="server" Text="吳沛權 醫師 " Font-Size="Large" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" OnClick="Button6_Click" />
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2" class="auto-style2" >

                        <asp:Button ID="Button3" runat="server" Text="返回" Font-Size="Large" PostBackUrl="~/Division_Doctor.aspx" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" OnClick="Button3_Click" />

                    </td>

                </tr>
            </table><br />
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

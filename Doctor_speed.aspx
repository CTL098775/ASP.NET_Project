<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor_speed.aspx.cs" Inherits="Doctor_speed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="refresh" content="5"/>
    <title></title>
    <style type="text/css">
         body {
            background: url(img/new1.jpg) center center fixed no-repeat;
            background-size: cover;
            font-family:"微軟正黑體";
        }
        .auto-style1 {
            margin :auto;
            width: 400px;
            height: 127px;
            text-align :center;
            
        }
        .auto-style2 {
            margin :auto;
            width: 400px;
            height: 300px;
            text-align :center;
            
        }
        table{
             background-color :antiquewhite ;
         }

        td {
            border-top: 2px black solid;
            border-bottom: 2px black solid;
            border-left: 2px black solid;
            border-right: 2px black solid;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:ImageButton ID="ImageButton1" runat="server" Height="80px" ImageUrl="~/img/logo.png" Width="273px" PostBackUrl="~/Doctor_Page1.aspx" />
            <br />
            <br />
            <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="排班(休假)" Width="200px" Font-Size="Medium" PostBackUrl="~/Doctor_Page1.aspx" Font-Bold="True" ForeColor="#5F722C" />
            <asp:Button ID="Button2" runat="server" Text="患者病歷" Width="200px" Font-Size="Medium" PostBackUrl="~/Doctor_Page2.aspx" Font-Bold="True" ForeColor="#5F722C"  />
            <asp:Button ID="Button3" runat="server" Text="看診進度" Width="200px" Font-Size="Medium" PostBackUrl="~/Doctor_speed.aspx" Font-Bold="True" ForeColor="#5F722C"  />
            <asp:Button ID="Button4" runat="server" Text="登出" Font-Size="Medium" PostBackUrl="~/Doctor_Login.aspx" Font-Bold="True" ForeColor="#5F722C" />
            <br />
            <br />
            <br />
             <table class="auto-style1">
                 <tr>
                   <td>
                       <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="目前號碼"></asp:Label>
                   </td>
                   <td>
                       <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="下一號"></asp:Label>
                   </td>
                </tr>
                   <tr>
                   <td class="auto-style2">
                       <asp:Label ID="Label3" runat="server" Font-Size="64pt">0</asp:Label>
                   </td>
                   <td class="auto-style2">
                       <asp:Label ID="Label4" runat="server" Font-Size="64pt">0</asp:Label>
                   </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>

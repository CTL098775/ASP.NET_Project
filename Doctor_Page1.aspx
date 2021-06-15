<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor_Page1.aspx.cs" Inherits="Doctor_Page1" %>

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
       table{
             background-color :antiquewhite ;
         }
        table.auto-style3 {
            margin: 40px auto;
            border: 3px black solid;
        }

        .auto-style3 {
            width: 1000px;
            height: 100px;
            text-align: center;
        }

        .auto-style5 {
            width: 400px;
            height: 100px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            font-size: 20px;
        }

        .auto-style6 {
            width: 500px;
            height: 100px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            font-size: 20px;
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" Text="06/13-06/19" Font-Size="Medium" OnClick="Button6_Click" style="height: 26px" />
            <asp:Button ID="Button7" runat="server" Text="06/20-06/26" Font-Size="Medium" OnClick="Button7_Click" />
            <asp:Button ID="Button8" runat="server" Text="06/27-07/03" Font-Size="Medium" OnClick="Button8_Click" />
            <asp:Button ID="Button9" runat="server" Text="07/04-07/10" Font-Size="Medium" OnClick="Button9_Click" />
            
            <table class="auto-style3">
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:Label ID="Label30" runat="server"></asp:Label>
                        醫師班表</td>
                </tr>
                <tr>
                    <td class="auto-style6">診間</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server">06/14</asp:Label>
                        <br />
                        日</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server">06/15</asp:Label>
                        <br />
                        一</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server">06/16</asp:Label>
                        <br />
                        二</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server">06/17</asp:Label>
                        <br />
                        三</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label6" runat="server">06/18</asp:Label>
                        <br />
                        四</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label7" runat="server">06/19</asp:Label>
                        <br />
                        五</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label8" runat="server">06/20</asp:Label>
                        <br />
                        六</td>
                </tr>
                <tr>
                    <td class="auto-style6">上午09:00-12:00</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label10" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label11" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label12" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label13" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label14" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label15" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">下午14:00-17:00</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label16" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label17" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label18" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label19" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label20" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label21" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label22" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">晚上18:00-21:00</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label23" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label24" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label25" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label26" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label27" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label28" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label31" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

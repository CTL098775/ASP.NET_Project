<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor_timetable.aspx.cs" Inherits="Doctor_timetable" %>

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
        table.auto-style3{
            margin :40px auto ;
            border :3px black solid ;
            
        }
        .auto-style3 {
            width: 1200px;
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
            border: 1px solid black;
            width: 488px;
            height: 100px;
            font-size: 20px;
        }
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="80px" ImageUrl="~/img/logo.png" Width="273px" PostBackUrl="~/index.aspx" />
            <br />
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" Text="06/13-06/19" Font-Size="Medium" OnClick="Button6_Click" />
            <asp:Button ID="Button7" runat="server" Text="06/20-06/26" Font-Size="Medium" OnClick="Button7_Click" />
            <asp:Button ID="Button8" runat="server" Text="06/28-07/03" Font-Size="Medium" OnClick="Button8_Click" />
            <asp:Button ID="Button9" runat="server" Text="07/04-07/10" Font-Size="Medium" OnClick="Button9_Click" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button10" runat="server" PostBackUrl="~/Doctor_Detail.aspx" Text="醫師介紹" Font-Size="Medium" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" />

            &nbsp;<asp:Button ID="Button32" runat="server" Text="返回" Font-Size="Medium" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" OnClick="Button32_Click" />

            <table class="auto-style3">
                <tr>
                    <td colspan="2"class="auto-style5">
            <asp:Label ID="Label30" runat="server">許夢璇</asp:Label>
                        醫師班表</td>
                </tr>
                <tr>
                    <td class="auto-style6">診間</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server">A101</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server">06/13</asp:Label>
                        <br />
                        日</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server">06/14</asp:Label>
                        <br />
                        一</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server">06/15</asp:Label>
                        <br />
                        二</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server">06/16</asp:Label>
                        <br />
                        三</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label6" runat="server">06/17</asp:Label>
                        <br />
                        四</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label7" runat="server">06/18</asp:Label>
                        <br />
                        五</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label8" runat="server">06/19</asp:Label>
                        <br />
                        六</td>
                </tr>
                <tr>
                    <td class="auto-style6">上午09:00-12:00</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" ForeColor="Black" OnClick="LinkButton1_Click">許夢璇<br>網路掛號<br>尚有餘額</br></br></asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Underline="False" ForeColor="Black" OnClick="LinkButton4_Click">江卉玲<br>網路掛號<br>尚有餘額</br></br></asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">下午14:00-17:00</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="False" ForeColor="Black" OnClick="LinkButton2_Click">董葵庭<br>網路掛號<br>尚有餘額</br></br></asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="False" ForeColor="Black" OnClick="LinkButton3_Click">董葵庭<br>網路掛號<br>尚有餘額</br></br></asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="LinkButton6" runat="server" Font-Underline="False" ForeColor="Black" OnClick="LinkButton6_Click">江卉玲<br>網路掛號<br>尚有餘額</br></br></asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="LinkButton7" runat="server" Font-Underline="False" ForeColor="Black" OnClick="LinkButton7_Click">吳沛權<br>網路掛號<br>尚有餘額</br></br></asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">晚上18:00-21:00</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="LinkButton8" runat="server" Font-Underline="False" ForeColor="Black" OnClick="LinkButton8_Click">吳沛權<br>網路掛號<br>尚有餘額</br></br></asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Underline="False" ForeColor="Black" OnClick="LinkButton5_Click">許夢璇<br>網路掛號<br>尚有餘額</br></br></asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>

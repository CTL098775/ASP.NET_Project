<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor_Page2.aspx.cs" Inherits="Doctor_Page2" %>

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
             margin :40px auto ;
         }

        .auto-style60 {
            font-size: 18px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
        }

        .auto-style61 {
            width: 80px;
            font-size: 18px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
        }

        .auto-style62 {
            width: 330px;
            height: 80px;
            font-size: 18px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
        }

        .auto-style66 {
            width: 200px;
            height: 200px;
            font-size: 18px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            text-align :center ;
        }
        .auto-style67 {
            width: 100px;
            height: 80px;
            font-size: 18px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            
        }

        .auto-style68 {
            text-align:center ;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
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
            <asp:Button ID="Button5" runat="server" Text="排班(休假)" Width="200px" Font-Size="Medium" PostBackUrl="~/Doctor_Page1.aspx" Font-Bold="True" ForeColor="#5F722C" />
            <asp:Button ID="Button6" runat="server" Text="患者病歷" Width="200px" Font-Size="Medium" PostBackUrl="~/Doctor_Page2.aspx" Font-Bold="True" ForeColor="#5F722C"  />
            <asp:Button ID="Button3" runat="server" Text="看診進度" Width="200px" Font-Size="Medium" PostBackUrl="~/Doctor_speed.aspx" Font-Bold="True" ForeColor="#5F722C"  />
            <asp:Button ID="Button4" runat="server" Text="登出" Font-Size="Medium" PostBackUrl="~/Doctor_Login.aspx" Font-Bold="True" ForeColor="#5F722C" />
            <br />

            <table >
                <tr>
                    <td colspan="7" class="auto-style60" >
            <asp:Label ID="Label22" runat="server" Font-Size="Medium"></asp:Label>
            &nbsp;醫生<br />
            看診時段 <asp:Label ID="Label23" runat="server" Font-Size="Medium"></asp:Label>
                        <br />
            診間號碼 <asp:Label ID="Label24" runat="server" Font-Size="Medium"></asp:Label>
                        <br />
                    </td>
                 </tr>
                <tr>
                    <td rowspan="5" class="auto-style61">
                        <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" Height="748px" Font-Size="Medium" Width="200px" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged" >
                        </asp:ListBox>
                    </td>
                    <td class="auto-style67">姓名</td>
                    <td class="auto-style62">
                        <asp:Label ID="Label25" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style67">身份證字號</td>
                    <td class="auto-style62">
                        <asp:Label ID="Label26" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style67">病歷號</td>
                    <td class="auto-style62">
                        <asp:Label ID="Label27" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style67">出生年月日</td>
                    <td class="auto-style62">
                        <asp:Label ID="Label28" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style67">電話</td>
                    <td class="auto-style62">
                        <asp:Label ID="Label29" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style67">地址</td>
                    <td class="auto-style62">
                        <asp:Label ID="Label30" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style67">聯絡人</td>
                    <td class="auto-style62">
                        <asp:Label ID="Label31" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style67">聯絡人電話</td>
                    <td class="auto-style62">
                        <asp:Label ID="Label32" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style67"></td>
                    <td class="auto-style62"></td>
                </tr>
                <tr>
                    <td class="auto-style67">重大疾病</td>
                    <td class="auto-style62">
                        <asp:Label ID="Label33" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style67">藥物過敏</td>
                    <td class="auto-style62">
                        <asp:Label ID="Label34" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style67"></td>
                    <td class="auto-style62"></td>
                </tr>
                <tr>
                    <td class="auto-style67">診療紀錄</td>
                    <td class="auto-style66">
                        <asp:TextBox ID="TextBox1" runat="server" Height="99%" TextMode="MultiLine" Width="99%"></asp:TextBox>
                    </td>
                    <td class="auto-style67">處方籤</td>
                    <td class="auto-style66">
                        <asp:TextBox ID="TextBox2" runat="server" Height="99%" TextMode="MultiLine" Width="99%"></asp:TextBox>
                    </td>
                    <td colspan="2"class="auto-style68">
                        <asp:Button ID="Button1" runat="server" Text="送出" Font-Size="Large" BackColor="#FFFFCC" Font-Italic="False" Font-Underline="False" ForeColor="#003399" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="下一號" Font-Size="Large" BackColor="#FFFFCC" ForeColor="#003399" OnClick="Button2_Click" />
                    </td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

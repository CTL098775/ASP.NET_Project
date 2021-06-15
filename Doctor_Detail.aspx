<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor_Detail.aspx.cs" Inherits="Doctor_Detail" %>

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
        MultiView1{
             background-color :antiquewhite ;
         }
        .auto-style1 {
            width: 118px;
            height: 39px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            font-size: 20px;
            background-color :antiquewhite ;
        }
        .auto-style2 {
            width: 118px;
            height: 75px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            font-size: 20px;
            background-color :antiquewhite ;
        }

        .auto-style3 {
            height: 75px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            font-size: 20px;
            background-color: antiquewhite;
        }

        .auto-style4 {
            width: 118px;
            height: 75px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            font-size: 20px;
            background-color :antiquewhite ;
        }

        .auto-style5 {
            height: 75px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            font-size: 20px;
            background-color :antiquewhite ;
        }

        .auto-style6 {
            height: 75px;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            border-left: 1px black solid;
            border-right: 1px black solid;
            font-size: 20px;
            background-color: antiquewhite;
        }
       
        
        .auto-style7 {
            width: 27%;
            margin :80px auto ;
            
        }
        p.MsoNormal {
            margin-bottom: .0001pt;
            font-size: 12.0pt;
            font-family: "Calibri",sans-serif;
            margin-left: 0cm;
            margin-right: 0cm;
            margin-top: 0cm;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="ImageButton2" runat="server" Height="80px" ImageUrl="~/img/logo.png" Width="273px" PostBackUrl="~/index.aspx" />
            <br />
            <br />
            <asp:Label ID="Label17" runat="server" Font-Size="X-Large" Text="醫師簡介" BorderStyle="None" Font-Bold="True" ForeColor="#1FAD51"></asp:Label>
            <br />
            <br />
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" EnableTheming="True">
                <asp:View ID="View1" runat="server" EnableTheming="True">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style2">醫師：</td>
                            <td class="auto-style3">
                                許夢璇 醫師</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">主治項目：</td>
                            <td class="auto-style3">
                                一般感染症</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">現任：</td>
                            <td class="auto-style5">
                                <br />
                                雙心醫院一般醫學內科科主任<br /> 雙心醫院一般醫學內科專任主治醫師<br /> 雙心醫院感染科專任主治醫師 
                                <br />
                                6D病房主任<br /> 　</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">經歷：</td>
                            <td class="auto-style6">
                                台大醫院住院醫師 
                                <br />
                                雙心醫院主治醫師</td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server" EnableTheming="True">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style2">醫師：</td>
                            <td class="auto-style3">
                                <span style="font-size: 12.0pt; mso-bidi-font-size: 11.0pt; font-family: &quot; 新細明體 &quot;,serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: &quot; Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: ZH-TW; mso-bidi-language: AR-SA">董葵庭</span><span style="font-size:12.0pt;
mso-bidi-font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:
minor-latin;mso-fareast-font-family:新細明體;mso-fareast-theme-font:minor-fareast;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA"> </span><span style="font-size:12.0pt;
mso-bidi-font-size:11.0pt;font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;
mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">醫師</span></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">主治項目：</td>
                            <td class="auto-style3">
                                <p class="MsoNormal">
                                    &nbsp;</p>
                                <p class="MsoNormal">
                                    <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">急慢性腎衰竭</span><p class="MsoNormal">
                                        <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">糖尿病腎病變</span><span lang="EN-US"></span><p class="MsoNormal">
                                            <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">高血壓</span><span lang="EN-US"></span><p class="MsoNormal">
                                                <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">血液透析、腹膜透析</span><span lang="EN-US"></span><p class="MsoNormal">
                                                    <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">血尿、蛋白尿</span><span lang="EN-US"></span><p class="MsoNormal">
                                                        <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">泌尿道感染</span><span lang="EN-US"></span><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;新細明體&quot;,serif;
mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:
minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">一般內科疾病<br /> 　</span></p>
                                                </p>
                                            </p>
                                        </p>
                                    </p>
                                </p>
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">現任：</td>
                            <td class="auto-style5">
                                <p class="MsoNormal">
                                    &nbsp;</p>
                                <p class="MsoNormal">
                                    <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">雙心醫院腎臟內科專任主治醫師</span><span lang="EN-US"></span><p class="MsoNormal">
                                        <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">雙心醫院一般內科專任主治醫師兼示範病房主任</span><p class="MsoNormal">
                                            <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;新細明體&quot;,serif;
mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:
minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">教學部教學型主治醫師</span><p class="MsoNormal">
                                                &nbsp;</p>
                                        </p>
                                    </p>
                                </p>
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">經歷：</td>
                            <td class="auto-style6">
                                <p class="MsoNormal">
                                    &nbsp;</p>
                                <p class="MsoNormal">
                                    <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">雙心醫院腎臟內科總醫師</span><span lang="EN-US"></span><p class="MsoNormal">
                                        <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">台大醫院腎臟內科代訓總醫師</span><span lang="EN-US"></span><p class="MsoNormal">
                                            <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">雙心醫院腎臟科主治醫師</span><span lang="EN-US"></span><p class="MsoNormal">
                                                <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">部定講師</span><p>
                                                </p>
                                            </p>
                                        </p>
                                    </p>
                                </p>
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View3" runat="server" EnableTheming="True">
                    <table style="                            width: 100%;
                    ">
                        <tr>
                            <td class="auto-style2">醫師：</td>
                            <td class="auto-style3">
                                <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;
font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
minor-latin;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">江卉玲</span><span style="font-size:12.0pt;
mso-bidi-font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:
minor-latin;mso-fareast-font-family:新細明體;mso-fareast-theme-font:minor-fareast;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA"> </span><span style="font-size:12.0pt;
mso-bidi-font-size:11.0pt;font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;
mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">醫師</span></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">主治項目：</td>
                            <td class="auto-style3">
                                <p class="MsoNormal">
                                    <span style="font-family:&quot;新細明體&quot;,serif;
mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
新細明體;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin">一般精神疾病</span><span lang="EN-US">(</span><span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
minor-latin;mso-fareast-font-family:新細明體;mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin">失眠、憂鬱、焦慮、恐慌症、強迫症、失智症、躁鬱症、精神分裂症</span><span lang="EN-US">)</span><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;新細明體&quot;,serif;
mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:
minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">兒童心智困擾</span><span lang="EN-US" style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;
mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;mso-fareast-theme-font:
minor-fareast;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">(</span><span style="font-size:12.0pt;
mso-bidi-font-size:11.0pt;font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;
mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">注意力不足過動症</span><span lang="EN-US" style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;
mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;mso-fareast-theme-font:
minor-fareast;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">/</span><span style="font-size:12.0pt;
mso-bidi-font-size:11.0pt;font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;
mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">自閉症</span><span lang="EN-US" style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;
mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;mso-fareast-theme-font:
minor-fareast;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">/</span><span style="font-size:12.0pt;
mso-bidi-font-size:11.0pt;font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;
mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">情緒困擾</span><span lang="EN-US" style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;
mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;mso-fareast-theme-font:
minor-fareast;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">)</span></p>
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">現任：</td>
                            <td class="auto-style5">
                                <p class="MsoNormal">
                                    &nbsp;</p>
                                <p class="MsoNormal">
                                    雙心<span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">醫院精神科專任主治醫師</span><span lang="EN-US"></span><p class="MsoNormal">
                                        <span style="font-family:&quot;新細明體&quot;,serif;
mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
新細明體;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin">雙心醫院院聘助理教授</span><span lang="EN-US"></span><p class="MsoNormal">
                                            <span style="font-family:&quot;新細明體&quot;,serif;
mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
新細明體;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin">台大醫院精神部兼任主治醫師</span><span lang="EN-US"></span><p class="MsoNormal">
                                                <span style="font-family:&quot;新細明體&quot;,serif;
mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
新細明體;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin">台大醫學院兼任助理教授</span><p class="MsoNormal">
                                                    &nbsp;</p>
                                            </p>
                                        </p>
                                    </p>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">經歷：</td>
                            <td class="auto-style6">
                                <p class="MsoNormal">
                                    &nbsp;</p>
                                <p class="MsoNormal">
                                    <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">台大醫院精神科兼任主治醫師</span><p class="MsoNormal">
                                        <span style="font-family:&quot;新細明體&quot;,serif;
mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
新細明體;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin">新北市立聯合醫院精神科主治醫師</span><span lang="EN-US"></span><p class="MsoNormal">
                                            <span style="font-family:&quot;新細明體&quot;,serif;
mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
新細明體;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin">台大醫院精神科住院醫師</span><span lang="EN-US">/</span><span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
minor-latin;mso-fareast-font-family:新細明體;mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin">總醫師</span><span lang="EN-US"></span><p class="MsoNormal">
                                                <span style="font-family:&quot;新細明體&quot;,serif;
mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
新細明體;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin">精神科專科醫師</span><span lang="EN-US"></span><p class="MsoNormal">
                                                    <span style="font-family:&quot;新細明體&quot;,serif;
mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
新細明體;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin">兒童青少年精神科專科醫師</span><p class="MsoNormal">
                                                        &nbsp;</p>
                                                </p>
                                            </p>
                                        </p>
                                    </p>
                                </p>
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View4" runat="server" EnableTheming="True">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style2">醫師：</td>
                            <td class="auto-style3">
                                <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;
font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
minor-latin;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">吳沛權</span><span style="font-size:12.0pt;
mso-bidi-font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:
minor-latin;mso-fareast-font-family:新細明體;mso-fareast-theme-font:minor-fareast;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA"> </span><span style="font-size:12.0pt;
mso-bidi-font-size:11.0pt;font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;
mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">醫師</span></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">主治項目：</td>
                            <td class="auto-style3">
                                <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;
font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
minor-latin;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">婦女身心醫學、失眠、焦慮症、恐慌症、憂鬱症、神經衰弱、自律神經失調、躁鬱症、情緒失調、芳香療法、兒童及青少年精神醫學（注意力不集中及過動）、精神分裂症（思覺失調症）、工作壓力調適、增進人際關係、心理及婚姻諮詢</span></td>
                        </tr>
                        <tr>
                            <td class="auto-style4">現任：</td>
                            <td class="auto-style5">
                                <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;
font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
minor-latin;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">雙心醫院精神科專任主治醫師</span></td>
                        </tr>
                        <tr>
                            <td class="auto-style1">經歷：</td>
                            <td class="auto-style6">
                                <p class="MsoNormal">
                                    &nbsp;</p>
                                <p class="MsoNormal">
                                    <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">三軍總醫院精神科住院醫師</span><span lang="EN-US"></span><p class="MsoNormal">
                                        <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">三軍總醫院精神科總醫師</span><span lang="EN-US"></span><p class="MsoNormal">
                                            <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">三軍總醫院早療門診醫師</span><span lang="EN-US"></span><p class="MsoNormal">
                                                <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">三軍總醫院戒煙門診醫師</span><span lang="EN-US"></span><p class="MsoNormal">
                                                    <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">台灣老年精神醫學會會員</span><p class="MsoNormal">
                                                        <span style="font-family:&quot;新細明體&quot;,serif;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:新細明體;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin">台灣睡眠醫學會員</span><p class="MsoNormal">
                                                            &nbsp;</p>
                                                    </p>
                                                </p>
                                            </p>
                                        </p>
                                    </p>
                                </p>
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="Button3" runat="server" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" Font-Size="Medium" ForeColor="#0066FF" Text="回網路掛號主頁面" PostBackUrl="~/index.aspx" />
            &nbsp;<asp:Button ID="Button2" runat="server" Text="返回" Font-Size="Medium" PostBackUrl="~/Doctor_timetable.aspx" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" ForeColor="#0066FF" OnClick="Button2_Click" />
                    </td>
                    
                </tr>
                
            </table>
            <br />
            &nbsp;<br />
            <br />
        </div>
    </form>
</body>
</html>

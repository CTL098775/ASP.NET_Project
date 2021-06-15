<%@ Page Language="C#" AutoEventWireup="true" CodeFile="First.aspx.cs" Inherits="First" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            background: url(img/new2.jpg) center center fixed no-repeat;
            background-size: cover;
            font-family:"微軟正黑體";
        }
       table.auto-style8{
            margin :40px auto ;
            border :2px black solid ;
            
        }
       table{
             background-color :antiquewhite ;
         }
        .auto-style1 {
            height: 50px;
            font-size :18px;
            
        }

        .auto-style3 {
            height: 30px;
            text-align: center;
        }

        .auto-style5 {
            width: 380px;
            font-size: 18px;
        }
        .auto-style7 {
            width: 380px;
            font-size :18px;
        }

         
        
        .auto-style8 {
            width: 500px;
            font-size: 18px;
            height: 70px;
        }
        .auto-style9 {
            width: 400px;
            font-size : 18px;
            height: 70px;
        }
        .auto-style10 {
            width: 380px;
            font-size: 18px;
            height: 22px;
        }
        .auto-style11 {
            width: 330px;
            font-size : 18px;
            height: 22px;
        }

         
        
        .auto-style12 {
            width: 380px;
            font-size: 18px;
            height: 66px;
        }

         
        
     </style>
</head>
<body style="height: 524px">
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="ImageButton2" runat="server" Height="80px" ImageUrl="~/img/logo.png" Width="273px" CausesValidation="false" PostBackUrl="~/index.aspx"/>
            <br />
            <br />
            <table class="auto-style8">
                <tr>
                    <td >
                        <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td colspan="2" class="auto-style1">
                        填寫資料<br />
            您目前預約掛號：&nbsp;
            <asp:Label ID="Label3" runat="server"></asp:Label>
                        <br />
                        預約掛號日期：<asp:Label ID="Label7" runat="server"></asp:Label>
                        <br />
            預約掛號號碼：<asp:Label ID="Label4" runat="server"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 號<br />
            您為初診病患，請填寫以下資料，以利進行網路掛號<br />
                        <br />
                    </td>
                     
                </tr>

                <tr>
                    <td class="auto-style9">姓名  
                        <br />
                        <asp:TextBox ID="TextBox_Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Name" ErrorMessage="請輸入姓名" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    <td class="auto-style9">電話  
                        <br />
                        <asp:TextBox ID="TextBox_phone" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_phone" ErrorMessage="請輸入電話號碼" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    <td class="auto-style9">聯絡人<br />
                        <asp:TextBox ID="TextBox_contact" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="　"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        身份證號碼<asp:TextBox ID="TextBox_id" runat="server" MaxLength="10"></asp:TextBox>
                        <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_id" ErrorMessage="身份證號碼輸入有誤" ForeColor="Red" ValidationExpression="[a-zA-Z]\d{9}"></asp:RegularExpressionValidator>
                        <br />
                        </td>
                    <td class="auto-style12">地址<br />
                        <asp:TextBox ID="TextBox_address" runat="server"></asp:TextBox>
                        <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_address" ErrorMessage="請輸入地址" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    <td class="auto-style12">聯絡人電話<br />
                        <asp:TextBox ID="TextBox_contact_phone" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="　"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_id" ErrorMessage="請輸入身份證號碼" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    <td class="auto-style9" colspan="2">出生年月日 <asp:TextBox ID="TextBox_day" runat="server" Width="208px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_day" ErrorMessage="出生年月日格式輸入有誤" ForeColor="Red" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
                        <br />
                        (西元年+月份+日期 <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="ex:20210615"></asp:Label>
                        )<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_day" ErrorMessage="請輸入出生年月日" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td  class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style11">
                        重大疾病</td>
                    <td class="auto-style11">藥物過敏</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox_item1" runat="server" Height="200px" TextMode="MultiLine" Width="260px">無</asp:TextBox>
                    </td>
                    <td class="auto-style7"><asp:TextBox ID="TextBox_item2" runat="server" TextMode="MultiLine" Height="200px" Width="260px">無</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style3">
            <asp:Button ID="Button3" runat="server" 1 BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" Font-Size="Medium" ForeColor="#0066FF" Text="確定掛號" OnClick="Button3_Click"/>
                        <asp:Button ID="Button2" runat="server" PostBackUrl="~/index.aspx" Text="回網路掛號主頁面" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" Font-Size="Medium" ForeColor="#0066FF" CausesValidation="false"/>
                        <asp:Button ID="Button4" runat="server" Text="返回" BackColor="#CEEDFF" BorderColor="#2894FF" BorderStyle="Solid" Font-Size="Medium" ForeColor="#0066FF" CausesValidation="false" OnClick="Button4_Click"/>
                    </td>
                    </tr>
            </table>
            <asp:SqlDataSource ID="sds_patient" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalSQLDateSource %>" DeleteCommand="DELETE FROM [patient] WHERE [Patient_id] = @Patient_id" InsertCommand="INSERT INTO [patient] ([Patient_id], [Patient_num], [Patient_name], [Patient_birthday], [Patient_address], [Patient_phone], [Patient_disease], [Patient_allergy], [Patient_person], [Patient_person_phone]) VALUES (@Patient_id, @Patient_num, @Patient_name, @Patient_birthday, @Patient_address, @Patient_phone, @Patient_disease, @Patient_allergy, @Patient_person, @Patient_person_phone)" SelectCommand="SELECT * FROM [patient]" UpdateCommand="UPDATE [patient] SET [Patient_num] = @Patient_num, [Patient_name] = @Patient_name, [Patient_birthday] = @Patient_birthday, [Patient_address] = @Patient_address, [Patient_phone] = @Patient_phone, [Patient_disease] = @Patient_disease, [Patient_allergy] = @Patient_allergy, [Patient_person] = @Patient_person, [Patient_person_phone] = @Patient_person_phone WHERE [Patient_id] = @Patient_id">
                <DeleteParameters>
                    <asp:Parameter Name="Patient_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Patient_id" Type="Int32" />
                    <asp:Parameter Name="Patient_num" Type="String" />
                    <asp:Parameter Name="Patient_name" Type="String" />
                    <asp:Parameter Name="Patient_birthday" Type="String" />
                    <asp:Parameter Name="Patient_address" Type="String" />
                    <asp:Parameter Name="Patient_phone" Type="String" />
                    <asp:Parameter Name="Patient_disease" Type="String" />
                    <asp:Parameter Name="Patient_allergy" Type="String" />
                    <asp:Parameter Name="Patient_person" Type="String" />
                    <asp:Parameter Name="Patient_person_phone" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Patient_num" Type="String" />
                    <asp:Parameter Name="Patient_name" Type="String" />
                    <asp:Parameter Name="Patient_birthday" Type="String" />
                    <asp:Parameter Name="Patient_address" Type="String" />
                    <asp:Parameter Name="Patient_phone" Type="String" />
                    <asp:Parameter Name="Patient_disease" Type="String" />
                    <asp:Parameter Name="Patient_allergy" Type="String" />
                    <asp:Parameter Name="Patient_person" Type="String" />
                    <asp:Parameter Name="Patient_person_phone" Type="String" />
                    <asp:Parameter Name="Patient_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalSQLDateSource %>" DeleteCommand="DELETE FROM [reserve] WHERE [reserve_id] = @reserve_id" InsertCommand="INSERT INTO [reserve] ([reserve_id], [reserve_doc_id], [reserve_patient_id], [reserve_time], [state], [number], [branch]) VALUES (@reserve_id, @reserve_doc_id, @reserve_patient_id, @reserve_time, @state, @number, @branch)" SelectCommand="SELECT * FROM [reserve]" UpdateCommand="UPDATE [reserve] SET [reserve_doc_id] = @reserve_doc_id, [reserve_patient_id] = @reserve_patient_id, [reserve_time] = @reserve_time, [state] = @state, [number] = @number, [branch] = @branch WHERE [reserve_id] = @reserve_id">
                <DeleteParameters>
                    <asp:Parameter Name="reserve_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="reserve_id" Type="Int32" />
                    <asp:Parameter Name="reserve_doc_id" Type="String" />
                    <asp:Parameter Name="reserve_patient_id" Type="String" />
                    <asp:Parameter Name="reserve_time" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="number" Type="Int32" />
                    <asp:Parameter Name="branch" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="reserve_doc_id" Type="String" />
                    <asp:Parameter Name="reserve_patient_id" Type="String" />
                    <asp:Parameter Name="reserve_time" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="number" Type="Int32" />
                    <asp:Parameter Name="branch" Type="String" />
                    <asp:Parameter Name="reserve_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>

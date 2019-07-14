<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新用户注册</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: right;
            height: 30px;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</head>
<body>
    <div class="title">场地管理系统</div>
    <form id="form1" runat="server" class="regtable">
        <table>
            <tr>
                <td colspan="3" class="tr">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    学工/学号：</td>
                <td>
                <asp:TextBox ID="txtid" runat="server"  OnTextChanged="Id_TextChanged" AutoPostBack="True" ></asp:TextBox>
                </td>
                <td><asp:TextBox ID="Check_Id" runat="server" BackColor="Transparent" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdalignr">姓名：</td>
                <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="tdalignr">密码：</td>
                <td>
            <asp:TextBox ID="txtpswd" runat="server" TextMode="Password" PasswordChar="*" OnTextChanged="Pass_TextChanged" AutoPostBack="True" ></asp:TextBox>
                </td>
                <td><asp:TextBox ID="Check_Pass" runat="server" BorderStyle="None" BackColor="Transparent" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdalignr">确认密码：</td>
                <td>
            <asp:TextBox ID="txtrepswd" runat="server" TextMode="Password" PasswordChar="*" OnTextChanged="rePass_TextChanged" AutoPostBack="True"></asp:TextBox>
                </td>
                <td><asp:TextBox ID="Check_rePass" runat="server" BorderStyle="None" BackColor="Transparent" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdalignr">选择身份：</td>
                <td colspan="2">
                    <asp:RadioButtonList ID="rblist_iden" runat="server" RepeatDirection="Horizontal" Width="329px">
                        <asp:ListItem>学生</asp:ListItem>
                        <asp:ListItem>社管部</asp:ListItem>
                        <asp:ListItem>指导老师</asp:ListItem>
                        <asp:ListItem>场地管理员</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="tdalignr">性别：</td>
                <td>
                    <asp:RadioButtonList ID="rb_sex" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td><asp:TextBox ID="Check_sex" runat="server" BorderStyle="None" BackColor="Transparent" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdalignr">所属/指导社团：</td>
                <td>
                    <asp:TextBox ID="txtdept" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="tdalignr">联系电话：</td>
                <td><asp:TextBox ID="txtphone" runat="server"  OnTextChanged="Phone_TextChanged" AutoPostBack="True"></asp:TextBox>
                </td>
                <td><asp:TextBox ID="Check_Phone" runat="server" BorderStyle="None" BackColor="Transparent" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdalignr">邮箱：</td>
                <td><asp:TextBox ID="txtemail" runat="server"  OnTextChanged="Email_TextChanged" AutoPostBack="True"></asp:TextBox>
                </td>
                <td>
            <asp:TextBox ID="Check_Email" runat="server" BorderStyle="None" BackColor="Transparent" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">验证码：</td>
                <td class="auto-style2">
            <asp:TextBox ID="txtcheck" runat="server" OnTextChanged="Yzm_TextChanged" OnLoad="Yzm_TextChanged"></asp:TextBox>
                </td>
                <td>
            <asp:TextBox ID="txtshowyzm" runat="server" OnLoad="txtCheck_Load" BorderStyle="None" BackColor="Transparent" Width="30px"></asp:TextBox>
            <asp:TextBox ID="Check_yzm" runat="server"  BorderStyle="None" BackColor="Transparent" Width="82px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="tdalignc">
                    <asp:Button ID="bt_reg" runat="server" OnClick="bt_reg_Click" Text="注册" CssClass="regbt"/>
                    <asp:Button ID="bt_reset" runat="server" OnClick="bt_reset_Click" Text="重置" CssClass="regbt" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

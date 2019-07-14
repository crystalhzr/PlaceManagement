<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登陆页面</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
    </style>
</head>
<body>
    <div class="title">场地管理系统</div>
    <form id="form1" runat="server">
        <table class="logtable">
            <tr>
                <td colspan="2" class="tr">&nbsp;</td>
            </tr>
            <tr>
                <td class="tdalignr">
                    <br />
                    用户：</td>
                <td>
                        <br />
                        <asp:TextBox ID="txtsno" runat="server" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdalignr">密码：</td>
                <td>
                        <asp:TextBox ID="txtpswd" runat="server" CssClass="text" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                        <asp:RadioButtonList ID="rblist_iden" runat="server" RepeatDirection="Horizontal" Width="390px">
                            <asp:ListItem>学生</asp:ListItem>
                            <asp:ListItem>社管部</asp:ListItem>
                            <asp:ListItem>指导老师</asp:ListItem>
                            <asp:ListItem>场地管理员</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
            </tr>
            <tr>
                <td colspan="2" class="tdalignc">
                        <asp:Button ID="Button1" runat="server" Text="登陆" CssClass="logbt" OnClick="Button1_Click" />
                    </td>
            </tr>
            <tr>
                <td class="tdalignc" colspan="2">忘记密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="register.aspx">还未注册</a></td>
            </tr>
        </table>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="atten.aspx.cs" Inherits="WebApplication1.atten" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <div class="title">场地管理系统</div>
    <form id="form1" runat="server">
         <div class="tdalignr">您好，<asp:Label ID="labelshowname" runat="server" ForeColor="#A87250"></asp:Label>
         ！身份：<asp:Label ID="labelshowiden" runat="server" ForeColor="#A87250"></asp:Label>
        所属/指导社团：<asp:Label ID="labelshowdept" runat="server" ForeColor="#A87250"></asp:Label>
         &nbsp;
         <a href="login.aspx">退出</a>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         </div>
<div class="main">
        <div class="vmenu">    
            <table>
                <tr class="selected_tr">
                    <td><a href="index.aspx">申请场地</a></td>
                </tr>
                <tr>
                    <td><a href="using.aspx">场地使用情况</a></td>
                </tr>
                <tr>
                    <td><a href="checking.aspx">场地审核情况</a></td>
                </tr>
                <tr>
                    <td><a href="atten.aspx">场地申请注意事项</a></td>
                </tr>
            </table>           
        </div>
    <div class="apply">

        <div class="atten">
        <br />
        <div class="stitle">注意事项</div>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.周一至周五正常上课期间不提供教室给学生进行任何与上课无关的活动，学生活动只能借用周末时间（包括周五晚上）的教室。<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.为避免与考试冲突，学生活动借用教室请于当周的周四、周五办理借用手续。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.场地请提前一个星期申请。</div>
        </div>
    </div>
    </form>
</body>
</html>

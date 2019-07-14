<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="placemger.aspx.cs" Inherits="WebApplication1.placemger" %>

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
        所属/指导社团：<asp:Label ID="labelshowdept" runat="server" ForeColor="#A87250"></asp:Label>&nbsp; <a href="login.aspx">退出</a>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         </div>
        <div class="main">
        <div class="vmenu">    
            <table>
                <tr>
                    <td>管理场地</td>
                </tr>
                <tr>
                    <td>场地使用情况</td>
                </tr>
            </table>           
        </div>
            <div class="apply">
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sno" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting"  >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="姓名" ReadOnly="True" SortExpression="sno" />
                    <asp:BoundField DataField="sdept" HeaderText="所在单位" SortExpression="sdept" />
                    <asp:BoundField DataField="scam" HeaderText="场地校区" SortExpression="scam" />
                    <asp:BoundField DataField="stype" HeaderText="场地类型" SortExpression="stype" />
                    <asp:BoundField DataField="sdetail" HeaderText="用途" SortExpression="sdetail" />
                    <asp:BoundField DataField="sbegin" HeaderText="开始时间" SortExpression="sbegin" />
                    <asp:BoundField DataField="send" HeaderText="结束时间" SortExpression="send" />
                    <asp:BoundField DataField="comcheck" HeaderText="社管部" />
                    <asp:BoundField DataField="inscheck" HeaderText="指导老师" />
                    <asp:CommandField ButtonType="Button" DeleteText="开始使用" HeaderText="场地值班员" ShowCancelButton="False" ShowDeleteButton="True" UpdateText="">
                    <ControlStyle BackColor="Transparent" ForeColor="#990000" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>

            </div>
        </div>
    </form>
</body>
</html>

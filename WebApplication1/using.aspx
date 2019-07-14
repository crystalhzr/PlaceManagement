<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="using.aspx.cs" Inherits="WebApplication1._using" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>场地使用情况</title>
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
                    <td><a href="index.aspx">申请场地</a></td>
                </tr>
                <tr class="selected_tr">
                    <td>场地使用情况</td>
                </tr>
                <tr>
                    <td><a href="checking.aspx">场地审核情况</a></td>
                </tr>
            </table>           
        </div>
         <div class="apply">
             <br />
             <br />
            <div class="text">场地使用情况：<asp:Button ID="Bt_all" runat="server" Text="全部校区" CssClass="cam_bt" OnClick="Bt_all_Click" />
                <asp:Button ID="Bt_nh" runat="server" Text="南湖校区" CssClass="cam_bt" OnClick="Bt_nh_Click"/>
                <asp:Button ID="Bt_jh" runat="server" Text="鉴湖校区" CssClass="cam_bt" OnClick="Bt_jh_Click"/>
                <asp:Button ID="Bt_xy" runat="server" Text="西院" CssClass="cam_bt" OnClick="Bt_xy_Click"/>
                <asp:Button ID="Bt_dy" runat="server" Text="东院" CssClass="cam_bt" OnClick="Bt_dy_Click"/> 
                <hr/>
             </div>

              <br />
                <asp:GridView ID="GV_all" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="姓名" />
                        <asp:BoundField DataField="sdept" HeaderText="所在单位" />
                        <asp:BoundField DataField="scam" HeaderText="场地校区" />
                        <asp:BoundField DataField="stype" HeaderText="场地类型" />
                        <asp:BoundField DataField="sdetail" HeaderText="用途" />
                        <asp:BoundField DataField="sbegin" HeaderText="开始时间" />
                        <asp:BoundField DataField="send" HeaderText="结束时间" />
                        <asp:BoundField DataField="placemger" HeaderText="使用情况" />
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
                <asp:GridView ID="GV_nh" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="姓名" />
                        <asp:BoundField DataField="sdept" HeaderText="所在单位" />
                        <asp:BoundField DataField="scam" HeaderText="场地校区" />
                        <asp:BoundField DataField="stype" HeaderText="场地类型" />
                        <asp:BoundField DataField="sdetail" HeaderText="用途" />
                        <asp:BoundField DataField="sbegin" HeaderText="开始时间" />
                        <asp:BoundField DataField="send" HeaderText="结束时间" />
                        <asp:BoundField DataField="placemger" HeaderText="使用情况" />
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
                <asp:GridView ID="GV_jh" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="姓名" />
                        <asp:BoundField DataField="sdept" HeaderText="所在单位" />
                        <asp:BoundField DataField="scam" HeaderText="场地校区" />
                        <asp:BoundField DataField="stype" HeaderText="场地类型" />
                        <asp:BoundField DataField="sdetail" HeaderText="用途" />
                        <asp:BoundField DataField="sbegin" HeaderText="开始时间" />
                        <asp:BoundField DataField="send" HeaderText="结束时间" />
                        <asp:BoundField DataField="placemger" HeaderText="使用情况" />
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
                <asp:GridView ID="GV_xy" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="姓名" />
                        <asp:BoundField DataField="sdept" HeaderText="所在单位" />
                        <asp:BoundField DataField="scam" HeaderText="场地校区" />
                        <asp:BoundField DataField="stype" HeaderText="场地类型" />
                        <asp:BoundField DataField="sdetail" HeaderText="用途" />
                        <asp:BoundField DataField="sbegin" HeaderText="开始时间" />
                        <asp:BoundField DataField="send" HeaderText="结束时间" />
                        <asp:BoundField DataField="placemger" HeaderText="使用情况" />
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
                <asp:GridView ID="GV_dy" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="姓名" />
                        <asp:BoundField DataField="sdept" HeaderText="所在单位" />
                        <asp:BoundField DataField="scam" HeaderText="场地校区" />
                        <asp:BoundField DataField="stype" HeaderText="场地类型" />
                        <asp:BoundField DataField="sdetail" HeaderText="用途" />
                        <asp:BoundField DataField="sbegin" HeaderText="开始时间" />
                        <asp:BoundField DataField="send" HeaderText="结束时间" />
                        <asp:BoundField DataField="placemger" HeaderText="使用情况" />
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
                <br />
                <br />
         </div>
    </div>
    </form>
</body>
</html>

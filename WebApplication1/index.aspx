<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.apply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>申请场地</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
<div class="title">场地管理系统</div>
<form id="indexform" runat="server">
    <div class="tdalignr">您好，<asp:Label ID="labelshowname" runat="server" ForeColor="#A87250"></asp:Label>
         ！身份：<asp:Label ID="labelshowiden" runat="server" ForeColor="#A87250"></asp:Label>
        所属/指导社团：<asp:Label ID="labelshowdept" runat="server" ForeColor="#A87250"></asp:Label>&nbsp; <a href="login.aspx">退出</a>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         </div>
<div class="main">
        <div class="vmenu">    
            <table>
                <tr class="selected_tr">
                    <td>申请场地</td>
                </tr>
                <tr>
                    <td><a href="using.aspx">场地使用情况</a></td>
                </tr>
                <tr>
                    <td><a href="checking.aspx">场地审核情况</a></td>
                </tr>
                <tr>
                    <td><a href="checking.aspx">场地申请注意事项</a></td>
                </tr>
            </table>           
        </div>
         
        <div class="apply">
            <br />
            <div class="text">请准确填写以下所要求的信息！</div>
            <hr />
            <div class="stitle">申请表</div>
        <table class="aptable">
            <tr class="tr">
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td>申请人：</td>
                <td>
                    <asp:TextBox ID="txtsno" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="">场地所在校区：</td>
                <td class="tdalignl">
                    <asp:DropDownList ID="dlcam" runat="server" CssClass="tdalignl">
                        <asp:ListItem>南湖校区</asp:ListItem>
                        <asp:ListItem>鉴湖校区</asp:ListItem>
                        <asp:ListItem>西院</asp:ListItem>
                        <asp:ListItem>东院</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>所属社团：</td>
                <td>
                    <asp:TextBox ID="txtdept" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>场地类型：</td>
                <td class="tdalignl">
                    <asp:DropDownList ID="dltype" runat="server">
                        <asp:ListItem Value="教学楼教室"></asp:ListItem>
                        <asp:ListItem Value="南湖活动室"></asp:ListItem>
                        <asp:ListItem Value="管院报告厅"></asp:ListItem>
                        <asp:ListItem Value="东院东风厅"></asp:ListItem>
                        <asp:ListItem Value="东院1/2号厅"></asp:ListItem>
                        <asp:ListItem>管院教室</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>联系方式：</td>
                <td>
                    <asp:TextBox ID="txttel" runat="server"></asp:TextBox>
                </td>
                <td>开始时间：</td>
                <td class="tdalignl">
                    <asp:DropDownList ID="starty" runat="server">
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                    </asp:DropDownList>
                    年<asp:DropDownList ID="startm" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    月<asp:DropDownList ID="startd" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    日<asp:DropDownList ID="startt" runat="server">
                        <asp:ListItem>8:00</asp:ListItem>
                        <asp:ListItem Value="9:00">9:00</asp:ListItem>
                        <asp:ListItem>10:00</asp:ListItem>
                        <asp:ListItem Value="11:00">11:00</asp:ListItem>
                        <asp:ListItem Value="12:00">12:00</asp:ListItem>
                        <asp:ListItem Value="13:00">13:00</asp:ListItem>
                        <asp:ListItem Value="14:00"></asp:ListItem>
                        <asp:ListItem Value="15:00"></asp:ListItem>
                        <asp:ListItem Value="16:00">16:00</asp:ListItem>
                        <asp:ListItem Value="17:00">17:00</asp:ListItem>
                        <asp:ListItem Value="18:00">18:00</asp:ListItem>
                        <asp:ListItem Value="19:00">19:00</asp:ListItem>
                        <asp:ListItem Value="20:00">20:00</asp:ListItem>
                        <asp:ListItem Value="21:00"></asp:ListItem>
                    </asp:DropDownList>
                    时</td>
            </tr>
            <tr>
                <td>场地用途：</td>
                <td>
                    <asp:TextBox ID="txtuse" runat="server"></asp:TextBox>
                </td>
                <td>结束时间：</td>
                <td class="tdalignl">
                    <asp:DropDownList ID="endy" runat="server" CssClass="tdalignl" >
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                    </asp:DropDownList>
                    年<asp:DropDownList ID="endm" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    月<asp:DropDownList ID="endd" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    日<asp:DropDownList ID="endt" runat="server">
                        <asp:ListItem>8:00</asp:ListItem>
                        <asp:ListItem Value="9:00">9:00</asp:ListItem>
                        <asp:ListItem>10:00</asp:ListItem>
                        <asp:ListItem Value="11:00">11:00</asp:ListItem>
                        <asp:ListItem Value="12:00">12:00</asp:ListItem>
                        <asp:ListItem Value="13:00">13:00</asp:ListItem>
                        <asp:ListItem Value="14:00"></asp:ListItem>
                        <asp:ListItem Value="15:00"></asp:ListItem>
                        <asp:ListItem Value="16:00">16:00</asp:ListItem>
                        <asp:ListItem Value="17:00">17:00</asp:ListItem>
                        <asp:ListItem Value="18:00">18:00</asp:ListItem>
                        <asp:ListItem Value="19:00">19:00</asp:ListItem>
                        <asp:ListItem Value="20:00">20:00</asp:ListItem>
                        <asp:ListItem Value="21:00"></asp:ListItem>
                    </asp:DropDownList>
                    时</td>
            </tr>
            <tr>
                <td colspan="4">
                    <br />
                    <asp:Button ID="Bt_apply" runat="server" Text="提交" CssClass="regbt" OnClick="Bt_apply_Click"/>
&nbsp;<asp:Button ID="Bt_reset" runat="server" Text="重置" CssClass="regbt"/>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        </div>
</div>
</form>
</body>
</html>

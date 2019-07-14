using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows;
using System.Data.OleDb;

namespace WebApplication1
{
    public partial class reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tmpsno = this.txtsno.Text.Trim();                //得到登陆帐号
            string tmppswd = this.txtpswd.Text.Trim();              //得到登陆密码
            string tmpiden = this.rblist_iden.SelectedValue.Trim();
            string Connstring = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
            OleDbConnection conn = new OleDbConnection(Connstring);
            string cmdstr = "select * from [user] where [sno]='" + tmpsno + "'and [pswd]='" + tmppswd + "' and [siden]='" + tmpiden + "'";
            OleDbCommand Insertcmd = new OleDbCommand(cmdstr, conn);
            conn.Open();                               //打开数据库连接
            OleDbDataReader sqlDr = Insertcmd.ExecuteReader();   //创建SqlDataReader对象
            if (sqlDr.Read())                                  //帐号和密码正确
            {
                Session["UserID"] = tmpsno;//用Session记录帐号
                Session["UserName"] = sqlDr["sname"];
                Session["Useriden"] = sqlDr["siden"];
                Session["Userdept"] = sqlDr["sdept"];
                Session["Usertel"] = sqlDr["stel"];
                if (tmpiden == "学生") this.Response.Redirect("index.aspx");
                if (tmpiden == "社管部")this.Response.Redirect("comcheck.aspx");
                if (tmpiden == "指导老师") this.Response.Redirect("inscheck.aspx");
                if (tmpiden == "场地管理员") this.Response.Redirect("placemger.aspx");

            }
            else                                              //帐号或密码错误
            {
                Response.Write("<script>alert('密码错误！')</script>");
            }
            conn.Close();
        }
    }
}
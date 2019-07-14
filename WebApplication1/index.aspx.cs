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
    public partial class apply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserName"] != null && Session["Useriden"]!=null && Session["Userdept"]!=null)
            {
                labelshowname.Text = Session["UserName"].ToString();
                labelshowiden.Text = Session["Useriden"].ToString();
                labelshowdept.Text= Session["Userdept"].ToString();
                txtsno.Text = Session["UserName"].ToString();
                txtdept.Text= Session["Userdept"].ToString();
                txttel.Text= Session["Usertel"].ToString();
            }
        }

        protected void Bt_apply_Click(object sender, EventArgs e)
        {
            string tmpstart = starty.Text+"年"+ startm.Text + "月"+ startd.Text + "日" + startt.Text ;
            string tmpend = endy.Text +"年" + endm.Text + "月" + endd.Text + "日" + endt.Text ;
            string Connstring = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
            OleDbConnection conn = new OleDbConnection(Connstring);
            string cmdstr = "Insert into [apply]([sno],[sdept],[stel],[stype],[sbegin],[send],[scam],[sdetail]) values ('" + txtsno.Text + "','" + txtdept.Text + "','" + txttel.Text + "' ,'" +dltype.Text + "','" + tmpstart + "','" + tmpend + "','" + dlcam.Text + "','" + txtuse.Text + "')";
            OleDbCommand Insertcmd = new OleDbCommand(cmdstr, conn);
            conn.Open();
            int count = Insertcmd.ExecuteNonQuery();  //编辑的行数
            if (count > 0)
            {
                Response.Write("<script language='JavaScript'>alert('申请提交成功!');</script>");
            }
            else
            {
                Response.Write("<script>alert('提交失败！')</script>");
            }
            conn.Close();
        }
    }
}
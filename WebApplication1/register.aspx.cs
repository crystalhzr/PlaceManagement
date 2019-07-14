using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Text;
using System.Data;
using System.Windows;
using System.Data.OleDb;

namespace WebApplication1
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //检验账号
        protected void Id_TextChanged(object sender, EventArgs e)
        {
            sbyte CheckId = regcheck.IsNum(txtid);
            switch (CheckId)
            {
                case 1: Check_Id.Text = "√"; Check_Id.ForeColor = Color.Green; break;
                case 2: Check_Id.Text = "*输入不能为空"; Check_Id.ForeColor = Color.Red; break;
                case 3: Check_Id.Text = "*用户名只能数字！"; Check_Id.ForeColor = Color.Red; break;
            }
            return;
        }//TextChanged事件当文本框的内容发生改变时触发

        //检验密码
        protected void Pass_TextChanged(object sender, EventArgs e)
        {
            txtpswd.Attributes["value"] = txtpswd.Text;
            sbyte CheckPass = regcheck.IsPassWord(txtpswd);
            switch (CheckPass)
            {
                case 1: Check_Pass.Text = "√"; Check_Pass.ForeColor = Color.Green; break;
                case 2: Check_Pass.Text = "*输入不能为空"; Check_Pass.ForeColor = Color.Red; break;
                case 3: Check_Pass.Text = "*密码长度在6-18之间"; Check_Pass.ForeColor = Color.Red; break;
            }
            return;
        }
        //核对密码
        protected void rePass_TextChanged(object sender, EventArgs e)
        {
            txtrepswd.Attributes["value"] = txtrepswd.Text;
            sbyte CheckrePass = regcheck.IscheckPassWord(txtpswd, txtrepswd);
            switch (CheckrePass)
            {
                case 1: Check_rePass.Text = "√"; Check_rePass.ForeColor = Color.Green; break;
                case 2: Check_rePass.Text = "*输入不能为空"; Check_rePass.ForeColor = Color.Red; break;
                case 3: Check_rePass.Text = "*两次输入的密码不同"; Check_rePass.ForeColor = Color.Red; break;
            }
            return;
        }
        //检验身份
        //protected void Iden_TextChanged(object sender, EventArgs e)
        //{
        //    sbyte CheckIden = regcheck.Isradio(rblist_iden);
        //    switch (CheckIden)
        //    {
        //        case 1: Check_Phone.Text = "√"; Check_iden.ForeColor = Color.Green; break;
        //        case 2: Check_Phone.Text = "*您还没有选择"; Check_iden.ForeColor = Color.Red; break;
        //    }
        //    return;
        //}
        //检验电话
        protected void Phone_TextChanged(object sender, EventArgs e)
        {
            sbyte CheckPhone = regcheck.IsPhoneNumber(txtphone);
            switch (CheckPhone)
            {
                case 1: Check_Phone.Text = "√"; Check_Phone.ForeColor = Color.Green; break;
                case 2: Check_Phone.Text = "*输入不能为空"; Check_Phone.ForeColor = Color.Red; break;
                case 3: Check_Phone.Text = "*格式错误"; Check_Phone.ForeColor = Color.Red; break;
            }
            return;
        }
        //检验邮箱
        protected void Email_TextChanged(object sender, EventArgs e)
        {
            sbyte CheckEmail = regcheck.IsEmail(txtemail);
            switch (CheckEmail)
            {
                case 1: Check_Email.Text = "√"; Check_Email.ForeColor = Color.Green; break;
                case 2: Check_Email.Text = "*输入不能为空"; Check_Email.ForeColor = Color.Red; break;
                case 3: Check_Email.Text = "*格式错误"; Check_Email.ForeColor = Color.Red; break;
            }
            return;
        }
        //验证码
        protected void Yzm_TextChanged(object sender, EventArgs e)
        {
            sbyte Checkyzm = regcheck.IscheckPassWord(txtcheck, txtshowyzm);
            switch (Checkyzm)
            {
                case 1: Check_yzm.Text = "√"; Check_yzm.ForeColor = Color.Green; break;
                case 2: Check_yzm.Text = "*输入不能为空"; Check_yzm.ForeColor = Color.Red; break;
                case 3: Check_yzm.Text = "*验证码错误"; Check_yzm.ForeColor = Color.Red; break;
            }
            return;
        }
        /// 数字验证码
        /// <param name="codeCount">验证码的位数‘n’</param>
        /// <returns>返回‘n’位验证码的字符串</returns>
        private static String GetRandomint(int codeCount)
        {
            Random random = new Random();
            StringBuilder sbmin = new StringBuilder();
            StringBuilder sbmax = new StringBuilder();
            for (int i = 0; i < codeCount; i++)
            {
                sbmin.Append("1");
                sbmax.Append("9");
            }
            return random.Next(Convert.ToInt32(sbmin.ToString()), Convert.ToInt32(sbmax.ToString())).ToString(); 
        }
        protected void txtCheck_Load(object sender, EventArgs e)
        {
            txtshowyzm.Text = GetRandomint(4);
        }
        protected void bt_reg_Click(object sender, EventArgs e)
        {
            string Connstring = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
            OleDbConnection conn = new OleDbConnection(Connstring);
            string cmdstr = "Insert into [user](sno,sname,pswd,siden,ssex,sdept,stel,semail) values ('" + txtid.Text + "','" + txtname.Text + "','" + txtpswd.Text + "' ,'" + rblist_iden.SelectedValue + "','" + rb_sex.SelectedValue + "','" + txtdept.Text + "','" + txtphone.Text + "','" + txtemail.Text + "')";
            OleDbCommand Insertcmd = new OleDbCommand(cmdstr, conn);
            conn.Open();
            int count = Insertcmd.ExecuteNonQuery();  //编辑的行数
            if (Check_yzm.ForeColor == Color.Red && Check_Id.ForeColor == Color.Red && Check_Pass.ForeColor == Color.Red && Check_rePass.ForeColor == Color.Red && Check_Id.ForeColor == Color.Red && Check_Phone.ForeColor == Color.Red && Check_Email.ForeColor == Color.Red)
            { Response.Write("<script language='JavaScript'>alert('您的信息没有填写完整');</script>"); }
            if (count > 0)
            {
                Response.Write("<script language='JavaScript'>alert('注册成功!');window.location.href='login.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('注册失败！')</script>");
            }
            conn.Close();
        }
        protected void bt_reset_Click(object sender, EventArgs e)
        {
            txtname.Text = "";
            txtpswd.Text = "";
            txtrepswd.Text = "";
            txtphone.Text = "";
            txtemail.Text = "";
            txtname.Focus();
        }
    }
}
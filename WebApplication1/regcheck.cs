using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace WebApplication1
{
    public class regcheck
    {
        //检验账号只能数字
        public static sbyte IsNum(TextBox textBox)
        {
            Regex r = new Regex(@"^[0-9]*$"); 
            if (textBox.Text == "")
            {
                textBox.Focus();
                return 2;
            }
            if (r.IsMatch(textBox.Text) == false)
            {
                textBox.Focus();
                return 3;
            }
            return 1;
        }
        //检验密码，以字母开头，长度在6-18之间，只能包含char、数字和下划线
        public static sbyte IsPassWord(TextBox textBox)
        {
            Regex r = new Regex(@"^[a-zA-Z]\w{5,17}$");
            if (textBox.Text == "")
            {
                textBox.Focus();
                return 2;
            }
            if (r.IsMatch(textBox.Text) == false)
            {
                textBox.Focus();
                return 3;
            }
            return 1;

        }
        //核对密码,验证码
        public static sbyte IscheckPassWord(TextBox textBox1, TextBox textBox2)
        {
            string s1 = textBox1.Text;
            string s2 = textBox2.Text;
            if (s1 == "")
            {
                return 2;
            }
            if (s2 != s1)
            {
                return 3;
            }
            return 1;
        }
        public static sbyte Isradio(RadioButtonList radioButtonList)
        {
            if (radioButtonList.SelectedValue=="")
            {
                radioButtonList.Focus();
                return 2;
            }
            else
            return 1;
        }
        //检验电话号码
        public static sbyte IsPhoneNumber(TextBox textBox)
        {
            Regex r = new Regex(@"^[1]+[3,5]+\d{9}");
            //13或15开头的手机号码,\d{9}:表示9位数字
            if (textBox.Text == "")
            {
                textBox.Focus();
                return 2;
            }
            if (r.IsMatch(textBox.Text) == false)
            {
                textBox.Focus();
                return 3;
            }
            return 1;
        }
        //检验邮箱
        public static sbyte IsEmail(TextBox textBox)
        {
            Regex r = new Regex("^\\s*([A-Za-z0-9_-]+(\\.\\w+)*@(\\w+\\.)+\\w{2,5})\\s*$");
            if (textBox.Text == "")
            {
                textBox.Focus();
                return 2;
            }
            if (r.IsMatch(textBox.Text) == false)
            {
                textBox.Focus();
                return 3;
            }
            return 1;

        }
    }
}

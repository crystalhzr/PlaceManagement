﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class checking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null && Session["Useriden"] != null && Session["Userdept"] != null)
            {
                labelshowname.Text = Session["UserName"].ToString();
                labelshowiden.Text = Session["Useriden"].ToString();
                labelshowdept.Text = Session["Userdept"].ToString();
            }
            Bind(GV_all, "checked");
            GV_all.Visible = true;
            GV_nh.Visible = false;
            GV_jh.Visible = false;
            GV_xy.Visible = false;
            GV_dy.Visible = false;
            Bind(Gcall, "checked");
            Gcall.Visible = true;
            Gccom.Visible = false;
            Gcins.Visible = false;
        }
        //绑定数据源
        public void Bind(GridView gridview, string table)
        {
            string ConStr_Mdb = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
            OleDbConnection conn = new OleDbConnection(ConStr_Mdb);
            string sqlStr = "select * from [" + table + " ]";
            OleDbDataAdapter adapter = new OleDbDataAdapter(sqlStr, conn);//数据适配器，连接dataset与数据库
            DataSet myds = new DataSet();  //内存中的数据库
            conn.Open();
            adapter.Fill(myds, table); //把数据库填充到适配器
            gridview.DataSource = myds;
            gridview.DataBind();
            conn.Close();
        }

        protected void Bt_all_Click(object sender, EventArgs e)
        {
            Bind(GV_all, "checked");
            GV_all.Visible = true;
            GV_nh.Visible = false;
            GV_jh.Visible = false;
            GV_xy.Visible = false;
            GV_dy.Visible = false;
        }

        protected void Bt_nh_Click(object sender, EventArgs e)
        {
            string ConStr_Mdb = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
            OleDbConnection conn = new OleDbConnection(ConStr_Mdb);
            string sqlStr = "select * from [checked] where [scam]='" + "南湖校区" + "'";
            OleDbDataAdapter adapter = new OleDbDataAdapter(sqlStr, conn);//数据适配器，连接dataset与数据库
            DataSet myds = new DataSet();  //内存中的数据库
            conn.Open();
            adapter.Fill(myds, "checked"); //把数据库填充到适配器
            GV_nh.DataSource = myds;
            GV_nh.DataBind();
            conn.Close();
            GV_all.Visible = false;
            GV_nh.Visible = true;
            GV_jh.Visible = false;
            GV_xy.Visible = false;
            GV_dy.Visible = false;
        }

        protected void Bt_jh_Click(object sender, EventArgs e)
        {
            string ConStr_Mdb = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
            OleDbConnection conn = new OleDbConnection(ConStr_Mdb);
            string sqlStr = "select * from [checked] where [scam]='" + "鉴湖校区" + "'";
            OleDbDataAdapter adapter = new OleDbDataAdapter(sqlStr, conn);//数据适配器，连接dataset与数据库
            DataSet myds = new DataSet();  //内存中的数据库
            conn.Open();
            adapter.Fill(myds, "checked"); //把数据库填充到适配器
            GV_jh.DataSource = myds;
            GV_jh.DataBind();
            conn.Close();
            GV_all.Visible = false;
            GV_nh.Visible = false;
            GV_jh.Visible = true;
            GV_xy.Visible = false;
            GV_dy.Visible = false;
        }

        protected void Bt_xy_Click(object sender, EventArgs e)
        {
            string ConStr_Mdb = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
            OleDbConnection conn = new OleDbConnection(ConStr_Mdb);
            string sqlStr = "select * from [checked] where [scam]='" + "西院" + "'";
            OleDbDataAdapter adapter = new OleDbDataAdapter(sqlStr, conn);//数据适配器，连接dataset与数据库
            DataSet myds = new DataSet();  //内存中的数据库
            conn.Open();
            adapter.Fill(myds, "checked"); //把数据库填充到适配器
            GV_xy.DataSource = myds;
            GV_xy.DataBind();
            conn.Close();
            GV_all.Visible = false;
            GV_nh.Visible = false;
            GV_jh.Visible = false;
            GV_xy.Visible =true;
            GV_dy.Visible = false;
        }

        protected void Bt_dy_Click(object sender, EventArgs e)
        {
            string ConStr_Mdb = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
            OleDbConnection conn = new OleDbConnection(ConStr_Mdb);
            string sqlStr = "select * from [checked] where [scam]='" + "东院" + "'";
            OleDbDataAdapter adapter = new OleDbDataAdapter(sqlStr, conn);//数据适配器，连接dataset与数据库
            DataSet myds = new DataSet();  //内存中的数据库
            conn.Open();
            adapter.Fill(myds, "checked"); //把数据库填充到适配器
            GV_dy.DataSource = myds;
            GV_dy.DataBind();
            conn.Close();
            GV_all.Visible = false;
            GV_nh.Visible = false;
            GV_jh.Visible = false;
            GV_xy.Visible = false;
            GV_dy.Visible =true;
        }

        protected void Btc_all_Click(object sender, EventArgs e)
        {
            Bind(Gcall, "checked");
            Gcall.Visible = true;
            Gccom.Visible = false;
            Gcins.Visible = false;
        }

        protected void Btc_com_Click(object sender, EventArgs e)
        {
            string ConStr_Mdb = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
            OleDbConnection conn = new OleDbConnection(ConStr_Mdb);
            string sqlStr = "select * from [checked] where [comcheck]='" + "审核通过" + "'AND  [inscheck]='" + " " + "' ";
            OleDbDataAdapter adapter = new OleDbDataAdapter(sqlStr, conn);//数据适配器，连接dataset与数据库
            DataSet myds = new DataSet();  //内存中的数据库
            conn.Open();
            adapter.Fill(myds, "checked"); //把数据库填充到适配器
            Gccom.DataSource = myds;
            Gccom.DataBind();
            conn.Close();
            Gcall.Visible = false;
            Gccom.Visible = true;
            Gcins.Visible = false;
        }

        protected void Btc_ins_Click(object sender, EventArgs e)
        {
            string ConStr_Mdb = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
            OleDbConnection conn = new OleDbConnection(ConStr_Mdb);
            string sqlStr = "select * from [checked] where [inscheck]='" + "通过审核" + "'";
            OleDbDataAdapter adapter = new OleDbDataAdapter(sqlStr, conn);//数据适配器，连接dataset与数据库
            DataSet myds = new DataSet();  //内存中的数据库
            conn.Open();
            adapter.Fill(myds, "checked"); //把数据库填充到适配器
            Gcins.DataSource = myds;
            Gcins.DataBind();
            conn.Close();
            Gcall.Visible = false;
            Gccom.Visible = false;
            Gcins.Visible = true;
        }
    }
}
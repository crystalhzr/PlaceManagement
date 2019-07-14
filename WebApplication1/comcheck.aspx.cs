using System;
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
    public partial class check : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null && Session["Useriden"] != null && Session["Userdept"] != null)
            {
                labelshowname.Text = Session["UserName"].ToString();
                labelshowiden.Text = Session["Useriden"].ToString();
                labelshowdept.Text = Session["Userdept"].ToString();
            }
            Bind(GridView1,"apply");
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
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //string s0 = GridView1.Rows[e.RowIndex].Cells[0].Text;
            //string s1 = GridView1.Rows[e.RowIndex].Cells[0].Text;
            //string s2 = GridView1.Rows[e.RowIndex].Cells[0].Text;
            //string s3 = GridView1.Rows[e.RowIndex].Cells[0].Text;
            //string s4 = GridView1.Rows[e.RowIndex].Cells[0].Text;
            //string s5 = GridView1.Rows[e.RowIndex].Cells[0].Text;
            //string s6 = GridView1.Rows[e.RowIndex].Cells[0].Text;
            //string s7 = GridView1.Rows[e.RowIndex].Cells[0].Text;
            //string s8 = GridView1.Rows[e.RowIndex].Cells[0].Text;
            string Connstring = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
            OleDbConnection conn = new OleDbConnection(Connstring);
            string cmdstr = "Insert into [checked]([sno],[sdept],[scam],[stype],[sdetail],[sbegin],[send],[comcheck]) values ('" + GridView1.Rows[e.RowIndex].Cells[0].Text + "','" + GridView1.Rows[e.RowIndex].Cells[1].Text + "','" + GridView1.Rows[e.RowIndex].Cells[2].Text + "','" + GridView1.Rows[e.RowIndex].Cells[3].Text + "','" + GridView1.Rows[e.RowIndex].Cells[4].Text + "','" + GridView1.Rows[e.RowIndex].Cells[5].Text + "','" + GridView1.Rows[e.RowIndex].Cells[6].Text + "','" + "通过审核" + "')";
            OleDbCommand sqlCom = new OleDbCommand(cmdstr, conn);
            conn.Open();
            int count1 = sqlCom.ExecuteNonQuery();
            if (count1 > 0)
            {
                Response.Write("<script>alert('操作成功！')</script>");
            }
            else
            {
                Response.Write("<script>alert('操作失败！')</script>");
            }
            conn.Close();
            //string ss = GridView1.DataKeys[e.RowIndex].ToString();
            //string Constring = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
            //OleDbConnection con = new OleDbConnection(Constring);
            //string sqlStr = "delete from [apply] where cstr(sno)=" + s0 + "";
            //OleDbCommand Com = new OleDbCommand(sqlStr, con);
            //con.Open();
            //int count2 = Com.ExecuteNonQuery(); //使行受到影响
            //if (count2 > 0) Response.Write("<script>alert('操作成功！')</script>");
            //con.Close();
            GridView1.EditIndex = -1;
            Bind(GridView1, "apply");
        }
        //protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        //{
        //    string Connstring = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
        //    OleDbConnection conn = new OleDbConnection(Connstring);
        //    string cmdstr = "Insert into [manager]([sno],[sdept],[stel],[stype],[sbegin],[send],[scam],[sdetail],[comcheck],[inscheck]) values ('" + GridView1.Rows[GridView1.SelectedIndex].Cells[0].Text + "','" + GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text + "','" + GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text + "','" + GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text + "','" + GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text + "','" + GridView1.Rows[GridView1.SelectedIndex].Cells[5].Text + "','" + GridView1.Rows[GridView1.SelectedIndex].Cells[6].Text + "','" + GridView1.Rows[GridView1.SelectedIndex].Cells[7].Text + "','" + "通过" + "','" + "通过" + "')";
        //    OleDbCommand sqlCom = new OleDbCommand(cmdstr, conn);
        //    conn.Open();
        //    int count1 = sqlCom.ExecuteNonQuery();
        //    if (count1 > 0)
        //    {
        //        Response.Write("<script>alert('操作成功！')</script>");
        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('操作失败！')</script>");
        //    }
        //    conn.Close();
        //    GridView1.EditIndex = -1;
        //    Bind(GridView1, "checked");
        //}
    }
}   


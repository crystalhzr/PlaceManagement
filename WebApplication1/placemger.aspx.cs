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
    public partial class placemger : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null && Session["Useriden"] != null && Session["Userdept"] != null)
            {
                labelshowname.Text = Session["UserName"].ToString();
                labelshowiden.Text = Session["Useriden"].ToString();
                labelshowdept.Text = Session["Userdept"].ToString();
            }
            Bind(GridView1, "checked");
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
            string Connstring = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\crystal\Desktop\C#\数据库\place.mdb";
            OleDbConnection conn = new OleDbConnection(Connstring);
            string cmdstr = "UPDATE [checked] SET placemger='"+ "正在使用" + "'where [sno]='" + GridView1.Rows[e.RowIndex].Cells[0].Text + "'AND [sdept]='" + GridView1.Rows[e.RowIndex].Cells[1].Text + "'";
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
            GridView1.EditIndex = -1;
            Bind(GridView1, "checked");
        }
    }
}
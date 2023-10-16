using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Order : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\inventory.mdf;Integrated Security=True");
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();
    }
    protected void o2_Click(object sender, EventArgs e)
    {
        //p search search particular record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from order1 where ordid='" + t1.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                t2.Text = dr.GetString(1);
                t3.Text = dr.GetString(2);
                t4.Text = dr.GetString(3);
            }
            SqlDataSource1.SelectCommand = "select * from order1 where ordid = '" + t1.Text + "'";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
       
    protected void o_Click(object sender, EventArgs e)
    {

    }
    protected void o0_Click(object sender, EventArgs e)
    {
        //to update record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "update order1 set date1='" + t2.Text + "',detail='" + t3.Text + "',cid='" + t4.Text + "' where ordid='" + t1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record updated')</script>");
            SqlDataSource1.SelectCommand = "select * from order1";
            GridView1.DataSourceID = "sqldatasource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void o1_Click(object sender, EventArgs e)
    {
        //All search
        SqlDataSource1.SelectCommand = "select * from order1";
        GridView1.DataSourceID = "SqlDataSource1";
    }
}
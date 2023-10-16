using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Product : System.Web.UI.Page
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
    protected void pb0_Click(object sender, EventArgs e)
    {
        //DELETE THE RECORD
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "delete from product where pid='" + t1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Delete')</script>");
            GridView1.DataSourceID = "SqlDatasource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void pb1_Click(object sender, EventArgs e)
    {
        //All search
        SqlDataSource1.SelectCommand = "select * from product";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void pb2_Click(object sender, EventArgs e)
    {
        //p search search particular record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from product where pid='" + t1.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                t2.Text = dr.GetString(1);
                t3.Text = dr.GetString(2);
                t4.Text = dr.GetString(3);
                t5.Text = dr.GetString(4);
                t6.Text = dr.GetString(5);
                t7.Text = dr.GetString(6);
                t8.Text = dr.GetString(7);
                t9.Text = dr.GetString(8);
                t10.Text = dr.GetString(9);
            }
            SqlDataSource1.SelectCommand = "select * from product where pid = '" + t1.Text + "'";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
}
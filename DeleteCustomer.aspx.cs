using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Customer : System.Web.UI.Page
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
    protected void c_Click(object sender, EventArgs e)
    {
        t1.Text = "";
        t2.Text = "";
        t3.Text = "";
        t4.Text = "";
        t5.Text = "";
        t6.Text = "";
    }
    protected void c1_Click(object sender, EventArgs e)
    {
        //All search
        SqlDataSource1.SelectCommand = "select * from customer";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void c2_Click(object sender, EventArgs e)
    {
        //p search search particular record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from customer where cid='" + t1.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                t2.Text = dr.GetString(1);
                t3.Text = dr.GetString(2);
                t4.Text = dr.GetString(3);
                t5.Text = dr.GetString(4);
                t6.Text = dr.GetString(5);
            }
            SqlDataSource1.SelectCommand = "select * from Customer where cid = '" + t1.Text + "'";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
    protected void c0_Click(object sender, EventArgs e)
    {
        //DELETE THE RECORD
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "delete from customer where cid='" + t1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Delete')</script>");
            GridView1.DataSourceID = "SqlDatasource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}
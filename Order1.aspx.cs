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
    protected void o_Click(object sender, EventArgs e)
    {
        //Generate id
        try
        {
            int k = 0;
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select ordid from keygen";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                HiddenField1.Value = dr.GetInt32(0).ToString();
                k = dr.GetInt32(0);
            }
            t1.Text = "odr" + k.ToString();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
    protected void o0_Click(object sender, EventArgs e)
    {
        //to save the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "insert into order1 values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Saved')</script>");
            SqlDataSource1.SelectCommand = "select * from order1";
            GridView1.DataSourceID = "SqlDataSource1";
            //update keygen
            int id = int.Parse(HiddenField1.Value.ToString()) + 1;
            cmd.CommandText = "update keygen set ordid='" + id + "'";
            cmd.ExecuteNonQuery();
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
}
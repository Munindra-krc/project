using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Supplier : System.Web.UI.Page
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
    protected void b2_Click(object sender, EventArgs e)
    {
        int k=0;
        //to save the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select sid from supplier";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (dr.GetString(0) == t1.Text)
                {
                    k = 1;
                    break;
                }
            }
            conn.Close();
            conn.Open();
            if (k == 0)
            {
                cmd.CommandText = "insert into supplier values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "','" + t6.Text + "','" + t7.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Record Saved')</script>");
                SqlDataSource1.SelectCommand = "select * from supplier";
                GridView1.DataSourceID = "SqlDataSource1";
                //update keygen
                int id = int.Parse(HiddenField1.Value.ToString()) + 1;
                cmd.CommandText = "update keygen set supid='" + id + "'";
                cmd.ExecuteNonQuery();
            }
            else
                Response.Write("<script>alert('supplier id already exist')</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void b3_Click(object sender, EventArgs e)
    {
        //All search
        SqlDataSource1.SelectCommand = "select * from supplier";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void b4_Click(object sender, EventArgs e)
    {
        //p search search particular record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from supplier where sid='" + t1.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                t2.Text = dr.GetString(1);
                t3.Text = dr.GetString(2);
                t4.Text = dr.GetString(3);
                t5.Text = dr.GetString(4);
                t6.Text = dr.GetString(5);
                t7.Text = dr.GetString(6);
            }
            SqlDataSource1.SelectCommand = "select * from supplier where sid = '" + t1.Text + "'";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        //Generate id
        try
        {
            int k = 0;
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select supid from keygen";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                HiddenField1.Value = dr.GetInt32(0).ToString();
                k = dr.GetInt32(0);
            }
            t1.Text = "sup" + k.ToString();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
}
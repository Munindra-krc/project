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

        //Adding staff id as foreign key from staff table
        if (!IsPostBack == true)
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from staff";
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr.GetString(0).ToString());
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

    }
    protected void c_Click(object sender, EventArgs e)
    {
        //Generate id
        try
        {
            int k = 0;
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select custid from keygen";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                HiddenField1.Value = dr.GetInt32(0).ToString();
                k = dr.GetInt32(0);
            }
            t1.Text = "cus" + k.ToString();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
    protected void c0_Click(object sender, EventArgs e)
    {
        //to save the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "insert into customer values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "','" + t6.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Saved')</script>");
            SqlDataSource1.SelectCommand = "select * from customer";
            GridView1.DataSourceID = "SqlDataSource1";
            //update keygen
            int id = int.Parse(HiddenField1.Value.ToString()) + 1;
            cmd.CommandText = "update keygen set custid='" + id + "'";
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        t6.Text = DropDownList1.SelectedValue.ToString();
    }
}

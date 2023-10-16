using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Order_detail : System.Web.UI.Page
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
        //Adding order1 id as foreign key from order1 table
        if (!IsPostBack == true)
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from order1";
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
        conn.Close();
        conn.Open();
        //Adding product id as foreign key from product table
        if (!IsPostBack == true)
        {
            try
            {
                SqlCommand cmd1 = conn.CreateCommand();
                cmd1.CommandText = "select * from product";
                SqlDataReader dr = cmd1.ExecuteReader();
                while (dr.Read())
                {
                    DropDownList2.Items.Add(dr.GetString(0).ToString());
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
    protected void o0_Click(object sender, EventArgs e)
    {
        //to save the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "insert into Order_detail values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "','" + t6.Text + "','" + t7.Text + "','" + t8.Text + "','" + t9.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Saved')</script>");
            SqlDataSource1.SelectCommand = "select * from Order_detail ";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void o1_Click(object sender, EventArgs e)
    {
        //All search
        SqlDataSource1.SelectCommand = "select * from Order_detail";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void o2_Click(object sender, EventArgs e)
    {
        //p search search particular record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from order_detail where ordid='" + t1.Text + "'";
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
            SqlDataSource1.SelectCommand = "select * from order_detail where ordid = '" + t1.Text + "'";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        t8.Text = DropDownList1.SelectedValue.ToString();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        t9.Text = DropDownList1.SelectedValue.ToString();
    }
    protected void o_Click(object sender, EventArgs e)
    {

    }
   
}
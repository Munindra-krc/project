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
        conn.Close();
        conn.Open();
        //Adding category id as foreign key from category table
        if (!IsPostBack == true)
        {
            try
            {
                SqlCommand cmd1 = conn.CreateCommand();
                cmd1.CommandText = "select * from category";
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
    protected void pb0_Click(object sender, EventArgs e)
    {
        //to save the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "insert into product values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "','" + t6.Text + "','" + t7.Text + "','" + t8.Text + "','" + t9.Text + "','" + t10.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Saved')</script>");
            SqlDataSource1.SelectCommand = "select * from product";
            GridView1.DataSourceID = "SqlDataSource1";
            //update keygen
            int id = int.Parse(HiddenField1.Value.ToString()) + 1;
            cmd.CommandText = "update keygen set prodid='" + id + "'";
            cmd.ExecuteNonQuery();
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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        t9.Text = DropDownList1.SelectedValue.ToString();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        t10.Text = DropDownList1.SelectedValue.ToString();
    }
    protected void pb_Click(object sender, EventArgs e)
    {
        //Generate id
        try
        {
            int k = 0;
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select prodid from keygen";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                HiddenField1.Value = dr.GetInt32(0).ToString();
                k = dr.GetInt32(0);
            }
            t1.Text = "Prod" + k.ToString();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
}
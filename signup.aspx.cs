using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class signup : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        //To signup record
        try
        {
            int k = 0;
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select id from login";
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
            if (k == 1)
                Response.Write("<script>alert('Id already Exist')</script>");
            else
            {
                if (t1.Text != "" && t2.Text != "")
                {
                    cmd.CommandText = "insert into login values('" + t1.Text + "','" + t2.Text + "')";
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('User Created')</script>");
                }
                else
                {
                    Response.Write("<script>alert('User will not Created')</script>");
                }
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }
}
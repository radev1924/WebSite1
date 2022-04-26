using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Documents\Student Info.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadRecord();
        }
    }

    protected void InsertButton_Click(object sender, EventArgs e)
    {
        if (ID.Text == string.Empty || Name.Text == string.Empty || Age.Text == string.Empty || Contact.Text == string.Empty)
        {
            Response.Write("<script>alert('all of the field must be filled');</script>");

        }
        else {

            con.Open();
            SqlCommand comm = new SqlCommand("insert into [Students Info] values ('" + int.Parse(ID.Text) + "','" + Name.Text + "','" + Country.SelectedValue + "','" + double.Parse(Age.Text) + "','" + Contact.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succsefully Inserted')", true);
            LoadRecord();
        }
        
    }

    void LoadRecord()
    {
        SqlCommand comm = new SqlCommand("Select * from [Students Info]", con);
        SqlDataAdapter d = new SqlDataAdapter(comm);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void UpdateButton_click(object sender, EventArgs e)
    {
        if (ID.Text == string.Empty || Name.Text == string.Empty || Age.Text == string.Empty || Contact.Text == string.Empty)
        {
            Response.Write("<script>alert('all of the field must be filled');</script>");

        }
        else
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Update [Students Info] set StudentName = '" + Name.Text + "', Address = '" + Country.SelectedValue + "',Age = '" + double.Parse(Age.Text) + "', Contact = '" + Contact.Text + "' where StudentId = '" + int.Parse(ID.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succsefully Updated')", true);
            LoadRecord();
        }
    }

    protected void DeleteButton_click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("Delete [Students Info] where StudentId = '" + int.Parse(ID.Text) + "'", con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succsefully Deleted')", true);
        LoadRecord();

    }

    protected void SearchButton_click(object sender, EventArgs e)
    {
        SqlCommand comm = new SqlCommand("Select * from [Students Info] where StudentId = '" + int.Parse(ID.Text) + "'", con);
        SqlDataAdapter d = new SqlDataAdapter(comm);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GetButton_click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("Select * from [Students Info] where StudentId = '" + int.Parse(ID.Text) + "'", con);
        SqlDataReader r = comm.ExecuteReader();
        while (r.Read())
        {
            Name.Text = r.GetValue(1).ToString();
            Country.SelectedValue= r.GetValue(2).ToString();
            Age.Text = r.GetValue(3).ToString();
            Contact.Text = r.GetValue(4).ToString();
        }
    }
}
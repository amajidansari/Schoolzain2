using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page

    {

        string strcon = ConfigurationManager.ConnectionStrings["schoolmisterConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGrid();

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[5].Text;
            TextBox6.Text = GridView1.SelectedRow.Cells[6].Text;

            TextBox7.Text = GridView1.SelectedRow.Cells[7].Text;
            TextBox8.Text = GridView1.SelectedRow.Cells[8].Text;
            TextBox9.Text = GridView1.SelectedRow.Cells[9].Text;
            TextBox10.Text = GridView1.SelectedRow.Cells[10].Text;
            TextBox11.Text = GridView1.SelectedRow.Cells[11].Text;



        }
        bool checkmember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }

                SqlCommand cmd = new SqlCommand("select * FROM [schoolmister].[dbo].[PIT] where [PID] = '" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }

                else
                {
                    return false;
                }

            }

            catch (Exception ex)
            {
                Response.Write("<Script> alert ('" + ex.Message + "');</Script>");

                return false;
            }

        }

        private void clearform()
        {

            TextBox1.Text = "";

            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";

        }

        void delete()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Update  [schoolmister].[dbo].[PIT] SET is_delete = '" + 1 + "' where is_delete = '" + TextBox1.Text.Trim() + "' ", con);



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('Deleted successfully')</script");



            }
            catch (Exception ex)
            {

                Response.Write("<script> alert('" + ex.Message + "'); </cript");
            }




        }

        void insertteacher()
        {
            if (checkmember())
            {

                Response.Write("<Script> alert ('Member already exist');</Script>");
            }
            else
            {


                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }

                    SqlCommand cmd = new SqlCommand("Insert into [schoolmister].[dbo].[PIT]([Name],[F_name],[PID],[CNIC],[Designation],[BPS],[Contact_no],[School],[UC],[Latitude],[Longititude]) Values (@name,@f_name,@PID,@CNIC,@Designation,@BPS ,@Contact_no,@School,@UC ,@Latitude,@Longtitude)", con);

                    cmd.Parameters.AddWithValue("@PID", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@f_name", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@CNIC", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@Designation", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@BPS", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@Contact_no", TextBox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@School", TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@UC", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@Latitude", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@Longtitude", TextBox11.Text.Trim());

                    cmd.ExecuteNonQuery();
                    clearform();
                    con.Close();

                    Response.Write("<Script>alert('insert Successfully ')</Script>");


                }

                catch (Exception ex)
                {
                    Response.Write("<Script> alert ('" + ex.Message + "');</Script>");

                }

            }
        }
        void updatestudent()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" update [schoolmister].[dbo].[PIT] set Name = @a2 , F_name = @a3 , CNIC =@a4 , Designation =@a5,BPS = @a6 ,Contact_no =@a7,[School] = @a8,UC = @a9,[Latitude]  =@a10 ,[Longititude] =@a11 where PID  = '" + TextBox1.Text.Trim() + "' ", con);
                // cmd.Parameters.AddWithValue("@a1", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@a2", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@a3", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@a4", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@a5", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@a6", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@a7", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@a8", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@a9", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@a10", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@a11", TextBox11.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('Updated successfully')</script");

                GridView1.DataBind();


            }
            catch (Exception ex)
            {

                Response.Write("<script> alert('" + ex.Message + "'); </cript");
            }

        }
        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["schoolmisterConnectionString"].ConnectionString;
            using (SqlConnection cons = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM [schoolmister].[dbo].[PIT] where is_delete = '1'", cons))
                {
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }

            //Required for jQuery DataTables to work.
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            insertteacher();
            clearform();
            BindGrid();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            updatestudent();
            clearform();
            BindGrid();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            delete();
            clearform();
            BindGrid();

        }
    }
}
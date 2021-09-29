using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
namespace WebApplication4
{
    public partial class REPORTCARD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_save_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=172.16.32.20;Initial Catalog=IVRM_TestDb;Integrated Security=False;User ID=sa;Password=vts@123;"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO TBL_REPORT_CARD2 VALUES(@Acadamicyear,@Class,@section,@ExamName)", con);
                cmd.Parameters.AddWithValue("@Acadamicyear", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@Class", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@section", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@ExamName", DropDownList4.SelectedValue);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Label1.Text = "Report Saved" + Label1.Text;
        }
    }
}
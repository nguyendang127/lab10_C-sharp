using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebForm
{
    public partial class FillingForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {
            string gender = string.Empty;
            if (radNam.Checked)
            {
                gender = "Nam";
            }
            else
            {
                gender = "Nu";
            }
            //SqlConnection conn = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=QLKhachHang;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            //conn.Open();
            clsDatabase.OpenConnection();
            SqlCommand checktenDN = new SqlCommand(@"SELECT tenDN FROM [dbo].[thongtinKH] WHERE tenDN =  '" + txtTenDN.Text + "'", clsDatabase.con);
            SqlDataAdapter sd = new SqlDataAdapter(checktenDN);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                lblThongBao.Text = "Tên đăng nhập đã tồn tại!";
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Tên đăng nhập đã tồn tại!!!');", true);
            }
            else
            {
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[thongtinKH]
                                                   ([tenDN]
                                                   ,[matkhau]
                                                   ,[hoten]
                                                   ,[ngaysinh]
                                                   ,[gioitinh]
                                                   ,[email]
                                                   ,[thunhap])
                                             VALUES
                                                   ('" + txtTenDN.Text + "','" + txtMK.Text + "','" + txtKH.Text + "','" + txtNgaySinh.Text + "','" + gender + "','" + txtEmail.Text + "','" + txtThuNhap.Text + "')", clsDatabase.con);
                cmd.ExecuteNonQuery();
                clsDatabase.CloseConnection();
                //conn.Close();
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Đăng ký thành công!!!');", true);
                lblThongBao.Text = "Đăng ký thành công!";
            }

        }
    }
}
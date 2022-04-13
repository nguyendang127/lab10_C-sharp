using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebForm
{
    public class clsDatabase
    {
        public static SqlConnection con;

        public static bool OpenConnection()
        {
            string conString = "Data Source=MSI\\SQLEXPRESS;Initial Catalog=QLKhachHang;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            try
            {
                con = new SqlConnection(conString);
                con.Open();
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }
        public static bool CloseConnection()
        {
            try
            {
                con.Close();
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }
    }
}




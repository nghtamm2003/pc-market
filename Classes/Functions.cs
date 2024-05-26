﻿using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace pc_market.Classes {
    public class Functions {
        public static SqlConnection conn;
        public static string connString;

        public static void Connect() {
            // connString for Windows Authentication (using Local SQL Server & SQL Server Management Studio)
            // connString = "Server=localhost;Database=pc-market;Trusted_Connection=True;";

            connString = "Server=127.0.0.1; Database=pc-market; User Id=sa;Password=@itscelex1623;";
            conn = new SqlConnection(connString);
            try {
                conn.Open();
                // MessageBox.Show("Kết nối thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (SqlException e) {
                MessageBox.Show($"Kết nối không thành công! \nMã lỗi: {e.Message}", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public static bool AccountValidate(string username, string password) {
            using (SqlCommand query = new SqlCommand("SELECT * FROM taiKhoan WHERE tenTaiKhoan = @username AND matKhau = @password", conn)) {
                query.Parameters.AddWithValue("@username", username);
                query.Parameters.AddWithValue("@password", password);
                using (SqlDataReader reader = query.ExecuteReader()) {
                    return reader.Read();
                }
            }
        }
    }
}
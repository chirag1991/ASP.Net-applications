using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data; // Required for using Dataset , Datatable and Sql  
using System.Data.SqlClient; // Required for Using Sql  
using System.Configuration; // for Using Connection From Web.config   
using BusinessObject;


namespace DataAccess
{
    public class UserDA
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["3TireStoreroConn"].ToString());
        public int AddUserDetails(UserBO objBO)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("[dbo].[spInsert_UserInfo]",cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", objBO.Name);
                cmd.Parameters.AddWithValue("@Address",objBO.Address);
                cmd.Parameters.AddWithValue("@EmailID",objBO.EmailID);
                cmd.Parameters.AddWithValue("@MobileNumber", objBO.MobileNumber);
                cn.Open();
                int Result = cmd.ExecuteNonQuery();
                cmd.Dispose();
                return Result;
            }
            catch
            {
                throw;
            }

        }
    }
}

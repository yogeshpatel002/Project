using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for common
/// </summary>
namespace clainIndia
{
    public class common
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectdb"].ConnectionString);
        public int mainExecuteNoneQuery(string str)
        {
            con.Open();
            SqlCommand com = new SqlCommand(str, con);
            int error = Convert.ToInt32(com.ExecuteNonQuery());
            con.Close();
            if (error > 0)
            {
                return error;
            }
            else
            {
                return 0;
            }
            //"insert into tblcomplain(userName,email,mobile,complainDate,complainType,state,city,street,lagitude,latitude,image,status)valus('rushi','Rushipatel.gmail.com','9033163937','26-03-2017 00:00:00','1','Gujarat','Kalol','kavita app','14.5','15.5','rushi','book') "
        }
        public DataTable MainTabel(string str)
        {
            con.Open();
            SqlCommand com = new SqlCommand(str, con);
            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            return dt;
        }

    }
}
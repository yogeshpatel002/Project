
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    #region Variables
    clainIndia.common objcommon = new clainIndia.common();
   

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectdb"].ConnectionString);

    string email = "";
    string pass = "";
    string str = "";
    DataTable dt;
    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "select * from tbllogin";
        GridView1.DataSource = objcommon.MainTabel(str);
        GridView1.DataBind();
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        email = Request.Form["txtemail"];
        pass = Request.Form["txtloginpass"];
        con.Open();
        str = "select email_id,password from tblLogin where email_id='" + email.ToString() + "' and password='" + pass.ToString() + "'";
        SqlCommand com = new SqlCommand(str, con);
        SqlDataAdapter sda = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            str = "update tbllogin set status = '"+1+"' where email_id = '"+email.ToString()+"'";
            objcommon.mainExecuteNoneQuery(str);
            Session["emailid"] = email.ToString();
            Response.Redirect("Home.aspx");
           
        }
        else
        {
            lblerror.Text = "Email and Password id invalid";
        }

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string fname = "", lname = "", email = "", pass = "", mobile = "";
        fname = Request.Form["txtfname"];
        lname = Request.Form["txtlname"];
        email = Request.Form["txtemailid"];
        pass = Request.Form["txtpass"];
        mobile = Request.Form["txtmobile"];
        con.Open();
        str = "select email_ID from tbllogin where email_ID = '" + email.ToString() + "'";
        dt = objcommon.MainTabel(str);

        if (dt.Rows.Count == 0)
        {
            str = "insert into tblsignup(firstname,lastname,email,password,mobile)values('" + fname.ToString() + "','" + lname.ToString() + "','" + email.ToString() + "','" + pass.ToString() + "','" + mobile.ToString() + "')";
            int error = objcommon.mainExecuteNoneQuery(str);
            if (error > 0)
            {
                str = "insert into tbllogin(email_ID,Password)values('" + email.ToString() + "','" + pass.ToString() + "')";
                error = objcommon.mainExecuteNoneQuery(str);
            }
            else
            {

            }
        }
        else
        {
            lblerror.Text = "Email ID is already Existx";
        }
    }
    protected void btnsendemail_Click(object sender, EventArgs e)
    {
        string a = "";
    }
}
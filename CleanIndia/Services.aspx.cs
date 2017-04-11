using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using clainIndia;


public partial class Services : System.Web.UI.Page
{
    clainIndia.common objcommon = new clainIndia.common();
    protected string map = "";
    string path = "";
    string str;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str = "";
            str = "select * from states where country_id = 101";
            ddlState.DataSource = objcommon.MainTabel(str);
            ddlState.DataTextField = "name";
            ddlState.DataValueField = "id";
            ddlState.DataBind();
        }
    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        str = "select * from cities where state_id = '" + ddlState.SelectedValue.ToString() + "'";
        ddlcity.DataSource = objcommon.MainTabel(str);
        ddlcity.DataTextField = "name";
        ddlcity.DataValueField = "id";
        ddlcity.DataBind();

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        map = ddlState.SelectedItem.ToString() + " " + ddlcity.SelectedItem.ToString();
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
        imgsave.ImageUrl = (Server.MapPath("~/Images/") + fileName);
    }

    public void btnComplain_Click(object sender, EventArgs e)
    {
        string username = "";
        string email = "";
        string mobile = "";

        var date = DateTime.Now.ToString("yyyy-MM-dd");
        string compalinid = "";
        compalinid = Request.Form["complainid"];
        string s =HttpContext.Current.Session["emailid"].ToString();
        str = "select firstname,email,mobile from tblsignup where email = '" + Session["emailid"].ToString() + "'";
        DataTable dt = objcommon.MainTabel(str);
        if (dt.Rows.Count > 0)
        {
            username = dt.Rows[0][0].ToString();
            email = dt.Rows[0][1].ToString();
            mobile = dt.Rows[0][2].ToString();

            str = "insert into tblcomplain(userName,email,mobile,complainDate,complainType,state,city,street,lagitude,latitude,image,status)values('" + username.ToString() + "','" + email.ToString() + "','" + mobile.ToString() + "','" + date + "','" + 1 + "','" + ddlState.SelectedItem.ToString() + "','" + ddlcity.SelectedItem.ToString() + "','" + txtaddress.Text + "','" + 14 + "','" + 15 + "','" + imgsave.ToString() + "','" + 0 + "') ";
            int error = objcommon.mainExecuteNoneQuery(str);
        }
    }
}
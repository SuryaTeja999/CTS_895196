using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace MovieCruiserProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();

        }
        protected void Btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtUserId.Text == "895196" && txtUserPassword.Text == "surya123" )
                {
                    Session["userId"] = txtUserId.Text;
                    FormsAuthentication.RedirectFromLoginPage(txtUserId.Text, true);
                    Response.Write("<script>alert('Logged in as Customer')</script>");
                }
                else if (txtUserId.Text == "257176" && txtUserPassword.Text == "admin123")
                {
                    Session["userId"] = txtUserId.Text;
                    Response.Redirect("ViewAdminMovies.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('System Returned an exception')</script>");
            }
        }
    }
}
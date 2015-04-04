using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{
    public MembershipUser AuthorizedUser;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["stay"] != "true")
        {
            //Response.Redirect("~/Default.html");
        }
        AuthorizedUser = Membership.GetUser();
		if (AuthorizedUser != null)
        {
            LoginMultiView.ActiveViewIndex = 1;
        }
        else
        {
            LoginMultiView.ActiveViewIndex = 0;
        }
    }
}
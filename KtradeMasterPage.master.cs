using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Xml;
using System.Drawing;
using System.Threading;

public partial class KtradeMasterPageII : System.Web.UI.MasterPage
{
    public MembershipUser AuthorizedUser;

    static string KtradeConnectionString = ConfigurationManager.ConnectionStrings["KtradeConnectionString"].ConnectionString;// + "MultipleActiveResultSets=True";
    static SqlConnection KtradeConnection = new SqlConnection(KtradeConnectionString);
    static string UserQueryString = "select top 1 FullName, FirstName, IsAdmin, Customer_id, Alias, Email, ContractNumber from CustomerInfo where User_id = @User_id";
    
    SqlCommand UserInfo = new SqlCommand(UserQueryString, KtradeConnection);
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (KtradeConnection.State.ToString() == "Closed") KtradeConnection.Open();
	
	//Page.MetaDescription = "Мы предоставляем услуги доставки товаров по каталогам - OTTO, H&M, Lacoste, ZARA, MEXX, Amazon и других - из Германии. Вашему вниманию предлагаются более 130 европейских каталогов одежды онлайн с огромным ассортиментом товаров на любой вкус для людей разного возраста.";

        AuthorizedUser = Membership.GetUser(); //Вот это надо писать при логине в параметры сесии, при отсутствии оных, читать из базы, также приверять их при открытии страницы оформления заказа
        if (AuthorizedUser != null)
        {
            if (Session["UserName"] == null)
            {
				UserInfo.Parameters.AddWithValue("User_id", AuthorizedUser.ProviderUserKey.ToString());
				SqlDataReader UserCredentials = UserInfo.ExecuteReader();
				UserCredentials.Read();
			
				if (UserCredentials.HasRows)
				{
					if (UserCredentials["IsAdmin"].ToString() == "True") Session["Admin"] = "true"; //ControlPanel.Visible = true
					else Session["Admin"] = "false";
					Session["Customer"] = UserCredentials["Customer_id"].ToString();

					//UserFullNameDisplay.Text = "Здравствуйте, " + UserCredentials["FirstName"].ToString();
					Session["UserName"] = UserCredentials["FirstName"].ToString();
					Session["UserFullName"] = UserCredentials["FullName"].ToString();
					Session["UserMail"] = UserCredentials["Email"].ToString();
					Session["ContractNumber"] = UserCredentials["ContractNumber"].ToString();
				}
				else
				{
					//UserFullNameDisplay.Text = "Здравствуйте, " + AuthorizedUser.UserName.ToString();
					//Session["UserName"] = "До свидания.";
					Session["Customer"] = "-1";
				}
				UserCredentials.Close();
			}
			
            LoginMultiView.ActiveViewIndex = 1;
        	if (Session["Admin"] == "true")	ControlPanel.Visible = true;
        }
        else
        {
            Session["Customer"] = "-1";
            LoginMultiView.ActiveViewIndex = 0;
        }
        
        if (Session["UserName"]!=null)
        {
        	UserFullNameDisplay.Text = "Здравствуйте, " + Session["UserName"].ToString();
        }
        else
        {
        	UserFullNameDisplay.Text = "Не определено ФИО пользователя";
        }
        
    }
    protected void LogoutImageButton_Click(object sender, ImageClickEventArgs e)
    {
        FormsAuthentication.SignOut();
        Roles.DeleteCookie();
        Session.Clear();
        Response.Redirect(Request.RawUrl);
    }
    protected void LoginImageButton_Click(object sender, ImageClickEventArgs e)
    {
        if (Membership.ValidateUser(UserNameTextBox.Text, PasswordTextBox.Text))
        {
            FormsAuthentication.RedirectFromLoginPage(UserNameTextBox.Text, RememberMe.Checked);
        }
        else
        {
            UserNameTextBox.BackColor = Color.OrangeRed;
            PasswordTextBox.BackColor = Color.OrangeRed;
        }
    }
}

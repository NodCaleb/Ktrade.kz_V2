using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;

public partial class Admin_OrderManagement : System.Web.UI.Page
{
	public ClientScriptManager CSM;
	public MembershipUser AuthorizedUser;
    static string KtradeConnectionString = ConfigurationManager.ConnectionStrings["KtradeConnectionString"].ConnectionString;// + "MultipleActiveResultSets=True";
    static SqlConnection KtradeConnection = new SqlConnection(KtradeConnectionString);
    static string UserQueryString = "select top 1 FullName, FirstName, IsAdmin, Customer_id, Alias, Email, ContractNumber from CustomerInfo where User_id = @User_id";
    SqlCommand UserInfo = new SqlCommand(UserQueryString, KtradeConnection);
    static string Customer;
    static string UserMail;
    static string ContractNumber;
    static string Payment_id;
    
    static String CreateZTransactionString = "CreateZPaymentTransaction";
    static SqlCommand CreateZTransaction = new SqlCommand(CreateZTransactionString, KtradeConnection);
    
	protected void Page_Load(object sender, EventArgs e)
    {
		CSM = Page.ClientScript;
		//MethodsList.Items[0].Text += Server.HtmlDecode("<img src='../images/zlogo.png'>");  
		
		if (KtradeConnection.State.ToString() == "Closed") KtradeConnection.Open();
	
		AuthorizedUser = Membership.GetUser();
		if (AuthorizedUser != null)
		{
			UserInfo.Parameters.AddWithValue("User_id", AuthorizedUser.ProviderUserKey.ToString());
			SqlDataReader UserCredentials = UserInfo.ExecuteReader();
			UserCredentials.Read();
	
			if (UserCredentials.HasRows)
			{
				Customer = UserCredentials["Customer_id"].ToString();
				UserMail = UserCredentials["Email"].ToString();
				ContractNumber = UserCredentials["ContractNumber"].ToString();
			}
			UserCredentials.Close();
		}
    }
	protected override void Render(HtmlTextWriter writer)
    {
        CSM.RegisterForEventValidation(MethodsList.UniqueID.ToString());
	CSM.RegisterForEventValidation(ZPaymentButton.UniqueID.ToString());
        base.Render(writer);
    }
	protected void ZPaymentButton_Click(object sender, EventArgs e)
    {
    	/* Это была попытка сделать POST-запрос, жаль, что пока не сработало
    	ServicePointManager.ServerCertificateValidationCallback = new System.Net.Security.RemoteCertificateValidationCallback(AcceptAllCertifications);
    	System.Net.WebRequest ZpaymentPOST = System.Net.WebRequest.Create(@"https://z-payment.com/merchant.php");
		ZpaymentPOST.Method = "POST"; // Устанавливаем метод передачи данных в POST
		ZpaymentPOST.Timeout = 120000; // Устанавливаем таймаут соединения
		ZpaymentPOST.ContentType = "application/x-www-form-urlencoded"; // указываем тип контента
		// передаем список пар параметров / значений для запрашиваемого скрипта методом POST
		// здесь используется кодировка cp1251 для кодирования кирилицы и спец. символов в значениях параметров
		// Если скрипт должен принимать данные в utf-8, то нужно выбрать Encodinf.UTF8
		byte[] ZPaymentData = Encoding.GetEncoding(1251).GetBytes("LMI_PAYEE_PURSE=" + System.Web.HttpUtility.UrlEncode("12142", Encoding.GetEncoding(1251)));
		ZpaymentPOST.ContentLength = ZPaymentData.Length;
		Stream ZStream = ZpaymentPOST.GetRequestStream();
		ZStream.Write(ZPaymentData, 0, ZPaymentData.Length);
		ZStream.Close();
		//System.Net.WebResponse result = reqPOST.GetResponse();
    	
    	//SomeBytes = Encoding.GetEncoding(1251).GetBytes("ParamName1=" + HttpUtility.UrlEncode("ParamValue1", Encoding.GetEncoding(1251)));
    	*/
    	if (MethodsList.SelectedIndex == 0)
    	{
    		CreateZTransaction.CommandType = CommandType.StoredProcedure;
            if (CreateZTransaction.Parameters.Count != 0) CreateZTransaction.Parameters.Clear();

            SqlParameter Customer_id = new SqlParameter("@Customer_id", SqlDbType.NVarChar);
            Customer_id.Direction = ParameterDirection.Input;
            Customer_id.Value = Customer.ToString();
            CreateZTransaction.Parameters.Add(Customer_id);
            
            SqlParameter Ammount = new SqlParameter("@Ammount", SqlDbType.NVarChar);
            Ammount.Direction = ParameterDirection.Input;
            Ammount.Value = AmmountInput.Text.ToString();
            CreateZTransaction.Parameters.Add(Ammount);
            
            SqlParameter GetPayment_id = new SqlParameter("@Payment_id", SqlDbType.NVarChar);
            GetPayment_id.Direction = ParameterDirection.Output;
            GetPayment_id.Size = 38;
            //Payment_id.Value = Payment_id;
            CreateZTransaction.Parameters.Add(GetPayment_id);
            
            CreateZTransaction.ExecuteNonQuery();
            Payment_id = GetPayment_id.Value.ToString();
            CreateZTransaction.Parameters.Clear();
            
            //Session["SessionZPayment_id"] = Payment_id;
            
            HttpCookie Zcookie = Request.Cookies["ZPaymentData"];
			if (Zcookie == null)
			{
				Zcookie = new HttpCookie("ZPaymentData");
			}

			Zcookie["ZPaymentid"] = Payment_id.ToString();
			Zcookie.Expires = DateTime.Now.AddMinutes(60);
			Response.Cookies.Add(Zcookie);
            
    		Response.Redirect("~/Customer/ProcessZPayment.aspx?ContractNumber=" + ContractNumber + "&LMI_PAYMENT_AMOUNT=" + AmmountInput.Text.ToString() + "&CLIENT_MAIL=" + UserMail + "&Payment_id=" + Payment_id);
    	}
    }    
}
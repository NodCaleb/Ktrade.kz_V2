using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.IO;
using System.Text;
using System.Security.Cryptography;

public partial class Customer_Register : System.Web.UI.Page
{
    static string KtradeConnectionString = ConfigurationManager.ConnectionStrings["KtradeConnectionString"].ConnectionString;
    static SqlConnection KtradeConnection = new SqlConnection(KtradeConnectionString);
    static String CheckLoginString = "select Username from aspnet_Users where LoweredUserName = LOWER (@Login)";
    static String CheckEmailString = "select Email from aspnet_Membership where LoweredEmail = LOWER (@Email)";
    static String RegisterUserString = "Ktrade_CreateUser";
    static string GetUserAliasString = "select Alias, ContractNumber from UserView where UserName = @UserName";
    static SqlCommand CheckLogin = new SqlCommand(CheckLoginString, KtradeConnection);
    static SqlCommand CheckEmail = new SqlCommand(CheckEmailString, KtradeConnection);
    static SqlCommand RegisterUser = new SqlCommand(RegisterUserString, KtradeConnection);
    static SqlCommand GetUserAlias = new SqlCommand(GetUserAliasString, KtradeConnection);
    static String CaptchaString = "SimpleCaptcha";
    static SqlCommand CaptchaCommand = new SqlCommand(CaptchaString, KtradeConnection);
    static string Answer;

    public MembershipUser AuthorizedUser;

    protected override void Render(HtmlTextWriter writer)
    {
        if (KtradeConnection.State.ToString() == "Closed") KtradeConnection.Open();

        SqlDataReader CaptchaReader = CaptchaCommand.ExecuteReader();
        CaptchaReader.Read();

        QuestionLabel.Text = CaptchaReader["Question"].ToString();
        Answer = CaptchaReader["Answer"].ToString();

        CaptchaReader.Close();

        base.Render(writer);
    }

    private static string CreateSalt(int size)
    {
        //Generate a cryptographic random number.
        RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
        byte[] buff = new byte[size];
        rng.GetBytes(buff);

        // Return a Base64 string representation of the random number.
        return Convert.ToBase64String(buff);
    } 
    protected void Page_Load(object sender, EventArgs e)
    {
        AuthorizedUser = Membership.GetUser();
        if (AuthorizedUser != null)
        {
            Response.Redirect("~");
        }
    }
    protected void Register_Click(object sender, EventArgs e)
    {
        if (KtradeConnection.State.ToString() == "Closed") KtradeConnection.Open();

        if (CheckLogin.Parameters.Count != 0) CheckLogin.Parameters.Clear();
        if (CheckEmail.Parameters.Count != 0) CheckEmail.Parameters.Clear();

        CheckLogin.Parameters.AddWithValue("Login", LoginInput.Text);
        CheckEmail.Parameters.AddWithValue("Email", EmailInput.Text);

        if (CheckLogin.ExecuteScalar() != null)
        {
            LoginUniquenessValidator.IsValid = false;
        }
        else
        {
            LoginUniquenessValidator.IsValid = true;
        }

        if (CheckEmail.ExecuteScalar() != null)
        {
            EmailUniquenessValidator.IsValid = false;
        }
        else
        {
            EmailUniquenessValidator.IsValid = true;
        }

        if (AnswerBox.Text == Answer)
        {
            CheckAnswerValidator.IsValid = true;
        }
        else
        {
            CheckAnswerValidator.IsValid = true;
        }
        
        if (Agree.Checked == true)
        {
            AgreementValidator.IsValid = true;
        }
        else
        {
            AgreementValidator.IsValid = false;
        }
        
        
        if (Page.IsValid)
        {
            RegisterUser.CommandType = CommandType.StoredProcedure;
            if (RegisterUser.Parameters.Count != 0) RegisterUser.Parameters.Clear();

            SqlParameter ApplicationName = new SqlParameter("@ApplicationName", SqlDbType.NVarChar);
            ApplicationName.Direction = ParameterDirection.Input;
            ApplicationName.Value = "/";
            RegisterUser.Parameters.Add(ApplicationName);

            SqlParameter UserName = new SqlParameter("@UserName", SqlDbType.NVarChar);
            UserName.Direction = ParameterDirection.Input;
            UserName.Value = LoginInput.Text;
            RegisterUser.Parameters.Add(UserName);

            SqlParameter Password = new SqlParameter("@Password", SqlDbType.NVarChar);
            Password.Direction = ParameterDirection.Input;
            Password.Value = PasswordInput.Text;
            RegisterUser.Parameters.Add(Password);

            SqlParameter PasswordSalt = new SqlParameter("@PasswordSalt", SqlDbType.NVarChar);
            PasswordSalt.Direction = ParameterDirection.Input;
            PasswordSalt.Value = CreateSalt(18);
            RegisterUser.Parameters.Add(PasswordSalt);

            SqlParameter Email = new SqlParameter("@Email", SqlDbType.NVarChar);
            Email.Direction = ParameterDirection.Input;
            Email.Value = EmailInput.Text;
            RegisterUser.Parameters.Add(Email);

            SqlParameter FirstName = new SqlParameter("@FirstName", SqlDbType.NVarChar);
            FirstName.Direction = ParameterDirection.Input;
            FirstName.Value = FirstNameInput.Text;
            RegisterUser.Parameters.Add(FirstName);

            SqlParameter LastName = new SqlParameter("@LastName", SqlDbType.NVarChar);
            LastName.Direction = ParameterDirection.Input;
            LastName.Value = LastNameInput.Text;
            RegisterUser.Parameters.Add(LastName);

            //SqlParameter Alias = new SqlParameter("@Alias", SqlDbType.NVarChar);
            //Alias.Direction = ParameterDirection.Output;
            ////Alias.Value = null;
            //RegisterUser.Parameters.Add(Alias);

            try
            {
                RegisterUser.ExecuteNonQuery();
                SendNotifcations(LoginInput.Text, PasswordInput.Text, EmailInput.Text, FirstNameInput.Text, LastNameInput.Text, /*Alias.Value.ToString(),*/ PhoneInput.Text, AddressInput.Text);

                RegisterMultiView.ActiveViewIndex = 1;
                RegisterUpdatePanel.Update();
            }
            catch
            {
                RegisterMultiView.ActiveViewIndex = 2;
                RegisterUpdatePanel.Update();
            }
        }

        CheckLogin.Parameters.Clear();
        CheckEmail.Parameters.Clear();
        RegisterUser.Parameters.Clear();
        KtradeConnection.Close();    
    }
    protected void SendNotifcations(string Login, string Password, string Email, string FirstName, string LastName, /*string Alias,*/ string Phone, string Address)
    {
        SmtpClient KtradeSMTP = new SmtpClient();

        MailAddress Admin = new MailAddress("admin@ktrade.kz", "Ktrade"); //Отправитель сообщения
        MailAddress Sale = new MailAddress("sale@ktrade.kz", "Отдел продаж");
        MailAddress Office = new MailAddress("office@ktrade.kz", "Офис");
        MailAddress Customer = new MailAddress(Email, FirstName + " " + LastName);

        if (GetUserAlias.Parameters.Count != 0) GetUserAlias.Parameters.Clear();

        GetUserAlias.Parameters.AddWithValue("UserName", Login);
		
		SqlDataReader AliasReader = GetUserAlias.ExecuteReader();
        AliasReader.Read();

        string Alias = AliasReader["Alias"].ToString();
		string ContractNumber = AliasReader["ContractNumber"].ToString();
		
		AliasReader.Close();

        //Сообщение для продавца
        MailMessage NotifySeller = new MailMessage();
        NotifySeller.From = Admin;
        NotifySeller.To.Add(Sale);
        NotifySeller.To.Add(Office);
        //NotifySeller.To.Add(Admin); //Для тестирования
        NotifySeller.IsBodyHtml = true;
        NotifySeller.BodyEncoding = System.Text.Encoding.UTF8;
        NotifySeller.SubjectEncoding = System.Text.Encoding.UTF8;
        NotifySeller.Subject = "Новый пользователь на сайте: " + FirstName + " " + LastName;
        NotifySeller.Body = "";
        NotifySeller.Body += "<h3>У нас на сайте завелся новый пользователь:</h3>";
        NotifySeller.Body += "<table border=\"0\" style=\"border-style:none\" cellspacing=\"0\" cellpadding=\"5px\"> ";
        NotifySeller.Body += "<tr> <td> Имя </td> <td> " + FirstName + " </td> </tr> ";
        NotifySeller.Body += "<tr> <td> Фамилия </td> <td> " + LastName + " </td> </tr> ";
        NotifySeller.Body += "<tr> <td> Логин </td> <td> " + Login + " </td> </tr> ";
        NotifySeller.Body += "<tr> <td> Пароль </td> <td> " + Password + " </td> </tr> ";
        NotifySeller.Body += "<tr> <td> Email </td> <td> " + Email + " </td> </tr> ";
        NotifySeller.Body += "<tr> <td> Псевдоним </td> <td> " + Alias + " </td> </tr> ";
        NotifySeller.Body += "<tr> <td> Телефон </td> <td> " + Phone + " </td> </tr> ";
        NotifySeller.Body += "<tr> <td> Адрес </td> <td> " + Address + " </td> </tr> ";
		NotifySeller.Body += "<tr> <td> Договор № </td> <td> " + ContractNumber + " </td> </tr> ";
        NotifySeller.Body += "</trable>";

        //Сообщение для покупателя
        MailMessage NotifyCustomer = new MailMessage();
        NotifyCustomer.From = Admin;
        NotifyCustomer.To.Add(Customer);
        NotifyCustomer.ReplyTo = Office;
        //NotifyCustomer.To.Add(Admin); //Для тестирования
        NotifyCustomer.IsBodyHtml = true;
        NotifyCustomer.BodyEncoding = System.Text.Encoding.UTF8;
        NotifyCustomer.SubjectEncoding = System.Text.Encoding.UTF8;
        NotifyCustomer.Subject = "Подтверждение регистрации на Ktrade.kz";
        NotifyCustomer.Body = "";
        NotifyCustomer.Body = "<p>Здравствуйте, " + FirstName + " " + LastName + ", ";
        NotifyCustomer.Body += "ваша регистрация на <a href=\"http://ktrade.kz\">Ktrade</a> подтверждена. </p>";
        NotifyCustomer.Body += "<p>Имя пользователя для входа в систему: " + Login + "<br />";
        NotifyCustomer.Body += "Пароль для входа в систему: " + Password + "<br />";
		NotifyCustomer.Body += "Номер договора для оплаты через терминалы Qiwi: " + ContractNumber + "</p>";
        //NotifyCustomer.Body += "<p><b><small>Пожалуйста, не отвечайте на это письмо, робот читать не умеет!</small></b></p><p><small>Чтобы связаться с нами, пишите на <a href=\"mailto:sale@ktrade.kz\">sale@ktrade.kz</a>.</small></p>";

        //И еще одно для покупателя
        MailMessage ThankCustomer = new MailMessage();

        ThankCustomer.From = Admin;
        ThankCustomer.To.Add(Customer);
        ThankCustomer.ReplyTo = Sale;
        ThankCustomer.IsBodyHtml = true;
        ThankCustomer.BodyEncoding = System.Text.Encoding.UTF8;
        ThankCustomer.SubjectEncoding = System.Text.Encoding.UTF8;

        //TestMessage.Sender = MailSender;
        //TestMessage.To.Add(MailReceiver);
        ThankCustomer.Subject = "Благодарим за регистрацию!";
        ThankCustomer.Body = "<h4>Здравствуйте, " + FirstName + "</h4><p>Благодарим вас за проявленный интерес к нашим услугам!</p><p>В этом письме мы постораемся ответить на вопросы, которые могут у вас возникнуть.</p><h4>Что делать дальше?</h4><p>Если вы уже оформили заказ, необходимо внести предоплату в размере не менее 2000 тенге, чтобы ваш заказ был отправлен в работу, до того, ваши заказы будут находиться в режиме ожидания. При регулярных заказах рекомендуем оформить договор, чтобы вы смогли получать накомительные бонусы.</p><p>Если вы еще не сделили заказ, рекомендуем ознакоиться со <a href=\"http://ktrade.kz/Catalogues.aspx?Tag=active\">списком электронных каталогов</a> и <a href=\"http://ktrade.kz/UpsellOffers.aspx\">горячих предожений</a>, также вы можете <a href=\"http://ktrade.kz/Customer/OrdersPry.aspx\">посмотреть, что заказывают другие</a> и какие <a href=\"http://shop.ktrade.kz/\">товары есть в наличии</a>.</p><p>Какие данные нужны для заключения договора?</p><p>Для оформления договора с нами и регистрации вас в Германии вам необходимо предоставить следующие данные: ФИО, домашний адрес, дата рождения, номер удостоверения личности (или вид на жительство), дата выдачи и кем выдано УДЛ (ВНЖ).</p><h4>Как оплатить?</h4><p>Оплатить можно через <a href=\"http://ktrade.kz/Infos/QiwiPayment.aspx\"терминал Qiwi</a> или же наличными у нас в офисе.  При оплате через терминал Qiwi нужно лишь  вести ваш персональный номер договора. Ваш личный номер договора был сформирован при регистрации и находится у вас в почте в первом письме.</p><h4>Как заказать?</h4><p>Рекомендуем вам подробно ознакомиться с <a href=\"http://ktrade.kz/About.aspx\"условиями заказов по электронным каталогам</a> и <a href=\"http://ktrade.kz/Infos/OrderMaking.aspx\">изучить инструкцию о том, как это делать</a>.</p><h4>Из чего выбирать?!</h4><p>Для начала предлагаем вам ознакомиться <a href=\"http://ktrade.kz/Catalogues.aspx?Tag=active\">со списком электронных каталогов</a>, по которым вы можете делать заказы on-line, не выходя из дома. Для Вашего удобства каталоги размещены по категориям. Также вы можете посмотреть текущие <a href=\"http://ktrade.kz/UpsellOffers.aspx\">горячие предложения</a>, <a href=\"http://ktrade.kz/Customer/OrdersPry.aspx\">что заказывают другие</a> и <a href=\"http://shop.ktrade.kz/\">какие товары есть в наличии</a>.</p><h4>Какой размер выбирать?!</h4><p>Для определения вашего размера на сайте в разделе Информация размещены <a href=\"http://ktrade.kz/Infos/Groessen.aspx\">таблицы соответствия и таблицы размеров одежды и обуви</a>. И самое, главное, чтобы правильно подобрать размер и модель одежды предлагаем встретиться у нас в офисе и сделать это вместе. В офисе имеется небольшой набор товаров для определения размера. Сможем на месте вас проконсультировать по качеству понравившихся вам товаров, а также ответить на все вопросы.</p><h4>Есть ли накрутка на цену в каталоге?</h4><p>При заказе из некоторых каталогов взимается дополнительный сбор. Это указано под логотипом каталога, например: +18%. Если ничего не указано — вы получаете товар по цене каталога + доставка.</p><h4>Какова стоимость доставки?</h4><p>Стоимость доставки до нашего офмиса в Караганде составляет 7 € / килограмм, также мы можем сделать для вас курьерскую доставку в пределах караганды или в другие города, <a href=\"http://ktrade.kz/Infos/Lieferung.aspx\">подробнее — в разделе Информация.</a></p><h4>Можно ли вернуть заказанный товар?</h4><p>Некоторые из он-лайн магазинов, к сожалению, работают без возвратов (MyToys, YOOX, ZARA и др.). Это так же обозначено специальным значком рядом с логотипом каталога. При заказе c остальных каталогов можно вернуть заказанный товар, оплатив при этом стоимость доставки.</p><hr/><p>С уважением, Ольга <br/>Руководитель проекта <a href=\"http://ktrade.kz\">Ktrade.kz</a><br/>Skype: olechkarozhkova<br/>Тел.: +7 777 243 01 04,8 (7212) 41 90 61<br/>Ул. Кривогуза 5, офис 311.<br/><a href=\"http://ktrade.kz/Contacts.aspx\">Схема проезда</a>";

        KtradeSMTP.Send(NotifySeller);
        KtradeSMTP.Send(NotifyCustomer);
        KtradeSMTP.Send(ThankCustomer);

        NotifyCustomer.Dispose();
        NotifySeller.Dispose();
        ThankCustomer.Dispose();
    }
}
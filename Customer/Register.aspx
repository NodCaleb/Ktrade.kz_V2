<%@ Page Title="" Language="C#" MasterPageFile="~/SideModulesDefault.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Customer_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade - регистрация</title>
    <link rel="Stylesheet" href="../css/Register.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="RegisterScriptManager" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="RegisterUpdatePanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:MultiView ID="RegisterMultiView" runat="server" ActiveViewIndex="0">
                <asp:View ID="RegisterView" runat="server">
                    <h2>Регистрация</h2>
                    <p>Используйте следующую форму для создания новой учетной записи.</p>
                    <p>Все поля являются обязательными к заполнению.</p>
                    <p>Длина пароля должна быть не менее 6 знаков.</p>
                            <div class="inputfield">
                                <asp:TextBox ID="FirstNameInput" runat="server"></asp:TextBox>
                                <p>Имя:</p>
                                <asp:RequiredFieldValidator ID="FirstnameRequiredFieldValidator" runat="server" ErrorMessage="Введите имя" ControlToValidate="FirstNameInput" Display="None" ValidationGroup="RegisterValidationGroup"></asp:RequiredFieldValidator>
                            </div>
                            <div class="inputfield">
                                <asp:TextBox ID="LastNameInput" runat="server"></asp:TextBox>
                                <p>Фамилия:</p>
                                <asp:RequiredFieldValidator ID="LastnameRequiredFieldValidator" runat="server" ErrorMessage="Введите фамилию" ControlToValidate="LastNameInput" Display="None" ValidationGroup="RegisterValidationGroup"></asp:RequiredFieldValidator>
                            </div>
                            <div class="inputfield">
                                <asp:TextBox ID="AddressInput" runat="server"></asp:TextBox>
                                <p>Адрес:</p>
				<asp:RequiredFieldValidator ID="AddressRequiredFieldValidator" runat="server" ErrorMessage="Введите адрес" ControlToValidate="AddressInput" Display="None" ValidationGroup="RegisterValidationGroup"></asp:RequiredFieldValidator>
                            </div>
                            <div class="inputfield">
                                <asp:TextBox ID="PhoneInput" runat="server"></asp:TextBox>
                                <p>Телефон:</p>
                                <asp:RequiredFieldValidator ID="PhoneRequiredFieldValidator" runat="server" ErrorMessage="Введите телефон" ControlToValidate="PhoneInput" Display="None" ValidationGroup="RegisterValidationGroup"></asp:RequiredFieldValidator>
                            </div>
                            <div class="inputfield">
                                <asp:TextBox ID="EmailInput" runat="server"></asp:TextBox>
                                <p>Электронная почта:</p>
                                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ErrorMessage="Введите адрес электронной почты" ControlToValidate="EmailInput" Display="None" ValidationGroup="RegisterValidationGroup"></asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="EmailUniquenessValidator" runat="server" ErrorMessage="Пользователь с таким адресом электронной почты уже существует, пожалуйста, введите другой" ControlToValidate="EmailInput" Display="None" ValidationGroup="RegisterValidationGroup"></asp:CustomValidator>
                                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ErrorMessage="Введите корректный адрес электронной почты строчными буквами (маленькими)" ControlToValidate="EmailInput" ValidationExpression="^[0-9a-z]+[-\._0-9a-z]*@[0-9a-z]+[-\._^0-9a-z]*[0-9a-z]+[\.]{1}[a-z]{2,6}$" Display="None" ValidationGroup="RegisterValidationGroup"></asp:RegularExpressionValidator>
                            </div>
                            <div class="inputfield">
                                <asp:TextBox ID="LoginInput" runat="server"></asp:TextBox>
                                <p>Логин:</p>
                                <asp:RequiredFieldValidator ID="LoginRequiredFieldValidator" runat="server" ErrorMessage="Введите логин" ControlToValidate="LoginInput" Display="None" ValidationGroup="RegisterValidationGroup"></asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="LoginUniquenessValidator" runat="server" ErrorMessage="Пользователь с таким логином уже существует, пожалуйста, введите другой" ControlToValidate="LoginInput" Display="None" ValidationGroup="RegisterValidationGroup"></asp:CustomValidator>
                            </div>
                            <div class="inputfield">
                                <asp:TextBox ID="PasswordInput" runat="server" TextMode="Password"></asp:TextBox>
                                <p>Пароль:</p>
                                <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ErrorMessage="Введите пароль" ControlToValidate="PasswordInput" Display="None" ValidationGroup="RegisterValidationGroup"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="PasswordRegularExpressionValidator1" runat="server" ErrorMessage="Длина пароля должна быть не менее 6 символов" ControlToValidate="PasswordInput" ValidationExpression=".{6,}" Display="None" ValidationGroup="RegisterValidationGroup"></asp:RegularExpressionValidator>
                            </div>
                            <div class="inputfield">
                                <asp:TextBox ID="PasswordConfirm" runat="server" TextMode="Password"></asp:TextBox>
                                <p>Подтвердите пароль:</p>
                                <asp:CompareValidator ID="PasswordCompareValidator" runat="server" ErrorMessage="Пароль и подтверждение пароля должны совпадать" ControlToCompare="PasswordConfirm" ControlToValidate="PasswordInput" Display="None" ValidationGroup="RegisterValidationGroup"></asp:CompareValidator>
                            </div>
                            <div class="inputfield">
                                <asp:TextBox ID="AnswerBox" runat="server"></asp:TextBox>
                                <asp:Label ID="QuestionLabel" runat="server" Text="Сколько будет девять плюс девять:"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredAnswerValidator" runat="server" ErrorMessage="Нет ответа на вопрос" ControlToValidate="AnswerBox" Display="None" ValidationGroup="RegisterValidationGroup"></asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="CheckAnswerValidator" runat="server" ErrorMessage="Ответ на вопрос неверен (вводить цифрами)" ControlToValidate="AnswerBox" Display="None" ValidationGroup="RegisterValidationGroup"></asp:CustomValidator>
                            </div>
                            <div class="agree">
                            	<p><asp:CheckBox ID="Agree" runat="server" /> Я принимаю условия соглашения об использовании сайта:</p>
                            	<asp:CustomValidator ID="AgreementValidator" runat="server" ErrorMessage="Необходимо принять условия пользовательского соглашения" ControlToValidate="AnswerBox" Display="None" ValidationGroup="RegisterValidationGroup"></asp:CustomValidator>
                            	<textarea disabled>
Соглашение
об использовании сайта «KTRADE.KZ»   и конфиденциальности обмена информацией между ИП «KTRADE» и физическим либо юридическим лицом, (именуемым в дальнейшем «Пользователь»), надлежащим образом, зарегистрировавшимся на сайте «KTRADE.KZ».
1. Предмет Пользовательского Соглашения
ИП «KTRADE» предлагает Пользователю услуги по использованию сайта «KTRADE.KZ»   на условиях, являющихся предметом настоящего Соглашения. Соглашение может быть изменено администрацией сайта «KTRADE.KZ» без какого-либо специального уведомления. Наиболее актуальная версия Пользовательского Соглашения всегда находится на сайте .
2. Описание услуг
Сайт «KTRADE.KZ»   (далее сайт), обеспечивает доступ клиентов к веб-интерфейсу системы услуг связанных с деятельностью ИП «KTRADE». Услуги сайта предоставляются Пользователям, имеющим доступ к сети Интернет, для работы с веб-интерфейсом (браузером, предпочтительно Google Chrome), на основе настоящего Соглашения.
3. Вступление Пользовательского Соглашения в силу.
Настоящее Соглашение вступает в силу путем выражения Пользователем согласия с его условиями в форме нажатия Пользователем элемента управления веб-интерфейса «Я принимаю условия соглашения», помещенным под текстом Соглашения.
4. Обязательства Пользователя по регистрации, пароль и безопасность.
4.1. Пользователь должен пройти процедуру регистрации:
4.1.1. Выразить согласие с условиями настоящего Соглашения, путем, описанным в пункте 3.
4.1.2. Заполнить Регистрационную Форму;
4.2. Пользователь соглашается предоставить правдивую, точную и полную информацию о себе по вопросам, предлагаемым в Регистрационной Форме. Если Пользователь предоставляет неверную информацию или у ИП «KTRADE» есть серьезные основания полагать, что предоставленная Пользователем информация неверна, неполна или неточна, ИП «KTRADE» имеет право отказать Пользователю в использовании сайта.
4.3. По завершении процесса регистрации в течение 2 рабочих дней проверяется правильность заполненной заявки на регистрацию и заказы отправляются в работу. Пользователь несет ответственность за сохранность своего пароля, а также за все, что будет сделано на сайте под паролем Пользователя.
5. Поведение зарегистрированного пользователя
5.1. Пользователь понимает и принимает, что он несет полную ответственность за достоверность информации, вводимой на сайте «KTRADE.KZ».
5.2. Пользователь обязуется не использовать сайт не по назначению, описанному в пункте 2.
5.3. Пользователь уведомлен и соглашается с тем, что в случае возникновения сомнений у ИП «KTRADE» в правильности переданных данных, последний вправе не принимать переданные данные к оформлению заказов.
6. Некоммерческое использование
Пользователь соглашается не воспроизводить, не повторять и не копировать, не продавать и не перепродавать, а также не использовать для каких-либо коммерческих целей какие-либо части сайта. ИП «KTRADE» не несет ответственности по договорам между Пользователем и третьими лицами.
7. Общие положения об использовании
Пользователь признает, что ИП «KTRADE» может поменять правила и ограничения пользованием сайта при оформлении заказов в любое время без предварительного уведомления.
8. Прекращение регистрации
8.1. Пользователь согласен с тем, что ИП «KTRADE» оставляет за собой право прекратить действие пароля Пользователя по нескольким причинам: неоплаченные счета за полученные посылки, большое количество возвратов товара надлежащего и/или ненадлежащего качества. Предоставляя услуги по пользованию сайтом на безвозмездной основе, ИП «KTRADE» также может в любой момент прекратить работу всего сайта либо его разделов без предварительного уведомления.
8.2. Пользователь имеет право расторгнуть отношения с ИП «KTRADE» и отказаться от услуг сайта, обратившись в офис ИП «KTRADE» по адресу: 100019, г.Караганда, ул.Кривогуза 5-311, по телефону: (7212) 41-90-61 или по электронной почте: office@ktrade.kz.
9. Общая информация
9.1. Настоящее Соглашение является юридически обязывающим договором между Пользователем и ИП «KTRADE» и регламентирует пользование Пользователем услугами сайта.
9.2. Пользователь и ИП «KTRADE» соглашаются на то, что все возможные споры по поводу настоящего Соглашения будут разрешаться согласно Законодательству Республики Казахстан.
10. Информационная безопасность
10.1. ИП «KTRADE» обязуется держать втайне от посторонних лиц, не связанных с процессом обмена данными, пароль доступа и другие персональные данные Пользователя, за исключением случаев, предусмотренных Законодательством Республики Казахстан.
10.2. Пользователь обязуются хранить в тайне свой пароль доступа.
10.3. Пользователь не имеет право осуществлять доступ к любой другой информации ИП «KTRADE», помимо собственной информации Пользователя в базе данных ИП «KTRADE», а также общедоступной информации на сайте.
11. Перерывы в оказании услуг сайта.
ИП «KTRADE» имеет право производить профилактические работы с временным приостановлением предоставления услуг на сайте.
								</textarea>
                            </div>                          
                            <div>
                                <asp:ValidationSummary ID="RegisterValidationSummary" runat="server" ValidationGroup="RegisterValidationGroup" />
                            </div>                            
                            <asp:Button ID="Register" runat="server" Text="Зарегистрироваться" ValidationGroup="RegisterValidationGroup" onclick="Register_Click" />
                </asp:View>
                <asp:View ID="CompleteView" runat="server">
                    <h2>Регистрация завершена успешно!</h2>
                    <p>Благодарим вас за регистрацию, теперь вы можете войти на сайт, при помощи формы в правом верхнем углу страницы.</p>
                </asp:View>
                <asp:View ID="ErrorView" runat="server">
                    <h2><font color="red">Ошибка регистрации!</font></h2>
                    <p>При регистрации произошел сбой...</p>
                    <p>Рекомендуем вам попробовать еще раз через некоторое время.</p>
                    <p>В случае повтореня ошибки убедительная просьба - сообщить нам об этом.</p>
                </asp:View>
            </asp:MultiView>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress ID="RegisterUpdateProgress" runat="server" AssociatedUpdatePanelID="RegisterUpdatePanel">
        <ProgressTemplate>
            <div class="Warning">
                <asp:Image ID="LoadImage1" runat="server" ImageUrl="~/Images/LoadingProgressCircle.gif" />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
</asp:Content>


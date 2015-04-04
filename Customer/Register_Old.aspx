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


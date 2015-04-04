<%@ Page Title="" Language="C#" MasterPageFile="~/SideModulesDefault.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade - необходима авторизация</title>
    <style>
    	div.register
    	{
    		position:relative;
    		top:0px;
    		left:0px;
    	}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	
    <h2>Требуется авторизация</h2>
    <img src="Images/Lock_64.png" alt="Замок" />
    <p>Для оформления заказов через сайт необходимо авторизироваться!</p>
    <p>Если вы еще не зарегистрированны в качестве нашего покупателя, вы можете сделать это прямо сейчас, воспользовавшись <a href="Customer/Register.aspx">формой регистрации</a>.</p>
	<a href="http://ktrade.kz/Customer/Register.aspx" style="text-decoration:none;"><div class="register">Регистрируйтесь >></div></a>
	
	<!--h2>Приносим свои извинения, на сайте идет устранение неполадок</h2-->
</asp:Content>


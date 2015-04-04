<%@ Page Title="" Language="C#" MasterPageFile="~/SideModulesOrders.master" AutoEventWireup="true" CodeFile="PaymentOnline.aspx.cs" Inherits="Admin_OrderManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade - оплата online</title>
    <link rel="Stylesheet" href="../css/Infos.css" />
    <link rel="Stylesheet" href="../css/Admin.css" />
    <style>
    td > input[type="submit"]
    {
		--height: 80px;
		width: 100px;
		font-size: large;
		font-weight:bold;
		color:Green;
		margin: 5px 5px 5px 5px;
	}
	td
	{
		vertical-align:middle;
	}
	div.tableholder
	{
		--width:500px;
	}
	td > input[type="radio"]
    {
		--position:relative;
		--top:-10px;
		--margin: 0px 5px 0px 5px;
	}
	span.description
	{
		position:relative;
		top:-10px;
	}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Оплата online:</h2>
    <!-- iframe frameborder="0" scrolling="no" width="700px" height="600px" src="PaymentForm.aspx"></iframe -->
    <p>Для того, чтобы провести оплату через сайт, пожалуйста выберите один из способов оплаты, укажите сумму и нажмите кнопку "Оплатить".</p>
	<div class="tableholder">
		<table>
			<caption>Способы оплаты</caption>			
		</table>
		<asp:RadioButtonList id="MethodsList" runat="server">
				<asp:ListItem>
					Z-Payment: VISA, MasterCard, WebMoney, Яндекс.Деньги
				</asp:ListItem>
		 </asp:RadioButtonList>
		 <table>		
			<tr>
				<td colspan="2">
					Сумма в евро:
					<asp:TextBox ID="AmmountInput" style="font-size:16px; width:70px;" runat="server"></asp:TextBox>
					<asp:Button ID="ZPaymentButton" runat="server" Text="Оплатить" onclick="ZPaymentButton_Click" />
				</td>
			</tr>
		</table>
		<span style="color:red; font-weight:bold;"><asp:RequiredFieldValidator ID="AmmountRequiredValidator" runat="server" ErrorMessage="Сумму укажите, пожалуйста." ControlToValidate="AmmountInput"><br/>Сумму укажите, пожалуйста.</asp:RequiredFieldValidator></span>
	</div>
</asp:Content>


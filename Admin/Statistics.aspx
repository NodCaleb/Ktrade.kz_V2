<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Statistics.aspx.cs" Inherits="Admin_OrderManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade_Admin - статистика</title>
    <link rel="Stylesheet" href="../css/Admin.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="StatisticsSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>"
        SelectCommand="        
            select
		convert (varchar(4), datepart (year, CreateDate)) + '-' + convert (varchar(2), datepart (MM, CreateDate)) as Period,
		count (*) as Registrations  
	    from aspnet_membership
	    group by
		datepart (year, CreateDate),
		datepart (MM, CreateDate)
	    order by
		datepart (year, CreateDate) desc,
		datepart (MM, CreateDate) desc">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="KtradeStatusesSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>" SelectCommand="SELECT KtradeStatus_id, KtradeStatusDescription FROM [KtradeStatuses]"></asp:SqlDataSource>
    <asp:ScriptManager ID="OrderManagementScriptManager" runat="server"></asp:ScriptManager>
    <h2>Статистика:</h2>
    <asp:GridView ID="StatisticsGridView" runat="server" GridLines="None"
	AutoGenerateColumns="False"
	DataSourceID="StatisticsSource" 
	EnableModelValidation="True"
	AllowSorting="True"
	AllowPaging="False"
	PagerSettings-Mode="NumericFirstLast"
	PageSize="15">
	<Columns>
	    <asp:TemplateField HeaderText="Период" SortExpression="Period">
		<ItemTemplate>
		    <asp:Label ID="PeriodLabel" runat="server" Text='<%# Bind("Period") %>'></asp:Label>
		</ItemTemplate>
	    </asp:TemplateField>
	    <asp:TemplateField HeaderText="Регистрации" SortExpression="Registrations">
		<ItemTemplate>
		    <asp:Label ID="RegistrationsLabel" runat="server" Text='<%# Bind("Registrations") %>'></asp:Label>
		</ItemTemplate>
	    </asp:TemplateField>
	</Columns>
	<SelectedRowStyle BackColor="#FFFF66" />
    </asp:GridView>
</asp:Content>


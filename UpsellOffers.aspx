<%@ Page Title="" Language="C#" MasterPageFile="~/SideModulesDefault.master" AutoEventWireup="true" CodeFile="UpsellOffers.aspx.cs" Inherits="UpsellOffers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade - горячие предложения</title>
    <link rel="Stylesheet" href="css/Offers.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:ScriptManager ID="UPsellOffersScriptManager" runat="server">
    </asp:ScriptManager>
    <asp:Panel id="NoOrderPanel" runat="server">
		<h2>Горячие предложения</h2>
	</asp:Panel>
	<asp:Panel id="OrderPanel" runat="server" visible="false">
		<h2>Спасибо</h2>
	    <p>Благодарим вас за заказ, ознакомьтесь, пожалуйста с нашими горячими предложениям. Вы можете прямо отсюда добавить в заказ то, что вас заинтересует, нажав на кнопку "заказать":</p>
	</asp:Panel>
	<asp:UpdatePanel ID="UpsellOffersUpdatePanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
        	<asp:SqlDataSource ID="UpsellOffersSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>"
				SelectCommand="
					select top 12
						UO.id,
						UO.Catalogue_id,
						C.CatalogueName,
						UO.Article_id,
						UO.ArticleNameDe,
						UO.ArticleNameRu,
						case UO.PriceOld when 0 then null else UO.PriceOld end as PriceOld,
						UO.PriceNew as PriceNew,
						UO.CatalogueURL as CatalogueURL,
						UO.ImageURL as ImageURL,
						UO.RecordDate as RecordDate,
						'~/Images/Logos/' + C.ImageLink as LogoURL,
						C.CatalogueName,
						'http://ktrade.kz/Customer/NewOrder.aspx?catalogue=' + convert (nvarchar(25), UO.Catalogue_id) + '&article=' + convert(nvarchar(25), Article_id) + '&name=' + convert(nvarchar(25), ArticleNameDe) + '&price=' + replace(convert(nvarchar(25), PriceNew), '.', ',') + '&URL=' + replace (CatalogueURL, 'http://', '') as OrderURL
					from
						UpsellOffers as UO with (nolock)
						join Catalogues as C with (nolock) on C.Catalogue_id = UO.Catalogue_id
					order by
						NEWID()"
				UpdateCommand="update UpsellOffers set Catalogue_id = @Catalogue_id, Article_id = @Article_id, ArticleNameDe = @ArticleNameDe, ArticleNameRu = @ArticleNameRu, PriceOld = replace(@PriceOld, ',', '.'), PriceNew = replace(@PriceNew, ',', '.'), CatalogueURL = @CatalogueURL, ImageURL = @ImageURL where id = @id">
			</asp:SqlDataSource>
			<asp:Repeater ID="UpsellOffersRepeater" runat="server" DataSourceID="UpsellOffersSource">
				<ItemTemplate>
					<div class="offer">
						<h3><%# Eval("ArticleNameRu")%></h3>
						<div>
							<asp:Image ID="ArticleImage" runat="server" ImageUrl='<%# Eval("ImageURL") %>' AlternateText="Photo" Title='<%# Eval("ArticleNameRu") %>' />
						</div>
						<div>
							<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("LogoURL") %>' AlternateText="Logo" Title='<%# Eval("CatalogueName") %>' />
							<p><strike><%# Eval("PriceOld", "{0:#,#.00 € <br/>}") %></strike>
							<b><%# Eval("PriceNew", "{0:#,#.00 €}") %></b></p>
						</div>
						<asp:HyperLink ID="ViewLink" runat="server" NavigateUrl='<%# Eval("CatalogueURL") %>' Target="_blank">Открыть</asp:HyperLink>
						<asp:HyperLink ID="OrderLink" runat="server" NavigateUrl='<%# Eval("OrderURL") %>'>Заказать</asp:HyperLink>
					</div>
				</ItemTemplate>
			</asp:Repeater>
		</ContentTemplate>
    </asp:UpdatePanel>
    <center><asp:LinkButton class="CTA" ID="UpsellOffersUpdateButton" runat="server" CausesValidation="False" Text="-= Показать еще! =-" onclick="MoreOffersButton_Click"></asp:LinkButton></center>
    <asp:UpdateProgress ID="UPsellOffersUpdateProgress" runat="server" AssociatedUpdatePanelID="UpsellOffersUpdatePanel">
        <ProgressTemplate>
            <div class="Warning">
                <asp:Image ID="LoadImage1" runat="server" ImageUrl="~/Images/LoadingProgressCircle.gif" />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
</asp:Content>


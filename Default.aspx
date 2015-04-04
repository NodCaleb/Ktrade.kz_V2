<%@ Page Title="" Language="C#" MasterPageFile="~/KtradeMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="Stylesheet" href="css/Start.css" />
	<link rel="Stylesheet" href="css/Offers.css" />
    <!-- title>Ktrade - заказ товаров по каталогам</title -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="NewsModuleSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>" SelectCommand="SELECT top 7 [Header], '~/News.aspx?Article='+convert(nvarchar(5), [id]) as [URL], [Teaser] FROM [News] where Published = 1 ORDER BY [CreationDate] DESC"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DiscountsModuleSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>" SelectCommand="select top 5 substring (Comment, 0, 50) as Comment, URL from Discounts order by CreationDate desc"></asp:SqlDataSource>
    <asp:SqlDataSource ID="ForumModuleSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>" SelectCommand="select top 5 T.Topic,'http://ktrade.kz/yaf/forum.aspx?g=posts&t=' + convert (nvarchar(5), T.TopicID) as URL from yaf_Topic as T join yaf_Message as M on M.TopicID = T.TopicID where T.Isdeleted = 0 group by T.TopicID, T.Topic order by MAX(M.Posted) desc"></asp:SqlDataSource>
	<asp:SqlDataSource ID="UpsellOffersSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>"
		SelectCommand="
			select top 3
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
				NEWID()">
	</asp:SqlDataSource>
	<asp:SqlDataSource ID="ProductsSource" runat="server" ConnectionString="<%$ ConnectionStrings:ShopConnectionString %>"
		ProviderName="<%$ ConnectionStrings:ShopConnectionString.ProviderName %>"
		SelectCommand="        
			select
				PD.Name,
				CONCAT('http://shop.ktrade.kz/image/', P.Image) as ImageURL,
				CONCAT('http://shop.ktrade.kz/index.php?route=product/product&amp;product_id=', P.product_id) as ProductURL,
				P.price
			from
				product as P
				join product_description as PD on PD.product_id = P.product_id
			where
				P.quantity > 0
				and P.status <> 'false'
			order by rand()
			limit 1
			">
	</asp:SqlDataSource>
	<div class="tripleblock" style="width:664px">
	    
          <asp:MultiView ID="LoginMultiView" ActiveViewIndex="0" runat="server">
               <asp:View ID="Anonimous" runat="server">
		    <iframe frameborder="0" scrolling="no" width="662px" height="335px" src="Carousel01.html"></iframe>
                    <a href="http://ktrade.kz/Customer/Register.aspx"><div class="register">Регистрируйтесь >></div></a>
               </asp:View>
               <asp:View ID="Authorised" runat="server">
                    <!-- a href="http://ktrade.kz/Customer/NewOrder.aspx"><div class="makeorder">Оформить заказ >></div></a -->
		    <a href="http://ktrade.kz/News.aspx?Article=655" style="top:0; left:0"><img src="http://ktrade.kz/images/card-acceptance.png" /></a>
               </asp:View>
          </asp:MultiView>
	</div>
    <!-- div class="fb-like-box" data-href="https://www.facebook.com/ktrade.kz" data-width="290" data-height="337" data-show-faces="true" data-stream="false" data-header="false" style="margin:5px; height:337px; width:290px;"></div -->
    <!--div class="block" style="width:290px; height:337px; border:0">
	<a href="http://ktrade.kz/News.aspx?Article=598" target="_blank" style="top:0; left:0;"><img src="http://i1321.photobucket.com/albums/u551/Eugene_Rozhkov/OpenDayModule_zpsb6dc9628.png" alt="" /></a>
    </div -->
    <div class="block" id="dsp" style="width:268px; height:315px; padding:10px; position:relative;">
	<div class="dailyspecialband"></div>
	<asp:SqlDataSource ID="DailySpecialsSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>"
	    SelectCommand="
		select top 1
		    DS.id,
		    DS.Article_id,
		    DS.ArticleNameDe,
		    DS.ArticleNameRu,
		    case DS.PriceOld when 0 then null else DS.PriceOld end as PriceOld,
		    DS.PriceNew as PriceNew,
		    DS.Sizes as Sizes,
		    DS.Colors as Colors,
		    DS.ImageURL as ImageURL,
		    'http://ktrade.kz/Customer/NewOrder.aspx?catalogue=199&article=' + DS.Article_id + '&name=' + DS.ArticleNameDe + '&price=' + replace(convert(varchar(10), PriceNew), '.', ',') as OrderURL
		from
		    DailySpecials as DS with (nolock)
		where
		    convert(date, RecordDate) <= dbo.getlocaldate()
		order by
		    DS.RecordDate desc">
	</asp:SqlDataSource>
	<asp:Repeater ID="DailySpecialsRepeater" runat="server" DataSourceID="DailySpecialsSource">
	    <ItemTemplate>
		<p style="margin:10px 0px 0px 0px; text-align:right; font-size: large;"><asp:Label ID="ArticleNameRuLabel" runat="server" Text='<%# Bind("ArticleNameRu") %>'></asp:Label></p>
		<table class="DailySpecialPreview"> 
		    <tbody> 
			    <tr> 
				<td rowspan="5"><asp:HyperLink ID="ViewLink4" runat="server" NavigateUrl="http://ktrade.kz/DailySpecial.aspx"><asp:Image ID="ItemImage" runat="server" ImageUrl='<%# Eval("ImageURL") %>' AlternateText='<%# Eval("ArticleNameRu") %>' Title='<%# Eval("ArticleNameRu") %>' style="max-width:130px" /></asp:HyperLink></td>
				<td><br/></td>
			    </tr>
			    <tr> 
				<td><strike><asp:Label ID="PriceOldLabel" runat="server" Text='<%# Bind("PriceOld", "{0:#,#.00 €}") %>'></asp:Label></strike><br/><asp:Label ID="PriceNewLabel" class="newprice" runat="server" Text='<%# Bind("PriceNew", "{0:#,#.00 €}") %>'></asp:Label> </td>
			    </tr>
			    <tr> 
				<td><b>Размеры:</b><br/><asp:Label ID="SizesLabel" runat="server" Text='<%# Bind("Sizes") %>'></asp:Label></td>
			    </tr>
			    <tr> 
				<td><b>Цвета:</b><br/><asp:Label ID="ColorsLabel" runat="server" Text='<%# Bind("Colors") %>'></asp:Label></td>
			    </tr>
			    <tr>
				<td></td>
			    </tr>
		    </tbody>
		</table>
		<iframe frameborder="0" scrolling="no" width="190px" height="32px" src="DayCountdown.html" style="margin-left:35px;"></iframe>
		<asp:HyperLink ID="ViewLink3" runat="server" NavigateUrl="http://ktrade.kz/DailySpecial.aspx">Открыть</asp:HyperLink>
		<asp:HyperLink ID="OrderLink" runat="server" NavigateUrl='<%# Eval("OrderURL") %>'>Заказать</asp:HyperLink>
	    </ItemTemplate>
	</asp:Repeater>
    </div>
    <div class="block">
	    <!-- h3>Внимание вопрос!</h3 -->
	    <a href="http://ktrade.myinsales.ru/" target="_blank" style="top:0; left:0;"><img src="http://ktrade.kz/images/ShopBanner.png" alt="" /></a>
    </div>
    <div class="tripleblock">
    	<h3>Горячие предложения</h3>
        <!--iframe frameborder="0" scrolling="no" width="712px" style="padding-left:10px" height="307px" src="OffersCarousel.aspx"></iframe-->
        <asp:Repeater ID="OffersRepeater" runat="server" DataSourceID="UpsellOffersSource">
			<ItemTemplate>
				<div class="offer">
					<h3><asp:HyperLink ID="ViewLink1" runat="server" NavigateUrl='<%# Eval("CatalogueURL") %>' Target="_blank"><%# Eval("ArticleNameRu")%></asp:HyperLink></h3>
					<div>
						<asp:HyperLink ID="ViewLink2" runat="server" NavigateUrl='<%# Eval("CatalogueURL") %>' Target="_blank"><asp:Image ID="ArticleImage" runat="server" ImageUrl='<%# Eval("ImageURL") %>' AlternateText="Photo" Title='<%# Eval("ArticleNameRu") %>' /></asp:HyperLink>
					</div>
					<div>
						<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("LogoURL") %>' AlternateText="Logo" Title='<%# Eval("CatalogueName") %>' />
						<p><strike><%# Eval("PriceOld", "{0:#,#.00 € <br/>}") %></strike>
						<b><%# Eval("PriceNew", "{0:#,#.00 €}") %></b></p>
					</div>
					<asp:HyperLink ID="ViewLink3" runat="server" NavigateUrl='<%# Eval("CatalogueURL") %>' Target="_blank">Открыть</asp:HyperLink>
					<asp:HyperLink ID="OrderLink" runat="server" NavigateUrl='<%# Eval("OrderURL") %>'>Заказать</asp:HyperLink>
				</div>
			</ItemTemplate>
		</asp:Repeater>
		<a href="http://ktrade.kz/UpsellOffers.aspx" style="color:#5500b4">Еще&gt;&gt;&gt;</a>
    </div>
    
    <div class="superblock" id="teal">
        <h3>Новое на портале</h3>
        <div>
			<asp:Repeater ID="NewsModuleRepeater" runat="server" DataSourceID="NewsModuleSource">
				<ItemTemplate>
					<h3><asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("URL") %>' runat="server"><%# Eval("Header") %></asp:HyperLink></h3>
					<p><%# Eval("Teaser") %><asp:HyperLink ID="HyperLink2" NavigateUrl='<%# Eval("URL") %>' runat="server">&gt;&gt;&gt;</asp:HyperLink></p>					
				</ItemTemplate>
			</asp:Repeater>
        </div>
    </div>
	<div class="block">
        <!--h3>Внимание вопрос!</h3-->
        <%--<iframe width="100%" height="333" scrolling="no" frameborder="0" hspace="0" vspace="0" marginheight="0" marginwidth="0" allowtransparency="true" name="rotator994523" id="rotator994523" src="http://www.finance1.ru/rotator/partners/0000001/?reffer=nodcaleb"></iframe>--%>
        <%--<iframe width="232" height="335" src="http://www.piter.com/partnership/affiliate/get_books_list_html_code.php?books_count=2&block_orientation=v&section_id[]=&background_block=ffffff&border_color=90b7ca&link_color=000000&text_color=da4500&button_color=8485c1&partner_id=4271" scrolling="no" frameborder="0"></iframe>--%>
        <!-- Flip.kz PartnerCode #474 -->
        <%--<script type="text/javascript">    document.write('<scr' + 'ipt charset="utf-8" type="text/javascript" src="http://www.flip.kz/partner474.js?' + Math.round(Math.random() * 100000) + '"></scr' + 'ipt>');</script>--%>
        <!-- // Flip.kz PartnerCode #474 -->
        <!--iframe frameborder="0" scrolling="no" height="333" width="230" style="border:1px solid #999999;margin:0px;" src="http://ozon.sterno.ru/widget/home.html?partner=nod_caleb"></iframe-->
        <!-- Яндекс.Директ -->
		<!--div id="yandex_ad"></div>
		<script type="text/javascript">
		(function(w, d, n, s, t) {
			w[n] = w[n] || [];
			w[n].push(function() {
				Ya.Direct.insertInto(92468, "yandex_ad", {
					site_charset: "windows-1251",
					ad_format: "direct",
					type: "200x300",
					site_bg_color: "FFFFFF",
					header_bg_color: "6699CC",
					title_color: "006699",
					url_color: "006699",
					text_color: "000000",
					hover_color: "6699CC",
					favicon: true
				});
			});
			t = d.documentElement.firstChild;
			s = d.createElement("script");
			s.type = "text/javascript";
			s.src = "http://an.yandex.ru/system/context.js";
			s.setAttribute("async", "true");
			t.insertBefore(s, t.firstChild);
		})(window, document, "yandex_context_callbacks");
		</script-->
		<!-- poll pollservice.ru begin >
		<script type="text/javascript" src="http://pollservice.ru/js/w/4.0/base.js"></script>
		<div class="pollservice-poll" data-key="0x76f6zvd6"></div>
		< poll pollservice.ru end -->
		<a href="http://gowest.kz/index.php/poleznaya-informatsiya/kak-eto-voobshche-rabotaet" target="_blank" style="top:0; left:0;"><img src="http://ktrade.kz/images/gowest-module.png" alt="" /></a>
		<!--a href="http://ktrade.kz/News.aspx?Article=482" target="_blank" style="top:0; left:0;"><img src="http://ktrade.kz/images/Tasbulak_module.png" alt="" /></a-->
    </div>
	<div class="block" id="green">
        <h3>Скидки и акции</h3>
        <asp:Repeater ID="DiscountsModuelRepeater" runat="server" DataSourceID="DiscountsModuleSource">
            <HeaderTemplate>
                <ul>
            </HeaderTemplate>
            <ItemTemplate>
                <li>
                    <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("URL") %>' Target="_blank" runat="server"><%# Eval("Comment") %></asp:HyperLink>
                </li>
            </ItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    <div class="block" id="purple">
        <h3>Свежее на форуме</h3>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ForumModuleSource">
            <HeaderTemplate>
                <ul>
            </HeaderTemplate>
            <ItemTemplate>
                <li>
                    <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("URL") %>' Target="_blank" runat="server"><%# Eval("Topic") %></asp:HyperLink>
                </li>
            </ItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    <div class="tripleblock">
    	<h3>Горячие предложения</h3>
        <!--iframe frameborder="0" scrolling="no" width="100%" height="333px" src="Carousel02.html"></iframe-->
        <!--iframe frameborder="0" scrolling="no" width="712px" style="margin-left:10px" height="307px" src="OffersCarousel.aspx"></iframe-->
		<asp:Repeater ID="OffersRepeater2" runat="server" DataSourceID="UpsellOffersSource">
			<ItemTemplate>
				<div class="offer">
					<h3><asp:HyperLink ID="ViewLink1" runat="server" NavigateUrl='<%# Eval("CatalogueURL") %>' Target="_blank"><%# Eval("ArticleNameRu")%></asp:HyperLink></h3>
					<div>
						<asp:HyperLink ID="ViewLink2" runat="server" NavigateUrl='<%# Eval("CatalogueURL") %>' Target="_blank"><asp:Image ID="ArticleImage" runat="server" ImageUrl='<%# Eval("ImageURL") %>' AlternateText="Photo" Title='<%# Eval("ArticleNameRu") %>' /></asp:HyperLink>
					</div>
					<div>
						<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("LogoURL") %>' AlternateText="Logo" Title='<%# Eval("CatalogueName") %>' />
						<p><strike><%# Eval("PriceOld", "{0:#,#.00 € <br/>}") %></strike>
						<b><%# Eval("PriceNew", "{0:#,#.00 €}") %></b></p>
					</div>
					<asp:HyperLink ID="ViewLink3" runat="server" NavigateUrl='<%# Eval("CatalogueURL") %>' Target="_blank">Открыть</asp:HyperLink>
					<asp:HyperLink ID="OrderLink" runat="server" NavigateUrl='<%# Eval("OrderURL") %>'>Заказать</asp:HyperLink>
				</div>
			</ItemTemplate>
		</asp:Repeater>
		<a href="http://ktrade.kz/UpsellOffers.aspx" style="color:#5500b4">Еще&gt;&gt;&gt;</a>
    </div>    
    <!-- div><img src="http://ktrade.kz/images/Umbrellas.png" alt="Весна пришла" title="Весна пришла"/></div -->
</asp:Content>


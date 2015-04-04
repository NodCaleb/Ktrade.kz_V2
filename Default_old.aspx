<%@ Page Title="" Language="C#" MasterPageFile="~/KtradeMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="Stylesheet" href="css/Start.css" />
    <title>Ktrade - заказ товаров по каталогам</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="NewsModuleSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>" SelectCommand="SELECT top 5 [Header], '~/News.aspx?Article='+convert(nvarchar(5), [id]) as [URL], [Teaser] FROM [News] where Published = 1 ORDER BY [CreationDate] DESC"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DiscountsModuleSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>" SelectCommand="select top 5 substring (Comment, 0, 50) as Comment, URL from Discounts order by CreationDate desc"></asp:SqlDataSource>
    <asp:SqlDataSource ID="ForumModuleSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>" SelectCommand="select top 5 T.Topic,'http://ktrade.kz/yaf/forum.aspx?g=posts&t=' + convert (nvarchar(5), T.TopicID) as URL from yaf_Topic as T join yaf_Message as M on M.TopicID = T.TopicID where T.Isdeleted = 0 group by T.TopicID, T.Topic order by MAX(M.Posted) desc"></asp:SqlDataSource>

    <div class="tripleblock">
    	<h3>Горячие предложения</h3>
        <iframe frameborder="0" scrolling="no" width="712px" style="padding-left:10px" height="307px" src="OffersCarousel.aspx"></iframe>
    </div>
    <div class="fb-like-box" data-href="http://www.facebook.com/ktrade.kz" data-width="234" data-height="337" data-show-faces="true" data-stream="false" data-header="false" style="margin:5px"></div>
    
    <div class="doubleblock" id="teal">
        <h3>Новое на портале</h3>
        <asp:Repeater ID="NewsModuleRepeater" runat="server" DataSourceID="NewsModuleSource">
            <HeaderTemplate>
                <ul>
            </HeaderTemplate>
            <ItemTemplate>
                <li>
                    <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("URL") %>' runat="server"><%# Eval("Header") %></asp:HyperLink>
                    <p>'<%# Eval("Teaser") %>'</p>
                </li>
            </ItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>
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
    <div class="adblock">
        <%--<h3>Реклама</h3>--%>
        <%--<iframe width="100%" height="333" scrolling="no" frameborder="0" hspace="0" vspace="0" marginheight="0" marginwidth="0" allowtransparency="true" name="rotator994523" id="rotator994523" src="http://www.finance1.ru/rotator/partners/0000001/?reffer=nodcaleb"></iframe>--%>
        <%--<iframe width="232" height="335" src="http://www.piter.com/partnership/affiliate/get_books_list_html_code.php?books_count=2&block_orientation=v&section_id[]=&background_block=ffffff&border_color=90b7ca&link_color=000000&text_color=da4500&button_color=8485c1&partner_id=4271" scrolling="no" frameborder="0"></iframe>--%>
        <!-- Flip.kz PartnerCode #474 -->
        <%--<script type="text/javascript">    document.write('<scr' + 'ipt charset="utf-8" type="text/javascript" src="http://www.flip.kz/partner474.js?' + Math.round(Math.random() * 100000) + '"></scr' + 'ipt>');</script>--%>
        <!-- // Flip.kz PartnerCode #474 -->
        <iframe frameborder="0" scrolling="no" height="333" width="230" style="border:1px solid #999999;margin:0px;" src="http://ozon.sterno.ru/widget/home.html?partner=nod_caleb"></iframe>
    </div>
    <div class="tripleblock">
    	<h3>Горячие предложения</h3>
        <!--iframe frameborder="0" scrolling="no" width="100%" height="333px" src="Carousel02.html"></iframe-->
        <iframe frameborder="0" scrolling="no" width="712px" style="margin-left:10px" height="307px" src="OffersCarousel.aspx"></iframe>
    </div>
</asp:Content>


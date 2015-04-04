<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShopCarousel.aspx.cs" Inherits="ShopCarousel" ValidateRequest="false" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="Stylesheet" href="css/Offers.css" />
		<link rel="Stylesheet" href="css/Carousel.css" />
		<script src="js/jquery-1.7.js"></script>
		<script src="js/jquery.carousel.min.js"></script>
		<script>
			 $(document).ready(function(){
				$("a#aaa").click(function(event){
				 event.preventDefault();
				 $("img#im01").show("slow");
			   });
			 });
		</script>
		<script type="text/javascript">
			$(function(){
				$("div.foo").carousel({nextBtn:false, prevBtn:false, autoSlide: true, autoSlideInterval: 5000, animSpeed: "slow", effect:"scroll"});
			});
		</script>
	</head>
	<body>
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
				order by rand()
				limit 3
				">
		</asp:SqlDataSource>
		<div class="foo">
			<div>
				<div>
					<asp:Repeater ID="Repeater1" runat="server" DataSourceID="ProductsSource">
						<ItemTemplate>
							<div class="shopoffer">
								<h3><asp:HyperLink ID="OrderLink1" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank"><%# Eval("Name")%></asp:HyperLink></h3>
								<div>
									<asp:HyperLink ID="OrderLink2" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank"><asp:Image ID="NoreturnSign" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Title='<%# Eval("Name") %>' /></asp:HyperLink>
								</div>
								<div>
									<b><%# Eval("price", "{0:#,# 〒}") %></b></p>
								</div>
								<asp:HyperLink ID="OrderLink3" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank">Купить</asp:HyperLink>
							</div>
						</ItemTemplate>
					</asp:Repeater>
				</div>
				<div>
					<asp:Repeater ID="Repeater2" runat="server" DataSourceID="ProductsSource">
						<ItemTemplate>
							<div class="shopoffer">
								<h3><asp:HyperLink ID="OrderLink4" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank"><%# Eval("Name")%></asp:HyperLink></h3>
								<div>
									<asp:HyperLink ID="OrderLink5" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank"><asp:Image ID="NoreturnSign" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Title='<%# Eval("Name") %>' /></asp:HyperLink>
								</div>
								<div>
									<b><%# Eval("price", "{0:#,# 〒}") %></b></p>
								</div>
								<asp:HyperLink ID="OrderLink6" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank">Купить</asp:HyperLink>
							</div>
						</ItemTemplate>
					</asp:Repeater>
				</div>
				<div>
					<asp:Repeater ID="Repeater3" runat="server" DataSourceID="ProductsSource">
						<ItemTemplate>
							<div class="shopoffer">
								<h3><asp:HyperLink ID="OrderLink7" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank"><%# Eval("Name")%></asp:HyperLink></h3>
								<div>
									<asp:HyperLink ID="OrderLink8" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank"><asp:Image ID="NoreturnSign" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Title='<%# Eval("Name") %>' /></asp:HyperLink>
								</div>
								<div>
									<b><%# Eval("price", "{0:#,# 〒}") %></b></p>
								</div>
								<asp:HyperLink ID="OrderLink9" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank">Купить</asp:HyperLink>
							</div>
						</ItemTemplate>
					</asp:Repeater>
				</div>
				<div>
					<asp:Repeater ID="Repeater4" runat="server" DataSourceID="ProductsSource">
						<ItemTemplate>
							<div class="shopoffer">
								<h3><asp:HyperLink ID="OrderLink10" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank"><%# Eval("Name")%></asp:HyperLink></h3>
								<div>
									<asp:HyperLink ID="OrderLink11" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank"><asp:Image ID="NoreturnSign" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Title='<%# Eval("Name") %>' /></asp:HyperLink>
								</div>
								<div>
									<b><%# Eval("price", "{0:#,# 〒}") %></b></p>
								</div>
								<asp:HyperLink ID="OrderLink12" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank">Купить</asp:HyperLink>
							</div>
						</ItemTemplate>
					</asp:Repeater>
				</div>
				<div>
					<asp:Repeater ID="Repeater5" runat="server" DataSourceID="ProductsSource">
						<ItemTemplate>
							<div class="shopoffer">
								<h3><asp:HyperLink ID="OrderLink13" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank"><%# Eval("Name")%></asp:HyperLink></h3>
								<div>
									<asp:HyperLink ID="OrderLink14" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank"><asp:Image ID="NoreturnSign" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Title='<%# Eval("Name") %>' /></asp:HyperLink>
								</div>
								<div>
									<b><%# Eval("price", "{0:#,# 〒}") %></b></p>
								</div>
								<asp:HyperLink ID="OrderLink15" runat="server" NavigateUrl='<%# Eval("ProductURL") %>' target="_blank">Купить</asp:HyperLink>
							</div>
						</ItemTemplate>
					</asp:Repeater>
				</div>
			</div>
		</div>
	</body>
</html>
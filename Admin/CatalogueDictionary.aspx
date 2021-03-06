﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="CatalogueDictionary.aspx.cs" Inherits="Admin_CatalogueDictionary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade_Admin - справочник каталогов</title>
    <link rel="Stylesheet" href="../css/Dictionary.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="CataloguesListSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>" SelectCommand="select Catalogue_id, CatalogueName from Catalogues order by CatalogueName"></asp:SqlDataSource>
    <asp:SqlDataSource ID="CatalogueDetailsSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>"
        DeleteCommand="DELETE FROM [Catalogues] WHERE [Catalogue_id] = @Catalogue_id"
        InsertCommand="INSERT INTO [Catalogues] ([CatalogueName], [Link], [CatalogueDescription], [ImageLink], [Active], [Men], [Women], [Chilrden], [Shoes], [Chubby], [Toys], [Sport], [Home], [Leather], [Makeup], [Bed], [Jems], [PriceIndex], [NoReturn], [MinPrice], [Weightfee], [ArticleRegularExpression], [ArticleComment]) VALUES (@CatalogueName, @Link, @CatalogueDescription, @ImageLink, @Active, @Men, @Women, @Chilrden, @Shoes, @Chubby, @Toys, @Sport, @Home, @Leather, @Makeup, @Bed, @Jems, @PriceIndex, @NoReturn, @MinPrice, @WeightFee, @ArticleRegularExpression, @ArticleComment)"
        SelectCommand="select Catalogue_id, CatalogueName, Link, ImageLink, CatalogueDescription, '~/Images/Logos/' +  ImageLink as [ImageView], Active, Men, Women, Chilrden, Shoes, Chubby, Toys, Sport, Home, Leather, Makeup, Bed, Jems, PriceIndex, NoReturn, MinPrice, WeightFee, ArticleRegularExpression, ArticleComment from Catalogues WHERE ([Catalogue_id] = @Catalogue_id)"
        UpdateCommand="UPDATE [Catalogues] SET [CatalogueName] = @CatalogueName, [Link] = @Link, [CatalogueDescription] = @CatalogueDescription, [ImageLink] = @ImageLink, [Active] = @Active, [Men] = @Men, [Women] = @Women, [Chilrden] = @Chilrden, [Shoes] = @Shoes, [Chubby] = @Chubby, [Toys] = @Toys, [Sport] = @Sport, [Home] = @Home, [Leather] = @Leather, [Makeup] = @Makeup, [Bed] = @Bed, [Jems] = @Jems, [PriceIndex] = @PriceIndex, [NoReturn] = @NoReturn, [MinPrice] = @MinPrice, [WeightFee] = @WeightFee, [ArticleRegularExpression] = @ArticleRegularExpression, [ArticleComment] = @ArticleComment WHERE [Catalogue_id] = @Catalogue_id"
        OnInserted="CatalogueDetailsSource_Inserted">
        <DeleteParameters>
            <asp:Parameter Name="Catalogue_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CatalogueName" Type="String" />
            <asp:Parameter Name="Link" Type="String" />
            <asp:Parameter Name="CatalogueDescription" Type="String" />
            <asp:Parameter Name="ImageLink" Type="String" />
            <asp:Parameter Name="Active" Type="Boolean" />
            <asp:Parameter Name="Men" Type="Boolean" />
            <asp:Parameter Name="Women" Type="Boolean" />
            <asp:Parameter Name="Chilrden" Type="Boolean" />
            <asp:Parameter Name="Shoes" Type="Boolean" />
            <asp:Parameter Name="Chubby" Type="Boolean" />
            <asp:Parameter Name="Toys" Type="Boolean" />
            <asp:Parameter Name="Sport" Type="Boolean" />
            <asp:Parameter Name="Home" Type="Boolean" />
            <asp:Parameter Name="Leather" Type="Boolean" />
            <asp:Parameter Name="Makeup" Type="Boolean" />
            <asp:Parameter Name="Bed" Type="Boolean" />
            <asp:Parameter Name="Jems" Type="Boolean" />
            <asp:Parameter Name="NoReturn" Type="Boolean" />
            <asp:Parameter Name="PriceIndex" Type="Decimal" />
            <asp:Parameter Name="MinPrice" Type="Decimal" />
            <asp:Parameter Name="WeightFee" Type="Decimal" />
            <asp:Parameter Name="ArticleRegularExpression" Type="String" />
            <asp:Parameter Name="ArticleComment" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="CatalogueDropDownList" Name="Catalogue_id" PropertyName="SelectedValue" DefaultValue="0" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CatalogueName" Type="String" />
            <asp:Parameter Name="Link" Type="String" />
            <asp:Parameter Name="CatalogueDescription" Type="String" />
            <asp:Parameter Name="ImageLink" Type="String" />
            <asp:Parameter Name="Active" Type="Boolean" />
            <asp:Parameter Name="Men" Type="Boolean" />
            <asp:Parameter Name="Women" Type="Boolean" />
            <asp:Parameter Name="Chilrden" Type="Boolean" />
            <asp:Parameter Name="Shoes" Type="Boolean" />
            <asp:Parameter Name="Chubby" Type="Boolean" />
            <asp:Parameter Name="Toys" Type="Boolean" />
            <asp:Parameter Name="Sport" Type="Boolean" />
            <asp:Parameter Name="Home" Type="Boolean" />
            <asp:Parameter Name="Leather" Type="Boolean" />
            <asp:Parameter Name="Makeup" Type="Boolean" />
            <asp:Parameter Name="Bed" Type="Boolean" />
            <asp:Parameter Name="Jems" Type="Boolean" />
            <asp:Parameter Name="NoReturn" Type="Boolean" />
            <asp:Parameter Name="PriceIndex" Type="Decimal" />
            <asp:Parameter Name="Catalogue_id" Type="Int32" />
            <asp:Parameter Name="MinPrice" Type="Decimal" />
            <asp:Parameter Name="WeightFee" Type="Decimal" />
            <asp:Parameter Name="ArticleRegularExpression" Type="String" />
            <asp:Parameter Name="ArticleComment" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ScriptManager ID="CatalogueDictionaryScriptManager" runat="server"></asp:ScriptManager>
    <h2>Каталоги</h2>
    <asp:UpdatePanel ID="CatalogueDetailsUpdatePanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="dictionaryheader">
                <asp:DropDownList ID="CatalogueDropDownList" runat="server" DataValueField="Catalogue_id" DataTextField="CatalogueName" DataSourceID="CataloguesListSource" AutoPostBack="True"></asp:DropDownList>
            </div>
            <asp:DetailsView ID="CatalogueDetailsView" runat="server"
                AutoGenerateRows="False"
                DataKeyNames="Catalogue_id" 
                DataSourceID="CatalogueDetailsSource"
                GridLines="None"
                EnableModelValidation="True">
                 <Fields>
                    <asp:TemplateField HeaderText="Логотип">
                        <EditItemTemplate>
                            <asp:TextBox ID="LogoTextBox" runat="server" Text='<%# Bind("ImageLink") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="LogoTextBox" runat="server" Text='<%# Bind("ImageLink") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="LogoImage" runat="server" ImageUrl='<%# Bind("ImageView") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" SortExpression="CatalogueName">
                        <EditItemTemplate>
                            <asp:Label ID="IDLabel01" runat="server" Text='<%# Bind("Catalogue_id") %>'></asp:Label>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:Label ID="IDLabel01" runat="server" Text='<%# Bind("Catalogue_id") %>'></asp:Label>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="IDLabel01" runat="server" Text='<%# Bind("Catalogue_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Наименование" SortExpression="CatalogueName">
                        <EditItemTemplate>
                            <asp:TextBox ID="CatalogueNameTextBox" runat="server" Text='<%# Bind("CatalogueName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="CatalogueNameTextBox" runat="server" Text='<%# Bind("CatalogueName") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="CatalogueNameLabel" runat="server" Text='<%# Bind("CatalogueName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="URL" SortExpression="Link">
                        <EditItemTemplate>
                            <asp:TextBox ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <a href='<%# Eval("Link") %>'><%# Eval("Link") %></a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Описание" SortExpression="CatalogueDescription">
                        <EditItemTemplate>
                            <asp:TextBox ID="CatalogueDescriptionTextBox" runat="server" TextMode="Multiline" Text='<%# Bind("CatalogueDescription") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="CatalogueDescriptionTextBox" runat="server" TextMode="Multiline" Text='<%# Bind("CatalogueDescription") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:TextBox ID="CatalogueDescriptionTextBox" runat="server" TextMode="Multiline" Text='<%# Bind("CatalogueDescription") %>' ReadOnly="True"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Активный" SortExpression="Active">
                        <EditItemTemplate>
                            <asp:CheckBox ID="ActiveCheckBox" runat="server" Checked='<%# Bind("Active") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="ActiveCheckBox" runat="server" Checked='<%# Bind("Active") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="ActiveCheckBox" runat="server" Checked='<%# Bind("Active") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Мужская одежда" SortExpression="Men">
                        <EditItemTemplate>
                            <asp:CheckBox ID="MenCheckBox" runat="server" Checked='<%# Bind("Men") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="MenCheckBox" runat="server" Checked='<%# Bind("Men") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="MenCheckBox" runat="server" Checked='<%# Bind("Men") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Женская одежда" SortExpression="Women">
                        <EditItemTemplate>
                            <asp:CheckBox ID="WomenCheckBox" runat="server" Checked='<%# Bind("Women") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="WomenCheckBox" runat="server" Checked='<%# Bind("Women") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="WomenCheckBox" runat="server" Checked='<%# Bind("Women") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Детская одежда" SortExpression="Chilrden">
                        <EditItemTemplate>
                            <asp:CheckBox ID="ChildrenCheckBox" runat="server" Checked='<%# Bind("Chilrden") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="ChildrenCheckBox" runat="server" Checked='<%# Bind("Chilrden") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="ChildrenCheckBox" runat="server" Checked='<%# Bind("Chilrden") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Обувь" SortExpression="Shoes">
                        <EditItemTemplate>
                            <asp:CheckBox ID="ShoesCheckBox" runat="server" Checked='<%# Bind("Shoes") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="ShoesCheckBox" runat="server" Checked='<%# Bind("Shoes") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="ShoesCheckBox" runat="server" Checked='<%# Bind("Shoes") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Одежда для полных дам" SortExpression="Chubby">
                        <EditItemTemplate>
                            <asp:CheckBox ID="ChubbyCheckBox" runat="server" Checked='<%# Bind("Chubby") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="ChubbyCheckBox" runat="server" Checked='<%# Bind("Chubby") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="ChubbyCheckBox" runat="server" Checked='<%# Bind("Chubby") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Все для детей" SortExpression="Toys">
                        <EditItemTemplate>
                            <asp:CheckBox ID="ToysCheckBox" runat="server" Checked='<%# Bind("Toys") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="ToysCheckBox" runat="server" Checked='<%# Bind("Toys") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="ToysCheckBox" runat="server" Checked='<%# Bind("Toys") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Все для спорта" SortExpression="Sport">
                        <EditItemTemplate>
                            <asp:CheckBox ID="SportCheckBox" runat="server" Checked='<%# Bind("Sport") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="SportCheckBox" runat="server" Checked='<%# Bind("Sport") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="SportCheckBox" runat="server" Checked='<%# Bind("Sport") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Все для дома и уюта" SortExpression="Home">
                        <EditItemTemplate>
                            <asp:CheckBox ID="HomeCheckBox" runat="server" Checked='<%# Bind("Home") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="HomeCheckBox" runat="server" Checked='<%# Bind("Home") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="HomeCheckBox" runat="server" Checked='<%# Bind("Home") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Кожаные изделия" SortExpression="Leather">
                        <EditItemTemplate>
                            <asp:CheckBox ID="LeatherCheckBox" runat="server" Checked='<%# Bind("Leather") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="LeatherCheckBox" runat="server" Checked='<%# Bind("Leather") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="LeatherCheckBox" runat="server" Checked='<%# Bind("Leather") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Косметика" SortExpression="Makeup">
                        <EditItemTemplate>
                            <asp:CheckBox ID="MakeupCheckBox" runat="server" Checked='<%# Bind("Makeup") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="MakeupCheckBox" runat="server" Checked='<%# Bind("Makeup") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="MakeupCheckBox" runat="server" Checked='<%# Bind("Makeup") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Постельное белье" SortExpression="Bed">
                        <EditItemTemplate>
                            <asp:CheckBox ID="BedCheckBox" runat="server" Checked='<%# Bind("Bed") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="BedCheckBox" runat="server" Checked='<%# Bind("Bed") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="BedCheckBox" runat="server" Checked='<%# Bind("Bed") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ювелирные украшения" SortExpression="Jems">
                        <EditItemTemplate>
                            <asp:CheckBox ID="JemsCheckBox" runat="server" Checked='<%# Bind("Jems") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="JemsCheckBox" runat="server" Checked='<%# Bind("Jems") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="JemsCheckBox" runat="server" Checked='<%# Bind("Jems") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Коэфициент наценки" SortExpression="PriceIndex">
                        <EditItemTemplate>
                            <asp:TextBox ID="PriceIndexTextBox" runat="server" Text='<%# Bind("PriceIndex") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="PriceIndexTextBox" runat="server" Text='<%# Bind("PriceIndex") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="PriceIndexLabel" runat="server" Text='<%# Bind("PriceIndex", "{0:#,#.00}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Без возвратов" SortExpression="NoReturn">
                        <EditItemTemplate>
                            <asp:CheckBox ID="NoreturnCheckBox" runat="server" Checked='<%# Bind("NoReturn") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="NoreturnCheckBox" runat="server" Checked='<%# Bind("NoReturn") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="NoreturnCheckBox" runat="server" Checked='<%# Bind("NoReturn") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Минимальная цена артикула" SortExpression="MinPrice">
                        <EditItemTemplate>
                            <asp:TextBox ID="MinPriceTextBox" runat="server" Text='<%# Bind("MinPrice") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="MinPriceTextBox" runat="server" Text='<%# Bind("MinPrice") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="MinPriceLabel" runat="server" Text='<%# Bind("MinPrice", "{0:#,#.00}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Стоимость доставки" SortExpression="WeightFee">
                        <EditItemTemplate>
                            <asp:TextBox ID="WeightFeeTextBox" runat="server" Text='<%# Bind("WeightFee") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="WeightFeeTextBox" runat="server" Text='<%# Bind("WeightFee") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="WeightFeeLabel" runat="server" Text='<%# Bind("WeightFee", "{0:#,#.00}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Формат артикула" SortExpression="ArticleRegularExpression">
                        <EditItemTemplate>
                            <asp:TextBox ID="ArticleRegularExpressionTextBox" runat="server" Text='<%# Bind("ArticleRegularExpression") %>'></asp:TextBox>
                            (<a href="http://goo.gl/96hQq0" target="_blank">?</a>)
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="ArticleRegularExpressionTextBox" runat="server" Text='<%# Bind("ArticleRegularExpression") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="ArticleRegularExpressionLabel" runat="server" Text='<%# Bind("ArticleRegularExpression") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Комментарий к формату артикула" SortExpression="ArticleComment">
                        <EditItemTemplate>
                            <asp:TextBox ID="ArticleCommentTextBox" runat="server" Text='<%# Bind("ArticleComment") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="ArticleCommentTextBox" runat="server" Text='<%# Bind("ArticleComment") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="ArticleCommentLabel" runat="server" Text='<%# Bind("ArticleComment") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Buttons/OK.png" CausesValidation="False" CommandName="Update" Title="OK" />
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Buttons/Cancel.png" CausesValidation="False" CommandName="Cancel" Title="Отмена" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Buttons/OK.png" CausesValidation="False" CommandName="Insert" Title="OK" />
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Buttons/Cancel.png" CausesValidation="False" CommandName="Cancel" Title="Отмена" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Buttons/Edit.png" CausesValidation="False" CommandName="Edit" Title="Редактировать" />
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Buttons/NewDoc.png" CausesValidation="False" CommandName="New" Title="Создать" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress ID="OrderDetailsUpdateProgress" runat="server" AssociatedUpdatePanelID="CatalogueDetailsUpdatePanel">
        <ProgressTemplate>
            <div class="Warning">
                <asp:Image ID="OrderDetailsLoadImage" runat="server" ImageUrl="~/Images/LoadingProgressCircle.gif" />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <%--<div class="scrollindex">
        <h3>Наименование</h3>
        <asp:GridView ID="CataloguesGridView" runat="server"
            DataSourceID="CataloguesListSource"
            EnableModelValidation="True"
            AutoGenerateColumns="False"
            GridLines="None"
            DataKeyNames="Catalogue_id">
            <Columns>
                <asp:TemplateField ItemStyle-HorizontalAlign="Left" ShowHeader="False" HeaderText="">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<% #Bind("CatalogueName") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <SelectedRowStyle BackColor="#FFFF66" />
        </asp:GridView>
    </div>--%>
</asp:Content>


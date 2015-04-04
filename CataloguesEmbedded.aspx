<%@ Page Title="" Language="C#" MasterPageFile="~/SideModulesDefault.master" AutoEventWireup="true" CodeFile="CataloguesEmbedded.aspx.cs" Inherits="Admin_EmbeddedDictionary" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade_Admin - вклеенные каталоги</title>
    <link rel="Stylesheet" href="css/Dictionary.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="EmbeddedListSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>" SelectCommand="select id, Header from EmbeddedCatalogues order by Header asc"></asp:SqlDataSource>
    <asp:SqlDataSource ID="EmbeddedCataloguesDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>" 
        SelectCommand="SELECT [id], [Header], [Code], [Published] FROM [EmbeddedCatalogues] WHERE [id] = @id">
        <SelectParameters>
            <asp:ControlParameter ControlID="EmbeddedDropDownList" Name="id" PropertyName="SelectedValue" DefaultValue="0" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ScriptManager ID="EmbeddedDictionaryScriptManager" runat="server"></asp:ScriptManager>
    <h2>"Бумажные" каталоги в сети</h2>
    <p>Эти каталоги расположены в интернете, но листаются, как бумажные. Если нажать на центр каталога, он раскрывается на весь экран.</p>
    <asp:UpdatePanel ID="CatalogueDetailsUpdatePanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="dictionaryheader">
                <b>Выберите каталог из списка:&nbsp;</b><asp:DropDownList ID="EmbeddedDropDownList" runat="server" DataValueField="id" DataTextField="Header" DataSourceID="EmbeddedListSource" AutoPostBack="True"></asp:DropDownList>
            </div>
            <asp:Repeater ID="EmbeddedRepeater" runat="server" DataSourceID="EmbeddedCataloguesDataSource">
                <ItemTemplate>
                    <%# Eval("Code") %>
                </ItemTemplate>
            </asp:Repeater>
            <%--<asp:DetailsView ID="EmbeddedCataloguesDetailsView"
                runat="server"
                AllowPaging="False" 
                AutoGenerateRows="False"
                DataKeyNames="id" 
                DataSourceID="EmbeddedCataloguesDataSource"
                EnableModelValidation="True" 
                GridLines="None" 
                oniteminserted="EmbeddedCataloguesDetailsView_ItemInserted">
                <Fields>
                    <asp:TemplateField HeaderText="Название" SortExpression="Header">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Header") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Header") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Header") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Код" SortExpression="Code">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Text='<%# Bind("Code") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Text='<%# Bind("Code") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Code") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Опубликован" SortExpression="Published">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Published") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Published") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Published") %>' 
                                Enabled="false" />
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
                    <%--<asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>--%>
        </ContentTemplate>
    </asp:UpdatePanel>

    <asp:UpdateProgress ID="OrderDetailsUpdateProgress" runat="server" AssociatedUpdatePanelID="CatalogueDetailsUpdatePanel">
        <ProgressTemplate>
            <div class="Warning">
                <asp:Image ID="OrderDetailsLoadImage" runat="server" ImageUrl="~/Images/LoadingProgressCircle.gif" />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
</asp:Content>


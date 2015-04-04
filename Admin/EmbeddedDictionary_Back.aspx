<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EmbeddedDictionary_Back.aspx.cs" Inherits="Admin_CatalogueDictionary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade_Admin - вклеенные каталоги</title>
    <link rel="Stylesheet" href="../css/Dictionary.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="EmbeddedListSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>" SelectCommand="select id, Header from EmbeddedCatalogues order by CreationDate desc"></asp:SqlDataSource>
    <asp:SqlDataSource ID="EmbeddedDetailsSource" runat="server" ConnectionString="<%$ ConnectionStrings:KtradeConnectionString %>"
        DeleteCommand="DELETE FROM [EmbeddedCatalogues] WHERE [id] = @id"
        InsertCommand="INSERT INTO [EmbeddedCatalogues] (Header, Code, Published) VALUES (@Header, @Code, 1)"
        SelectCommand="select id, Header, Code, Published from EmbeddedCatalogues WHERE ([id] = @id)"
        UpdateCommand="UPDATE [EmbeddedCatalogues] SET [Header] = @Header, [Code] = @Code  WHERE [id] = @id"
        OnInserted="CatalogueDetailsSource_Inserted">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Header" Type="String" />
            <asp:Parameter Name="Code" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="EmbeddedDropDownList" Name="id" PropertyName="SelectedValue" DefaultValue="0" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="Header" Type="String" />
            <asp:Parameter Name="Code" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ScriptManager ID="EmbeddedDictionaryScriptManager" runat="server"></asp:ScriptManager>
    <h2>Каталоги</h2>
    <asp:UpdatePanel ID="CatalogueDetailsUpdatePanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="dictionaryheader">
                <asp:DropDownList ID="EmbeddedDropDownList" runat="server" DataValueField="id" DataTextField="Header" DataSourceID="EmbeddedListSource" AutoPostBack="True"></asp:DropDownList>
            </div>
            <asp:DetailsView ID="EmbeddedDetailsView" runat="server"
                AutoGenerateRows="False"
                DataKeyNames="id" 
                DataSourceID="EmbeddedDetailsSource"
                GridLines="None"
                EnableModelValidation="True">
                 <Fields>
                    <asp:TemplateField HeaderText="Наименование" SortExpression="Header">
                        <EditItemTemplate>
                            <asp:TextBox ID="HeaderTextBox" runat="server" Text='<%# Bind("Header") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="HeaderTextBox" runat="server" Text='<%# Bind("Header") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="HeaderLabel" runat="server" Text='<%# Bind("Header") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Код" SortExpression="Code">
                        <EditItemTemplate>
                            <asp:TextBox ID="CodeTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("Code") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("Code") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="CodeLabel" runat="server" Text='<%# Bind("Code") %>'></asp:Label>
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
            DataKeyNames="id">
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


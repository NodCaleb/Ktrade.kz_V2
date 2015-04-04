<%@ Page Title="" Language="C#" MasterPageFile="~/SideModulesDefault.master" AutoEventWireup="true" CodeFile="CataloguesDownload.aspx.cs" Inherits="CataloguesDownload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade - каталоги товаров</title>
    <link rel="Stylesheet" href="css/Download.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Каталоги для скачивания</h2>
    <p>В этом разделе представлены каталоги в формате .pdf, которые вы можете сохраниь у себя на компьютере.</p>
    <p>Для просмотра вам понидобится программа для чтения файлов формата .pdf, например - <a href="http://www.adobe.com/products/reader.html" target="_blank">Adobe Reader</a></p>
    <div class="embedded"><a href="Elegance_Sale_FS11_RUS.pdf"><img src="images/Elegance_Sale_FS11_RUS_01.png" alt="Elegance" title="Скидочный каталог Elegance" /></a></div>
</asp:Content>


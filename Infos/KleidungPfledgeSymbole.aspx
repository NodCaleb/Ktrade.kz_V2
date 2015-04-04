<%@ Page Title="" Language="C#" MasterPageFile="~/SideModulesDefault.master" AutoEventWireup="true" CodeFile="KleidungPfledgeSymbole.aspx.cs" Inherits="KleidungPfledgeSymbole" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade - символы ухода за одеждой</title>
    <link rel="Stylesheet" href="../css/Infos.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Символы ухода за одеждой</h2>
    <p>Знание нижеприведенных символов очень важно, особенно при уходе за одеждой из высококачественных натуральных волокон, таких как шерсть, лен, шелк и т.д. Поэтому необходимо при заказе этих артикулов всегда обращать внимание на соответствующую маркировку. Символы на этикетках, прикрепляемых к одежде - это инструкции, выполнение которых позволит Вам добиться замечательных результатов при стирке и дольше сохранит Вашу одежду.</p>
     <table id="Wash" class="CareIconsTable">
	    <caption>Стирка</caption>
	    <tr><td><img src="../Images/CareIcons/Wash.png" alt="Wash" /></td><td>Можно стирать.</td></tr>
	    <tr><td><img src="../Images/CareIcons/SafeWash.png" width="56" height="41" alt="SafeWash" /></td><td>Щадящая стирка. Точно выдерживать температуру воды, не подвергать сильной механической обработке, при отжиме – медленный режим центрифуги.</td></tr>
	    <tr><td><img src="../Images/CareIcons/DelicateWash.png" alt="DelicateWash" /></td><td>Деликатная стирка. Большое количество воды, минимальная механическая обработка, быстрое полоскание.</td></tr>
	    <tr><td><img src="../Images/CareIcons/NoWash.png" alt="NoWash" /></td><td>Не стирать.</td></tr>
	    <tr><td><img src="../Images/CareIcons/ColdWash.png" alt="ColdWash" /></td><td>Стирать в холодной воде (до 30°C).</td></tr>
	    <tr><td><img src="../Images/CareIcons/WarmWash.png" alt="WarmWash" /></td><td>Стирать в теплой воде (до 40°C).</td></tr>
	    <tr><td><img src="../Images/CareIcons/HotWash.png" alt="HotWash" /></td><td>Стирать в горячей воде (50°C и выше).</td></tr>
	    <tr><td><img src="../Images/CareIcons/HandWash.png" alt="HandWash" /></td><td>Только ручная стирка. Не тереть, не отжимать. Максимальная температура – 40°C.</td></tr>
	    <tr><td><img src="../Images/CareIcons/NoSpin.png" alt="NoSpin" /></td><td>Не отжимать.</td></tr>
    </table>
    <table id="Dry" class="CareIconsTable">
	    <caption>Сушка и отжим</caption>
	    <tr><td><img src="../Images/CareIcons/Dry.png" alt="Dry" /></td><td>Можно сушить.</td></tr>
	    <tr><td><img src="../Images/CareIcons/NoDry.png" alt="NoDry" /></td><td>Не сушить (применяется вместе с «Не стирать»).</td></tr>
	    <tr><td><img src="../Images/CareIcons/TumbleDry.png" alt="TumbleDry" /></td><td>Можно выжимать и сушить в стиральной машине.</td></tr>
	    <tr><td><img src="../Images/CareIcons/NoTumbleDry.png" alt="NoTumbleDry" /></td><td>Нельзя выжимать и сушить в стиральной машине.</td></tr>
	    <tr><td><img src="../Images/CareIcons/ColdDry.png" alt="ColdDry" /></td><td>Сушить при низкой температуре.</td></tr>
	    <tr><td><img src="../Images/CareIcons/WarmDry.png" alt="WarmDry" /></td><td>Сушить при средней температуре.</td></tr>
	    <tr><td><img src="../Images/CareIcons/HotDry.png" alt="HotDry" /></td><td>Сушить при высокой температуре.</td></tr>
	    <tr><td><img src="../Images/CareIcons/SafeDry.png" alt="SafeDry" /></td><td>Щадящие отжим и сушка.</td></tr>
	    <tr><td><img src="../Images/CareIcons/DelicateDry.png" width="58" height="52" alt="DelicateDry" /></td><td>Деликатный отжим и сушка.</td></tr>
	    <tr><td><img src="../Images/CareIcons/VerticalDry.png" alt="VerticalDry" /></td><td>Вертикальная сушка.</td></tr>
	    <tr><td><img src="../Images/CareIcons/NoSpinDry.png" alt="NoSpinDry" /></td><td>Сушить без отжима.</td></tr>
    </table>
    <table id="Iron" class="CareIconsTable">
	    <caption>Глажка</caption>
	    <tr><td><img src="../Images/CareIcons/Iron.png" alt="Iron" /></td><td>Можно гладить.</td></tr>
	    <tr><td><img src="../Images/CareIcons/Noiron.png" alt="Noiron" /></td><td>Нельзя гладить.</td></tr>
	    <tr><td><img src="../Images/CareIcons/ColdIron.png" alt="ColdIron" /></td><td>Гладить при низкой температуре (до 110°C).</td></tr>
	    <tr><td><img src="../Images/CareIcons/WarmIron.png" alt="WarmIron" /></td><td>Гладить при средней температуре (до 150°C).</td></tr>
	    <tr><td><img src="../Images/CareIcons/HotIron.png" alt="HotIron" /></td><td>Гладить при высокой температуре (до 200°C).</td></tr>
	    <tr><td><img src="../Images/CareIcons/NoSteam.png" alt="NoSteam" /></td><td>Не отпаривать.</td></tr>
    </table>
    <table id="Bleach" class="CareIconsTable">
	    <caption>Отбеливание и химчистка</caption>
	    <tr><td><img src="../Images/CareIcons/DryClean.png" alt="DryClean" /></td><td>Сухая чистка (химчистка).</td></tr>
	    <tr><td><img src="../Images/CareIcons/NoDryClean.png" alt="NoDryClean" /></td><td>Химчистка запрещена.</td></tr>
	    <tr><td><img src="../Images/CareIcons/AnyDetergentDryClean.png" alt="AnyDetergentDryClean" /></td><td>Химчистка с любым растворителем.</td></tr>
	    <tr><td><img src="../Images/CareIcons/GasolineDryClean.png" alt="GasolineDryClean" /></td><td>Химчистка с обычными реагентами. Например – перхлорэтиленом, гидрокарбонатом илибензином.</td></tr>
	    <tr><td><img src="../Images/CareIcons/SafeGasolineDryClean.png" alt="SafeGasolineDryClean" /></td><td>То же, но щадящая стирка.</td></tr>
	    <tr><td><img src="../Images/CareIcons/WhiteSpiritDryClean.png" alt="WhiteSpritDryClean" /></td><td>Чистка только уайт-спиритом.</td></tr>
	    <tr><td><img src="../Images/CareIcons/SafeWhiteSpiritDryClean.png" alt="SafeWhiteSpritDryClean" /></td><td>То же, но щадящая стирка.</td></tr>
	    <tr><td><img src="../Images/CareIcons/Bleach.png" alt="Bleach" /></td><td>Можно отбеливать</td></tr>
	    <tr><td><img src="../Images/CareIcons/NoBleach.png" alt="NoBleach" /></td><td>Нельзя отбеливать.</td></tr>
	    <tr><td><img src="../Images/CareIcons/Chlore.png" alt="Clore" /></td><td>Можно отбеливать с применением хлора.</td></tr>
	    <tr><td><img src="../Images/CareIcons/NoChlore.png" alt="NoChlore" /></td><td>Отбеливать только без хлора.</td></tr>
    </table>

</asp:Content>


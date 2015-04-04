<%@ Page Title="" Language="C#" MasterPageFile="~/SideModulesDefault.master" AutoEventWireup="true" CodeFile="WoerteBuch.aspx.cs" Inherits="WoerteBuch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade - краткий русско-немецкий словарь</title>
    <link rel="Stylesheet" href="../css/Infos.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Словарик немецкого</h2>
    <p>В данном разделе представлены следующие краткие словарики немецких слов, которые могут вам пригодиться при просмотре каталогов:</p>
    <ul>
        <li><a href="#Farben">Цвет</a></li>
        <li><a href="#Kleidung">Одежда</a></li>
        <li><a href="#Schmuck">Камни</a></li>
        <li><a href="#Accessories">Аксессуары</a></li>
        <li><a href="#Interrior">Предметы интерьера</a></li>
        <li><a href="#Appliances">Бытовая техника</a></li>
        <li><a href="#Materials">Материалы</a></li>
        <li><a href="#Misc">Общие термины</a></li>
    </ul>
    <p>Также мы рекомендуем использовать браузер <a href="http://www.google.com/chrome"><img src="../images/chrome_logo.gif" height="20px" alt="Google Chrome" /></a>, позволяющий автоматически переводить просматриваемые страницы.</p>
    <div class="tableholder">
        <table id="Kleidung" class="widened">
            <caption>Одежда</caption>
            <tr><td>Abendkleid</td><td>вечернее платье</td></tr>
            <tr><td>Anzug</td><td>костюм</td></tr>
            <tr><td>Arbeitskleidung</td><td>рабочая одежда</td></tr>
            <tr><td>BH</td><td>бюстгалтер</td></tr>
            <tr><td>Bindegurtel</td><td>завязывающийся пояс</td></tr>
            <tr><td>Blouson</td><td>блуза навыпуск</td></tr>
            <tr><td>Bluse</td><td>кофта, блуза, блузка</td></tr>
            <tr><td>Bolero</td><td>болеро</td></tr>
            <tr><td>Body</td><td>боди</td></tr>
            <tr><td>Bermuda</td><td>бермуды</td></tr>
            <tr><td>Brautkleid</td><td>свадебное платье</td></tr>
            <tr><td>Damenjacke</td><td>жакет</td></tr>
            <tr><td>Caprihose</td><td>брюки капри</td></tr>
            <tr><td>Einkaufstasсhe</td><td>сумка для закупок</td></tr>
            <tr><td>Festkleid</td><td>вечернее платье</td></tr>
            <tr><td>Etuikleid</td><td>платье (без рукавов)</td></tr>
            <tr><td>Gürtel</td><td>пояс, ремень</td></tr>
            <tr><td>Hausanzug</td><td>домашний костюм</td></tr>
            <tr><td>Handschuhe</td><td>перчатки</td></tr>
            <tr><td>Hauskleid</td><td>домашнее платье</td></tr>
            <tr><td>Hemd</td><td>рубашка</td></tr>
            <tr><td>Hemdbluse</td><td>блуза-рубашка</td></tr>
            <tr><td>Hose</td><td>брюки</td></tr>
            <tr><td>Hosenträger</td><td>подтяжки</td></tr>
            <tr><td>Hosenanzug</td><td>брючный костюм</td></tr>
            <tr><td>Jacke</td><td>кофта, куртка</td></tr>
            <tr><td>Jacke Jackett</td><td>пиджак</td></tr>
            <tr><td>Jackenkleid</td><td>платье-костюм</td></tr>
            <tr><td>Kleid</td><td>платье</td></tr>
            <tr><td>Kapuze</td><td>капюшон</td></tr>
            <tr><td>Kleiderrock</td><td>сарафан</td></tr>
            <tr><td>Kleiderschurze</td><td>платье-халат</td></tr>
            <tr><td>Kopftuch</td><td>платок</td></tr>
            <tr><td>Krawatte</td><td>галстук</td></tr>
            <tr><td>Mantel</td><td>пальто</td></tr>
            <tr><td>Nachthemd</td><td>ночная рубашка</td></tr>
            <tr><td>Latzhose</td><td>комбинезон</td></tr>
            <tr><td>Langarmshirt</td><td>рубашка с длинным рукавом</td></tr>
            <tr><td>Leggings</td><td>леггинсы</td></tr>
            <tr><td>Mütze</td><td>шапка</td></tr>
            <tr><td>Pantolette</td><td>сланцы</td></tr>
            <tr><td>Pullover(Pulli)</td><td>пуловер</td></tr>
            <tr><td>Pumps</td><td>туфли</td></tr>
            <tr><td>Rock</td><td>юбка</td></tr>
            <tr><td>Rollkragenpullover</td><td>свитер</td></tr>
            <tr><td>Sakko</td><td>пиджак</td></tr>
            <tr><td>Sandaletten</td><td>сандали, босоножки</td></tr>
            <tr><td>Schal</td><td>шарф</td></tr>
            <tr><td>Schlafanzug</td><td>пижама</td></tr>
            <tr><td>Shirt</td><td>рубашка</td></tr>
            <tr><td>Slipper</td><td>туфли-лодочка</td></tr>
            <tr><td>Socken</td><td>носки</td></tr>
            <tr><td>Spangen-Pumps</td><td>туфли с ремешками</td></tr>
            <tr><td>Sportanzug</td><td>спортивный костюм</td></tr>
            <tr><td>Sportschuhe</td><td>спортивная обувь</td></tr>
            <tr><td>Strandkleid</td><td>пляжное платье</td></tr>
            <tr><td>Strickjacke</td><td>вязаная кофта</td></tr>
            <tr><td>Strickrock</td><td>трикотажная юбка</td></tr>
            <tr><td>Sweatjacke</td><td>кофта</td></tr>
            <tr><td>Tasche</td><td>сумка</td></tr>
            <tr><td>Top</td><td>топ</td></tr>
            <tr><td>Trägerrock</td><td>сарафан</td></tr>
            <tr><td>Trägertop</td><td>топ на бретельках</td></tr>
            <tr><td>Twin-Set</td><td>костюм – двойка</td></tr>
            <tr><td>T-Shirt</td><td>футболка</td></tr>
            <tr><td>Umstandskleid</td><td>платье для беременных</td></tr>
            <tr><td>Umstandskleidung</td><td>одежда для беременных</td></tr>
            <tr><td>Unterrock</td><td>нижняя юбка</td></tr>
            <tr><td>Weste</td><td>жилет</td></tr>
            <tr><td>Wickelrock</td><td>юбка с запахом</td></tr>
            <tr><td>Zweiteiler</td><td>комплект из двух частей</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Colors" class="widened">
            <caption>Цвета</caption>
            <tr><td>Altrose</td><td>цвет лепестков увядшей розы</td></tr>
            <tr><td>Anthrazit</td><td>антрацитный</td></tr>
            <tr><td>Apfelgrün</td><td>зелёное яблоко</td></tr>
            <tr><td>Apricot</td><td>абрикосовый</td></tr>
            <tr><td>Aqua</td><td>аквамариновый</td></tr>
            <tr><td>Beige</td><td>бежевый</td></tr>
            <tr><td>Blau</td><td>синий</td></tr>
            <tr><td>Bleu</td><td>светло-голубой</td></tr>
            <tr><td>Bordeaux</td><td>бордовый</td></tr>
            <tr><td>Braun</td><td>коричневый</td></tr>
            <tr><td>Brombeere</td><td>ежевичный</td></tr>
            <tr><td>Burgund</td><td>цвет Бургундского, рубиновый</td></tr>
            <tr><td>Bunt</td><td>цветной</td></tr>
            <tr><td>Camel</td><td>верблюжий</td></tr>
            <tr><td>Champagner</td><td>цвет шампанского</td></tr>
            <tr><td>Creme</td><td>кремовый</td></tr>
            <tr><td>Cyclam</td><td>цикламеновый</td></tr>
            <tr><td>Cognac</td><td>цвет коньяка</td></tr>
            <tr><td>Dunkel</td><td>тёмный</td></tr>
            <tr><td>Dunkel (dkl) Blau</td><td>темно-синий</td></tr>
            <tr><td>Dunkel (dkl) Braun</td><td>темно-коричневый</td></tr>
            <tr><td>Ecru</td><td>цвет натуральной шерсти</td></tr>
            <tr><td>Flieder</td><td>сиреневый</td></tr>
            <tr><td>Fuchsia</td><td>цвет фуксии</td></tr>
            <tr><td>Gelb</td><td>желтый</td></tr>
            <tr><td>Gestreift</td><td>полосатый</td></tr>
            <tr><td>Gold</td><td>золотой</td></tr>
            <tr><td>Grau</td><td>серый</td></tr>
            <tr><td>Grün</td><td>зеленый</td></tr>
            <tr><td>Hellblau</td><td>голубой</td></tr>
            <tr><td>Hell</td><td>светлый</td></tr>
            <tr><td>Himbeerrot</td><td>малиновый</td></tr>
            <tr><td>Hummer</td><td>омаровый</td></tr>
            <tr><td>Jadegrün</td><td>нефритовый</td></tr>
            <tr><td>Kariert</td><td>в клеточку</td></tr>
            <tr><td>Khaki</td><td>хаки</td></tr>
            <tr><td>Kirschrot</td><td>вишневый</td></tr>
            <tr><td>Koralle</td><td>коралловый</td></tr>
            <tr><td>Kupfer</td><td>цвет меди</td></tr>
            <tr><td>Lila</td><td>лиловый</td></tr>
            <tr><td>Lindgrün</td><td>нежный желтовато-зеленый</td></tr>
            <tr><td>Mais</td><td>цвет кукурузы</td></tr>
            <tr><td>Mandarin</td><td>цвет мандарина</td></tr>
            <tr><td>Marine</td><td>морской</td></tr>
            <tr><td>Melone</td><td>цвет дыни</td></tr>
            <tr><td>Mеlange</td><td>меланж, пёстрый</td></tr>
            <tr><td>Mint</td><td>цвет мяты</td></tr>
            <tr><td>Mittelbraun</td><td>каштановый</td></tr>
            <tr><td>Mokka</td><td>мокко</td></tr>
            <tr><td>Oliv</td><td>оливковый</td></tr>
            <tr><td>Olivgrün</td><td>темный коричнево-зеленоватый</td></tr>
            <tr><td>Orange</td><td>оранжевый</td></tr>
            <tr><td>Pink</td><td>пинк</td></tr>
            <tr><td>Pflaume</td><td>сливовый</td></tr>
            <tr><td>Puder</td><td>телесный</td></tr>
            <tr><td>Reinweiß</td><td>чисто-белый</td></tr>
            <tr><td>Rose</td><td>розовый</td></tr>
            <tr><td>Rot</td><td>красный</td></tr>
            <tr><td>Royalblau</td><td>королевский синий</td></tr>
            <tr><td>Sand</td><td>песочный</td></tr>
            <tr><td>Schilf</td><td>защитный</td></tr>
            <tr><td>Schoko(braun)</td><td>цвет шоколада</td></tr>
            <tr><td>Schwarz</td><td>черный</td></tr>
            <tr><td>Silber</td><td>серебристый</td></tr>
            <tr><td>Smaragd</td><td>изумрудный</td></tr>
            <tr><td>Stein</td><td>светло-серый</td></tr>
            <tr><td>Taupe</td><td>тёмно-оливковый</td></tr>
            <tr><td>Terrakotta</td><td>терракотовый</td></tr>
            <tr><td>Türkis</td><td>бирюзовый</td></tr>
            <tr><td>Vanille</td><td>цвет ванили</td></tr>
            <tr><td>Weiß</td><td>белый</td></tr>
            <tr><td>Wollweiß</td><td>цвет белой шерсти</td></tr>
            <tr><td>Zimt</td><td>цвет корицы</td></tr>
            <tr><td>Zitrone</td><td>цвет лимона</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Accessories" class="widened">
            <caption>Аксессуары</caption>
            <tr><td>Anhänger</td><td>подвеска</td></tr>
            <tr><td>Armbanduhr</td><td>наручные часы</td></tr>
            <tr><td>Armschmuck</td><td>браслет</td></tr>
            <tr><td>Brille</td><td>очки</td></tr>
            <tr><td>Brosche</td><td>брошь</td></tr>
            <tr><td>Gürtel</td><td>ремень</td></tr>
            <tr><td>Haarschmuck</td><td>украшения для волос</td></tr>
            <tr><td>Halsschmuck</td><td>нашейное украшение</td></tr>
            <tr><td>Hosenträger</td><td>подтяжки</td></tr>
            <tr><td>Hut</td><td>шляпа</td></tr>
            <tr><td>Kette</td><td>цепочка</td></tr>
            <tr><td>Krawatte</td><td>галстук</td></tr>
            <tr><td>Mütze</td><td>шапка</td></tr>
            <tr><td>Ohrenschmuck</td><td>серьги</td></tr>
            <tr><td>Portemonnaie</td><td>портмоне</td></tr>
            <tr><td>Ring</td><td>кольцо</td></tr>
            <tr><td>Schal</td><td>шарф</td></tr>
            <tr><td>Schminktasche</td><td>косметичка</td></tr>
            <tr><td>Schmuck</td><td>украшение</td></tr>
            <tr><td>Sonnenbrille</td><td>солнечные очки</td></tr>
            <tr><td>Tasche</td><td>сумка</td></tr>
            <tr><td>Tuch</td><td>платок</td></tr>
            <tr><td>Uhr</td><td>часы</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Schmuck" class="widened">
            <caption>Камни</caption>
            <tr><td>Amethyst</td><td>аметист</td></tr>
            <tr><td>Brillant</td><td>брилиант</td></tr>
            <tr><td>Citrin</td><td>цитринин</td></tr>
            <tr><td>Diamant</td><td>диамант</td></tr>
            <tr><td>Granat</td><td>гранат</td></tr>
            <tr><td>Koralle</td><td>коралл</td></tr>
            <tr><td>Mondstein</td><td>лунный камень</td></tr>
            <tr><td>Onyx</td><td>оникс</td></tr>
            <tr><td>Opal</td><td>опал</td></tr>
            <tr><td>Perlen</td><td>жемчуг</td></tr>
            <tr><td>Rubin</td><td>рубин</td></tr>
            <tr><td>Saphire</td><td>сапфир</td></tr>
            <tr><td>Smaragd</td><td>изумруд</td></tr>
            <tr><td>Topas</td><td>топаз</td></tr>
            <tr><td>Zuchtperle</td><td>искусственная жемчужина</td></tr>
        </table>
    </div>
    
    <div class="tableholder">
        <table id="Interrior" class="widened">
            <caption>Предметы интерьера</caption>
            <tr><td>Anbauwand</td><td>стенка</td></tr>
            <tr><td>Badegarnitur</td><td>ванный гарнитур</td></tr>
            <tr><td>Bank</td><td>лавочка, скамейка</td></tr>
            <tr><td>Bett</td><td>кровать</td></tr>
            <tr><td>Bettware</td><td>постельные пренодлежности (подушки, одеяло)</td></tr>
            <tr><td>Bettwäsche</td><td>постельное белье</td></tr>
            <tr><td>Bilder</td><td>картины</td></tr>
            <tr><td>Couch</td><td>диван, софа</td></tr>
            <tr><td>Couchtisch</td><td>журнальный столик</td></tr>
            <tr><td>Decke</td><td>одеяло</td></tr>
            <tr><td>Deko</td><td>декорация</td></tr>
            <tr><td>Duschtuch</td><td>полотенце для душа</td></tr>
            <tr><td>Einbaugeräte</td><td>встроенная техника</td></tr>
            <tr><td>Essecke</td><td>кухонный уголок</td></tr>
            <tr><td>Figuren</td><td>статуетки</td></tr>
            <tr><td>Gardinen</td><td>шторы</td></tr>
            <tr><td>Glastisch</td><td>стеклянный стол</td></tr>
            <tr><td>Handtuch</td><td>полотенце</td></tr>
            <tr><td>Holztisch</td><td>деревянный стол</td></tr>
            <tr><td>Kerzen</td><td>свечи</td></tr>
            <tr><td>Kissen</td><td>подушки</td></tr>
            <tr><td>Kleiderschrank</td><td>шкаф для одежды</td></tr>
            <tr><td>Kleinmöbel</td><td>малогабаритная мебель</td></tr>
            <tr><td>Küchenmöbel</td><td>кухонная мебель</td></tr>
            <tr><td>Lampe</td><td>лампа</td></tr>
            <tr><td>Leuchte</td><td>светильник</td></tr>
            <tr><td>Matratze</td><td>матрац</td></tr>
            <tr><td>Polsterecke</td><td>мягкий уголок</td></tr>
            <tr><td>Rahmen</td><td>рамки</td></tr>
            <tr><td>Regale</td><td>полки</td></tr>
            <tr><td>Schlafsofa</td><td>раскладывающийся диван</td></tr>
            <tr><td>Schrank</td><td>шкаф</td></tr>
            <tr><td>Sessel</td><td>кресло</td></tr>
            <tr><td>Sitzsack</td><td>сиденье-мешок</td></tr>
            <tr><td>Sofa</td><td>софа</td></tr>
            <tr><td>Spiegel</td><td>зеркало</td></tr>
            <tr><td>Stuhl</td><td>стул</td></tr>
            <tr><td>Teppich</td><td>ковёр</td></tr>
            <tr><td>Tisch</td><td>стол</td></tr>
            <tr><td>Vase</td><td>ваза</td></tr>
            <tr><td>Vitrine</td><td>витрина</td></tr>
            <tr><td>Vitrinenschrank</td><td>шкаф-витрина</td></tr>
            <tr><td>Waage</td><td>весы</td></tr>
            <tr><td>Wanduhr</td><td>настенные часы</td></tr>
            <tr><td>Waschbeckenunterschrank</td><td>шкаф под раковину</td></tr>
            <tr><td>Wecker</td><td>будильник</td></tr>
            <tr><td>Wohnwände</td><td>стенка</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Appliances" class="widened">
            <caption>Бытовая техника</caption>
            <tr><td>Allesschneider</td><td>электрорезка, универсальная</td></tr>
            <tr><td>Brotschneidemaschine</td><td>хлеборезка</td></tr>
            <tr><td>Bügeleisen</td><td>утюг</td></tr>
            <tr><td>Digitalkamera</td><td>цифровой фотоаппарат</td></tr>
            <tr><td>Dosenöffner</td><td>открывашка</td></tr>
            <tr><td>Elektromesser</td><td>електрический нож</td></tr>
            <tr><td>Fernseher</td><td>телевизор</td></tr>
            <tr><td>Fritteuse</td><td>фритюрница</td></tr>
            <tr><td>Geschirrspüler</td><td>посудомоечная машина</td></tr>
            <tr><td>Handy</td><td>мобильный телефон</td></tr>
            <tr><td>Herd</td><td>плита</td></tr>
            <tr><td>Kaffeemaschine</td><td>кофеварка</td></tr>
            <tr><td>Kaffeemühle</td><td>кофемолка</td></tr>
            <tr><td>Küchenmaschine</td><td>кухонный комбайн</td></tr>
            <tr><td>Kühlschrank</td><td>холодильник</td></tr>
            <tr><td>Mikrowelle</td><td>микроволновая печь</td></tr>
            <tr><td>Mixer</td><td>миксер</td></tr>
            <tr><td>Nähmaschine</td><td>швейная машина</td></tr>
            <tr><td>Navigation</td><td>навигация</td></tr>
            <tr><td>Staubsauger</td><td>пылесос</td></tr>
            <tr><td>Trockner</td><td>сушилка</td></tr>
            <tr><td>Waschmaschine</td><td>стиральная машина</td></tr>
            <tr><td>Wasserkocher</td><td>чайник</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Misc" class="widened">
            <caption>Общие термины</caption>
            <tr><td>Alle Shops</td><td>все разделы</td></tr>
            <tr><td>Angebot</td><td>скидки, предложения</td></tr>
            <tr><td>Anmelden</td><td>зарегистрироваться</td></tr>
            <tr><td>Anmeldung</td><td>регистрация</td></tr>
            <tr><td>Ansicht vergrößern</td><td>увеличить картинку</td></tr>
            <tr><td>Arbeitszimmer</td><td>кабинет, рабочая комната</td></tr>
            <tr><td>Armel</td><td>рукова</td></tr>
            <tr><td>Artikel</td><td>артикул</td></tr>
            <tr><td>Artikel ändern</td><td>изменить артикул</td></tr>
            <tr><td>Artikel entfernen (löschen)</td><td>удалить артикул</td></tr>
            <tr><td>Artikel hinzufügen</td><td>добавить артикул</td></tr>
            <tr><td>Ausschnitt</td><td>вырез</td></tr>
            <tr><td>Ausstattung</td><td>оборудование</td></tr>
            <tr><td>Babys</td><td>малыши</td></tr>
            <tr><td>Bademode</td><td>пляжная мода</td></tr>
            <tr><td>Badezimmer</td><td>ванная</td></tr>
            <tr><td>Baumarkt</td><td>строительные материалы</td></tr>
            <tr><td>Beratung</td><td>консультация специалиста</td></tr>
            <tr><td>Bestellgröße, Größe</td><td>размер</td></tr>
            <tr><td>Bestellnummer</td><td>артикул</td></tr>
            <tr><td>Bikini</td><td>бикини</td></tr>
            <tr><td>Breite</td><td>ширина</td></tr>
            <tr><td>Bücher</td><td>книги</td></tr>
            <tr><td>Damen</td><td>женщины</td></tr>
            <tr><td>Dekollete</td><td>декольте</td></tr>
            <tr><td>Diele</td><td>коридор</td></tr>
            <tr><td>Direktbestellung</td><td>заказать сразу</td></tr>
            <tr><td>echt</td><td>натуральный</td></tr>
            <tr><td>Einkaufswelt</td><td>мир покупок</td></tr>
            <tr><td>Empfehlung</td><td>рекомендация</td></tr>
            <tr><td>Energiesparsam</td><td>экономичный</td></tr>
            <tr><td>Farbe</td><td>цвет</td></tr>
            <tr><td>Flur</td><td>коридор</td></tr>
            <tr><td>Futter</td><td>подклад</td></tr>
            <tr><td>Garten</td><td>сад</td></tr>
            <tr><td>Gesamtwert</td><td>общая сумма</td></tr>
            <tr><td>Größe auswählen</td><td>выбрать размер</td></tr>
            <tr><td>Haushaltgeräte</td><td>бытовая техника</td></tr>
            <tr><td>Heimtextilien</td><td>текстиль для дома</td></tr>
            <tr><td>Herren</td><td>мужчины</td></tr>
            <tr><td>In den Warenkorb</td><td>положить в закупочную корзину</td></tr>
            <tr><td>Jetzt bewerten</td><td>оценить</td></tr>
            <tr><td>Jungen</td><td>мальчики</td></tr>
            <tr><td>Katalog blättern</td><td>полистать каталог</td></tr>
            <tr><td>Kinder</td><td>дети</td></tr>
            <tr><td>Kinderzimmer</td><td>детская</td></tr>
            <tr><td>Klettverschluss</td><td>застежка на крючке</td></tr>
            <tr><td>Kragen</td><td>ворот</td></tr>
            <tr><td>Küche</td><td>кухня</td></tr>
            <tr><td>Kundenbewertungen</td><td>отклики клиентов</td></tr>
            <tr><td>kurz</td><td>короткий</td></tr>
            <tr><td>kurzarm</td><td>короткий рукав</td></tr>
            <tr><td>Lagerverkauf</td><td>распродажа</td></tr>
            <tr><td>Länge</td><td>длинна</td></tr>
            <tr><td>leicht</td><td>легкий</td></tr>
            <tr><td>Lieferauskunft</td><td>сроки поставки</td></tr>
            <tr><td>Lieferbar</td><td>имеется в наличии</td></tr>
            <tr><td>Lieferbarkeit prüfen</td><td>проверить наличие вещи на складе</td></tr>
            <tr><td>Lieferzeit</td><td>срок поставки</td></tr>
            <tr><td>Mädchen</td><td>девочки</td></tr>
            <tr><td>Marken</td><td>брэнды, марки</td></tr>
            <tr><td>Maschinenwäsche</td><td>машинная стирка</td></tr>
            <tr><td>Menge</td><td>количество</td></tr>
            <tr><td>Mode für Ihn</td><td>мода для него, муржская мода</td></tr>
            <tr><td>Mode für Sie</td><td>мода для нее, женская мода</td></tr>
            <tr><td>Neu</td><td>новинка</td></tr>
            <tr><td>Neuheiten</td><td>новинки</td></tr>
            <tr><td>Nicht lieferbar</td><td>не имеется в наличии</td></tr>
            <tr><td>ohne</td><td>без</td></tr>
            <tr><td>Pflegehinweise</td><td>указания по уходу за изделием</td></tr>
            <tr><td>Pflegemittel</td><td>средство для ухода</td></tr>
            <tr><td>Preis</td><td>цена</td></tr>
            <tr><td>Prozente</td><td>скидки</td></tr>
            <tr><td>Qualitätshinweise</td><td>указания по качеству</td></tr>
            <tr><td>Reinigung</td><td>хм. чистка</td></tr>
            <tr><td>Reißverschluss</td><td>молния</td></tr>
            <tr><td>Restposten</td><td>специальные скидки, остатки</td></tr>
            <tr><td>rippen</td><td>гофрированный</td></tr>
            <tr><td>Rückgabe</td><td>возврат</td></tr>
            <tr><td>Schlafzimmer</td><td>спальня</td></tr>
            <tr><td>Schmuck</td><td>украшение</td></tr>
            <tr><td>Schnäppchen</td><td>скидки</td></tr>
            <tr><td>Schnursenkel</td><td>шнурки</td></tr>
            <tr><td>Schuhe</td><td>обувь</td></tr>
            <tr><td>Set</td><td>набор</td></tr>
            <tr><td>Spielwaren</td><td>игрушки</td></tr>
            <tr><td>Sport</td><td>спорт</td></tr>
            <tr><td>Stil</td><td>стиль</td></tr>
            <tr><td>Stilrichtung</td><td>направление стиля</td></tr>
            <tr><td>Stück</td><td>штука</td></tr>
            <tr><td>Suche</td><td>поиск</td></tr>
            <tr><td>tailiert</td><td>приталеный</td></tr>
            <tr><td>Taschen</td><td>карманы</td></tr>
            <tr><td>Technik</td><td>техника</td></tr>
            <tr><td>Trends</td><td>модные тенденции</td></tr>
            <tr><td>Unsere Topmarken</td><td>наши брэнды</td></tr>
            <tr><td>Unterhaltungselektronik</td><td>техника для досуга</td></tr>
            <tr><td>Vergleichen</td><td>сравнить</td></tr>
            <tr><td>Warenwert</td><td>стоимость товара</td></tr>
            <tr><td>Wäsche</td><td>нижнее бельё</td></tr>
            <tr><td>Weitere Bilder</td><td>посмотреть другие картинки</td></tr>
            <tr><td>Weiterempfehlen</td><td>порекомендовать</td></tr>
            <tr><td>Weitershoppen</td><td>продолжить покупки</td></tr>
            <tr><td>Wohnen</td><td>предметы интерьера</td></tr>
            <tr><td>Wohnzimmer</td><td>зал</td></tr>
            <tr><td>Zu den Artikel Informationen</td><td>подробная информация об арт.</td></tr>
            <tr><td>zum Warenkorb</td><td>перейти в закупочную корзину</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Materials" class="widened">
            <caption>Материалы</caption>
            <tr><td>Acetat</td><td>Вискоза с ацетатной основой. Химическое волокно с шелковым блеском - легкое и гладкиое, легко стирается, формоустойчивое.</td></tr>
            <tr><td>Acryl</td><td>Акрил, бумажное синтетическое волокно, формоустойчивое. Защищенное от моли.</td></tr>
            <tr><td>Angora</td><td>Тонкая шерсть длинношерстной ангорской козы или ангорского кролика.</td></tr>
            <tr><td>Baumwolle</td><td>Хлопок, естественная приятная для тела материя.</td></tr>
            <tr><td>Elasthan</td><td>Эластан, эластичный синтетический материал (полиуретановые волокна) со степенью растяжения 500-700%.</td></tr>
            <tr><td>Eulan</td><td>Химическая составляющая для шерстяных изделий типа ковров, одеял, пледов и пр. с эффектом против моли.</td></tr>
            <tr><td>Fell</td><td>Мех</td></tr>
            <tr><td>Fleece</td><td>Ворсистая теплая ткань из полиэстера.</td></tr>
            <tr><td>Kaschmir</td><td>Кашмир, очень тонкая высококачественная шерсть кашмировой козы.</td></tr>
            <tr><td>Knautschleder</td><td>Мятая кожа.</td></tr>
            <tr><td>Kunstleder</td><td>Заменитель кожи.</td></tr>
            <tr><td>Kunstseide</td><td>Искусственный шелк (из вискозы)</td></tr>
            <tr><td>Lackleder</td><td>Лаковая кожа</td></tr>
            <tr><td>Leder</td><td>Кожа, выделанная шкура животных, мягкая и эластичная, имеющая всестороннее применение.</td></tr>
            <tr><td>Lein</td><td>Лен</td></tr>
            <tr><td>Leinen</td><td>Льняное полотно натуральное, приятная для кожи ткань с "мятым" эффектом.</td></tr>
            <tr><td>Lycra</td><td>Лайкра, легкое, синтетическое, растягивающееся волокно, используемое при изготовлении белья, чулочных изделий, атрибутов для плавания.</td></tr>
            <tr><td>Microfasern</td><td>Смесь натуральных и химических волокон делает ткань формоустойчивой и легко поддающейся уходу.</td></tr>
            <tr><td>Mohair</td><td>Мохер, изысканная тонкотканая шерсть ангорской козы.</td></tr>
            <tr><td>Naturseide</td><td>Натуральный шелк.</td></tr>
            <tr><td>Nylon</td><td>Нейлон, синтетическое волокно, поглощающая мало воды, быстро сохнущее, не нуждающееся в глажении, защищенное от моли и не подверженное образованию складок. Не рвется, не треплется и не трескается.</td></tr>
            <tr><td>Pannesamt</td><td>Панбархат</td></tr>
            <tr><td>Polyacryl</td><td>Полностью синтетическая мягковорсистая ткань с высокой степенью водоотталкивания и большим сопротивлением перегреву и др. атмосферным явлениям.</td></tr>
            <tr><td>Polyamid</td><td>Полиамид, чисто синтетическая ткань разностороннего применения, часто используется для подкладки.</td></tr>
            <tr><td>Polythylen</td><td>Полиэтилен, полностью синтетическое волокно, используемое для изготовления обратной стороны ковров и покрытий для сидений, а также в качестве материала для замены мешковины</td></tr>
            <tr><td>Polyester</td><td>Полиэстер, чисто синтетическая ткань, сохраняющая форму, легко чистится и не мнется.</td></tr>
            <tr><td>Samt</td><td>Бархат</td></tr>
            <tr><td>Schweinsleder</td><td>Свиная кожа</td></tr>
            <tr><td>Seide</td><td>Шелк, благородное натуральное волокно из кокона шелковичного червя. Ткань с блеском.</td></tr>
            <tr><td>Spitzen</td><td>Кружево</td></tr>
            <tr><td>Trikotagen</td><td>Трикотаж</td></tr>
            <tr><td>Veloursleder</td><td>Замша, эластичная мягкая кожа.</td></tr>
            <tr><td>Viskose</td><td>Вискоза, химически облагороженная целлюлоза.</td></tr>
            <tr><td>Wolle</td><td>Шерсть, тонкотканая шерсть овцы или др. животного, пропускающая воздух.</td></tr>
            <tr><td>Holz</td><td>дерево</td></tr>
            <tr><td>Eisen</td><td>метал (железо)</td></tr>
            <tr><td>Glas</td><td>стекло</td></tr>
            <tr><td>Gold</td><td>золото</td></tr>
            <tr><td>Silber</td><td>серебро</td></tr>
            <tr><td>Weißgold</td><td>белое золото</td></tr>
        </table>
    </div>

</asp:Content>


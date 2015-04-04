﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SideModulesDefault.master" AutoEventWireup="true" CodeFile="OrderMakingFAQ.aspx.cs" Inherits="OrderMaking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade - оформление заказа - вопрсы и ответы</title>
    <link rel="Stylesheet" href="../css/Infos.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Вопросы и ответы по оформлению заказов</h2>
    <p>В связи с тем, что ошибки в оформлении заказов часто приводят к увеличению сроков их обработки и исполнения, а в некоторых случаях делают их обработку невозможной, убедительная просьба внимательно ознакомиться с прилагаемой инструкцией.</p>
    <p>Внимание! При заказе из русскоязычных каталогов все названия должны указываться на немецком языке при использовании латинского шрифта. Очень часто ошибки при указании названия артикула приводят к недоразумениям при таможенном оформлении товара и соответственно увеличению сроков доставки посылки. Поэтому будьте, пожалуйста, предельно внимательны при заказе и заносите название артикула точно так же, как оно стоит в каталоге (если речь идет о немецком каталоге). Напоминаем, что в названиях артикулов не допускаются точки, запятые, пробелы и любые другие символы: (-) – «тире»; (:) – «двоеточие»; (/) – «слеш».</p>
    <ol class="faq">
	    <li>Какие вещи относятся к габаритному грузу, который подлежит доплате за вес?</li>
	    <ul>
		    <li>Весь товар, за исключением одежды (например, постельные принадлежности, полотенцаи т.д.)</li>
		    <li>Предметы домашнего обихода, аксессуары (например, сумки, портмоне и т.д.), парфюмерия весом более 150 грамм</li>
	    </ul>
	    <li>Как правильно указывать размер у габаритных артикулов?</li>
	    <ul>
		    <li>При заказе габаритных артикулов из каталогов OTTO, BAUR, SCHWAB, HEINE в графе «Размер» необходимо ставить «0»</li>
	    </ul>
	    <li>На что надо обязательно обращать внимание при заказе мебели?</li>
	    <ul>
		    <li>Прием заказов на такие артикулы производится только после предварительного расчета фирмой стоимости перевозки и письменного согласия заказчика</li>
		    <li>Расходы на перевозку такого груза рассчитываются согласно не фактического, а объёмного веса, рассчитанного по специальной методике</li>
	    </ul>
	    <li>Как определяется объёмный вес артикулов и когда он применяется?</li>
	    <ul>
		    <li>При подсчете веса габаритных товаров применяются две величины: фактический и объемный вес. По объемному весу отправляются габаритные артикулы, которые весят немного, но занимают, так сказать, много места (имеют объем). Например, детские коляски, светильники и т.д.</li>
		    <li>Объёмный вес артикулов определяется по следующей формуле:</li>
		    <p><b>(L х H х B) : 6000 (кг)</b></p>
		    <p>Где:</p>
		    <ul>
			    <li>L – Длина изделия (см)</li>
			    <li>H – Высота изделия (см)</li>
			    <li>B - Ширина изделия (см)</li>
			    <li>6000 – постоянная величина</li>
		    </ul>
		    <p><font color="red">Внимание! Если фактический вес артикула больше объемного, то стоимость доставки будет рассчитываться по фактическому весу.</font></p>
		    <p>Во избежание недоразумений при заказах габаритных артикулов, рекомендуем вам сначала сделать запрос о стоимость доставки, а потом уже их заказывать.</p>
	    </ul>
	    <li>Как оплачивается доставка обуви?</li>
	    <ul>
		    <li>За отправку обуви начиная с 35 размера, независимо от упаковки, взымается дополнительный транспортный сбор</li>
	    </ul>
	    <li>Когда необходимо при заказе указывать цвет артикула?</li>
	    <ul>
		    <li>Поле «Цвет» заполняется только при заказе из каталогов NECKERMANN и GLOBETROTTER. Номер цвета обозначается цифрами.</li>
		    <li>Если в информации об артикуле обозначение цвета отсутствует, то необходимо при заказе указать в этом поле «О»</li>
	    </ul>
	    <li>Как правильно занести номера артикулов при оформлении заказов?</li>
	    <ul>
		    <li>Только цифрами и прописными латинскими буквами (Напр., 732N132, 41323D). Точки, запятые, пробелы и любые другие символы: (-) – «тире»; (:) – «двоеточие»; (/) – «слеш» могут привести к задержке или отказу в поставке данного артикула.</li>
	    </ul>
	    <li> Какие предусмотрены форматы для занесения размеров, и какие особенности существуют при указании размеров артикулов из каталогов группы ОТТО?</li>
	    <ul>
		    <li>Для удобства заказов допускаются следующие форматы при занесении размеров:</li>
		    <ul>
			    <li>одиночный или в комбинации с латинскими буквами, например 42Т</li>
			    <li>двойной, например 42-46 или 102/106</li>
			    <li>половинные размеры, например 42,5</li>
			    <li>размеры в форме S, M, XS и т.д. (большие или маленькие буквы)</li>
		    </ul>
		    <li>Только по заказам из каталогов OTTO, BAUR, SCHWAB, SPORTSCHECK, HEINE, APART и ALBA MODА:</li>
		    <li>при заказе артикула с двойным размером будет перенят меньший размер (Напр. в каталоге 40/42, а в заказе будет стоять только 40)</li>
		    <li>буквенные обозначения размеров автоматически заменяются на цифровые:</li>
		    <ul>
			    <li>XS– 903</li>
			    <li>S– 904</li>
			    <li>M- 905</li>
			    <li>L- 906</li>
			    <li>XL- 907</li>
			    <li>XXL- 908</li>
		    </ul>
		    <p><font color="red">Внимание! Иногда при указании размеров в каталоге в скобках стоят поясняющие цифры, например 001(38/40). При заказе в графе «Размер» необходимо в этом случае указывать цифры вне скобок, т.е. 001.</font></p>
	    </ul>
	    <li>Как правильно указывать размер обуви из каталогов группы ОТТО?</li>
	    <ul>
		    <li>Европейские размеры обуви, например 37,5 необходимо при заказе указывать без точек или запятых, т.е. 375</li>
		    <li>Англо-американские размеры, например 4.5 необходимо при заказе также указывать без разделительных знаков, т.е. 45</li>
	    </ul>
	    <li>Как правильно указывать номер артикула из каталога SportScheck?</li>
	    <ul>
		    <li>К номеру артикула необходимо добавлять в начале букву S, например 1001216 - номер артикула в каталоге, S1001216 – номер артикула при заказе</li>
	    </ul>
	    <li>Как правильно оформить заказ по каталогу Globetrotter?</li>
	    <ul>
		    <p>Очень часто ошибки при заказе артикулов из этого каталога связаны прежде всего с неправильным указанием размера и цвета.</p>
		    <p><font color="red">Напоминаем еще раз, что для каталогов Globetrotter и Neckermann поле «Цвет» является обязательным для заполнения.</font></p>
		    <li>Обозначение цвета необходимо заносить при заказе цифрами. Существует несколько вариантов указания цвета в описании артикула. Первый и самый простой вариант, когда обозначение цвета находится в строке «Farbe»(Цвет), например:</li>
			    <img src="../Images/Globetrotter1.png" alt="G1" />
		    <li>Второй вариант, когда обозначение цвета находится над номером артикула или рядом с ним, но без указания «Farbe», например:</li>
			    <img src="../Images/Globetrotter2.png" alt="G2" /><img src="../Images/Globetrotter3.png" alt="G3" />
		    <li>Третий возможный вариант, это отсутствие указания цвета. В этом случае при заказе в соответствующей графе необходимо поставить «0».</li>
		    <li>Ошибки при указании размеров чаще всего происходят при заказах снаряжения и аксессуаров для путешествий и походов, когда размер артикулов указывается в см, м и т.д., например:</li>
			    <img src="../Images/Globetrotter4.png" alt="G4" />
		    <p>В этом случае в поле «Размер» необходимо заносить «0».</p>
		    <p>Внимание! Цена артикула изменяется в зависимости от размера, при этом номер артикула в каталоге, как правило, остается прежним. Поэтому во избежание недоразумений будьте внимательны при указании цены.</p>
	    </ul>
	    <li>Как правильно заказывать по каталогу Jack Wolfskin?</li>
	    <ul>
		    <li>Номер артикула в каталоге состоит из буквы и восьми цифр, например: d 11792-221 indian red. При заказе в данном случае необходимо в графе «№ артикула» ввести 11792221, буква не указывается.</li>
		    <li>Размеры в каталоге указываются в двух форматах: буквами, например: Gro?en: S-XXL или цифрами, например: Gro?en: 24-27, 46-58, 90-106. Поэтому при заказе размеры необходимо заносить в том формате, в каком они стоят в описании артикула в каталоге. Для справки – смотрите таблицу соответствия размеров.</li>
	    </ul>
	    <li>Двойные размеры в каталоге Paris</li>
	    <ul>
		    <li>Если в описании артикула из каталога Paris стоит двойной размер, например 42/44, то при заказе необходимо указывать больший размер, в данном случае 44.</li>
		    <p>Внимание! На этикетках вещей из каталога Paris указаны французские размеры. Например, при заказе указывается немецкий размер 32-34, но на этикетке в этом случае будет стоять размер 34-36. Для справки – смотрите таблицу соответствия размеров.</p>
	    </ul>
	    <li>Номер артикула в каталоге Babista</li>
	    <ul>
		    <li>В номере артикула из каталога Babista на первом месте стоит буква «В», которую при заказе указывать не нужно. Например, номер артикула на интернет-странице B048/7930X, при заказе в поле «Арт.№» необходимо указать 0487930Х.</li>
	    </ul>
	    <li>Что делать, если у артикула из каталога Elegance не указан размер?</li>
	    <ul>
		    <li>При заказе артикулов из каталога Elegance, у которых не указан размер, например сумки, платки, очки, шляпы и т.д. графу «Размер» необходимо оставлять пустой, «0» не проставлять.</li>
	    </ul>
	    <li>Как правильно заказывать по каталогу Janine?</li>
	    <ul>
		    <p>Отличительной особенностью марки Janine является позолоченная пуговичка на каждом изделии, символизирующая высокий стандарт качества. При изготовлении постельногобелья Janine используются только эксклюзивные экологически чистые ткани.</p>
		    <p><b>Внимание! Возвраты по данному каталогу не принимаются.</b></p>
		    <p>Правила заказа:</p>
		    <li>номер артикула состоит из четырех знаков.</li>
		    <li>поле «Цвет» обязательно для заполнения, номер цвета двухзначный.</li>
		    <p>Например, Farbe (цвет) 07 braun-rosa в каталоге, а при заказе указывается только 07</p>
		    <li>размер необходимо указывать так, как он стоит в каталоге. Например наволочка (Kissenbezug) в каталоге имеет размер 80/80 cm. При заказе в поле «Размер» заносите 80/80.</li>
		    <li>пододеяльники предлагаются в каталоге, как правило, в комплекте с наволочкой. При заказе в поле «Размер» указывайте только размер пододеяльника. Например, в каталоге артикул 4938 как комплект пододеяльник + наволочка имеет размер 135/200 cm+80/80 cm. При заказе в поле «Размер» занесите только 135/200. В поле «Название» при этом напишите «Bettwaesche».</li>
		    <p>Актуальную коллекцию каталога Вы можете посмотреть в интернете по адресу www.janine.de. или в печатном каталоге.</p>
	    </ul>
	    <li>Где можно увидеть ассортимент каталога «Augusto»?</li>
	    <ul>
		    <li>На сайте каталога или в печатном каталоге. При этом обратите внимание, что если при заказе артикулов Augusto на портале появляется сообщение об ошибке «Augusto: Артикул распродан», это означает, что распродан только заданный Вами размер. Если же выдается сообщение «Augusto: Артикула с данным номером не существует», то это означает, что весь размерный ряд этого артикула распродан.</li>
		    <li>Убедительная просьба: при заказе сумок и средств по уходу за обувью Collonil в графе «Размер» ставить «О»</li>
	    </ul>
	    <li>Особенности заказа обуви из каталогов Otto, Gebruder Gotz, Baur и Quelle</li>
	    <ul>
		    <li>Если Вы заказываете обувь марок Tamaris, S.Oliver, Gabor и Geox из каталогов Otto, Gebruder Gotz, Baur и Quelle и данная обувь имеется в наличии на складе Augusto, то Вы получите этот артикул от фирмы Augusto, при этом при заказе в поле «Каталог» название автоматически изменится на Augusto и номер артикула также автоматически изменится на номер артикула, который указан в интернет-магазине Augusto.</li>
	    </ul>
	    <li>Особенности заказа артикулов из каталогов Klingel, Wenz, Mona, Meyermode и Diemer.</li>
	    <ul>
		    <li>Если в каталогах Klingel, Wenz, Mona, Vamos, Meyermode указан английский размер обуви, например 6, то при заказе в графе «Размер» необходимо указывать 060. Размер с половинками, например 6 ?, при заказе набирается 062.</li>
		    <p><font color="red">Внимание! Настоящее правило действует только при заказе обуви из вышеуказанных каталогов.</font></p>
		    <li>Если в вышеуказанных каталогах вы хотите заказать кольцо и вам нужен размер с половинкой, например 18,5, то при заказе в графе «Размер» необходимо указывать не 18,5, а 185.</li>
		    <li>При заказе ковров из вышеуказанных каталогов необходимо указывать именно тот трёх-значный размер, который указан в описании артикула, например 001 или 002 и т.д.</li>
	    </ul>
	    <li>Как правильно указывать размер нижнего белья из каталога BON' A PARTE</li>
	    <ul>
		    <li>При заказе нижнего белья по каталогу BON' A PARTE, в частности бюстгальтеров, очень важно в размере не забывать указывать не только цифры, например 75, но и соответствующую букву, например С. В противном случае будет ошибка.</li>
	    </ul>
	    <li>Номер артикула в каталогах Schneider, Conleys и Impressionen</li>
	    <ul>
		    <li>Номера артикулов в печатных изданиях вышеуказанных каталогов состоят из восьми цифр, а при заказе товаров на нашем портале необходимо вносить только первые семь цифр. Поэтому внося номер артикула при заказе, упускайте, пожалуйста, последнюю цифру. Например: номер артикула в каталоге 09508585, при заказе на портале 0950858.</li>
		    <li>Номера артикулов на интернет-страницах каталогов состоят из 7 цифр, их и нужно вносить при заказе.</li>
	    </ul>
    </ol>
    <h3>Особенности заказа на интернет-сайтах каталогов</h3>
    <ol class="faq">
	    <p>Обращаем Ваше внимание, что при заказах на сайтах существуют определенные особенности. В связи с этим убедительная просьба, внимательно изучить нижеприведенные рекомендации.</p>
	    <li>BRAND NEU</li>
	    <ul>
		    <li>Выбрав понравившийся артикул на сайте каталога Brandneu, нажмите на его изображение, справа появится информация о нём. Затем задав цвет и размер, поместите этот артикул в Вашу закупочную корзину «In den Warenkorb». При актуализации закупочной корзины «Warenkorb» и нажатии кнопки заказ «Zur Bestellung», артикул автоматически переходит на сайт каталога OTTO. И только те данные артикула (номер артикула, цена и т.д.), которые Вы увидите на сайте каталога OTTO, могут быть использованы при оформлении заказа.</li>
	    </ul>
	    <li>GLOBETROТTER</li>
	    <ul>
		    <li>Номера артикулов на сайте каталога отличаются от номеров артикулов в каталоге. Например: an_4055411002 – номер артикула на сайте, где:</li>
		    <ul>
			    <li>аn - сокращенное название фирмы</li>
			    <li>40554 – номер артикула</li>
			    <li>11 – цвет</li>
			    <li>002 - размер</li>
		    </ul>
		    <li>Правильно при заказе необходимо указывать следующее:</li>
		    <ul>
			    <li>аn40554 - в графе «№ артикула»</li>
			    <li>11 - в графе «Цвет»</li>
			    <li>002 - в графе «Размер»</li>
		    </ul>
	    </ul>
	    <li>JACK WOLFSKIN</li>
	    <ul>
		    <li>Номер артикула на сайте каталога отличается от номера артикула в печатном каталоге тем, что в нем отсутствует начальная буква, он состоит только из восьми цифр, например: Art.-Nr. 11489-221, которые и необходимо занести при оформлении заказа в графу «№ артикула», например 11489221.</li>
		    <li>Для того, чтобы получить информацию о сроках поставки понравившегося Вам артикула необходимо нажать на клавишу «Deutschland». В открывшемся окне в табличной форме будет</li>
		    <li>представлена информация о наличии данного артикула в зависимости от цвета и размера:</li>
		    <ul>
			    <li>Lieferbar – имеется в наличии</li>
			    <li>Lieferbar in Kalenderwoche – доставка возможна на неделе</li>
			    <li>Ausvekauft – распродан</li>
			    <li>Aktuelle Kalenderwoche – номер текущей недели</li>
		    </ul>
	    </ul>
	    <li>ALBA MODA</li>
	    <ul>
		    <li>Для того, чтобы узнать, есть ли понравившаяся Вам вещь в наличии у каталога ALBA MODA, Вам нужно зайти на <a href="http://www.albamoda.de/">сайт этого каталога</a>. В левом нижнем углу экрана находится окошко «Suchbegriff/Artikelnummer», в котором Вы можете задать или номер артикула, или название вещи, или название фирмы. Каталог Alba Moda группе ОТТО, поэтому, если Вы не сможете найти понравившуюся Вам вещь на сайте ALBA MODA, попробуйте ещё раз на <a href="http://www.otto.de/">сайте каталога ОТТО</a> (принцип поиска остаётся тем же). К сожалению, артикулы из русских каталогов ОТТО и ALBA MODA Вы не сможете увидеть на сайтах в интернете (если Вы будете искать по номеру артикула). После того, как артикул, который Вы хотите заказать, будет найден, необходимо выбрать размер (Gro?e) и цвет (Farbe) и тогда Вы увидите информацию о его поставке. В каталоге ALBA MODA она указана напротив размера «44 EUR 49,90 Auswerkauft». Например:</li>
		    <ul>
			    <li>Ausverkauft – вещь распродана</li>
			    <li>Vergriffen – вещь распродана</li>
			    <li>Lieferbar – есть в наличии</li>
			    <li>Wird nachgeliefert – задержки в поставке</li>
		    </ul>
	    </ul>
	    <li>Где найти номер артикула на сайтах каталогов MADELEINE и NECKERMANN?</li>
	    <ul>
		    <p>Во избежание ошибок при поиске номера артикула на сайте каталога NECKERMANN, необходимо обращать внимание на следующее:</p>
		    <li>Выбрав понравившийся вам артикул нажмите на его изображение, в открывшемся окне справа от фото необходимо выбрать нужный вам размер (Gro?e:) и цвет (Farbe:). При этом следите внимательно за ценой артикула (Einzelpreis), так как она может меняться в зависимости от размера и цвета артикула.</li>
		    <li>После указания цвета и размера, необходимо отправить выбранный артикул в закупочную корзину путем нажатия на кнопку «In den Warenkorb legen». В этот момент осуществляется проверка наличия товара на складе каталога и в открывшемся окне в строке «Lieferzeit» вы увидите срок поставки данного артикула. Внимание! Если в этой строке стоит «ausverkauft», это означает, что данный артикул распродан.</li>
		    <li>Если артикул имется у каталога в наличии (не указано «ausverkauft») нажмите на кнопку «Zum Warenkorb gehen». В окрывшемся окне в строке «Bestellnummer:» Вы увидите номер артикула, который нужно указать при заказе.</li>
		    <li>Процедура поиска номера артикула на сайте каталога MADELEINE аналогична. Сначала необходимо нажать на изображение понравившегося артикула и затем в открывшемся окне на кнопку «In den Warenkorb». В следующем окне нажмите на «Zum Warenkorb» и вы увидите всю информацию об артикуле, необходимую для заказа.</li>
		    <li>Как правильно указывать номер артикула из каталога AUGUSTO</li>
		    <li>Выбрав понравившийся Вам артикул на сайте каталога, нажмите на клавишу «Далее» для получения более полной информации об этом артикуле. В открывшемся окне будет указан номер артикула, который и нужно указать при заказе.</li>
	    </ul>
    </ol>
</asp:Content>


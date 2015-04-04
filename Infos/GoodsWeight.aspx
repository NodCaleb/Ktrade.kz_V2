<%@ Page Title="" Language="C#" MasterPageFile="~/SideModulesDefault.master" AutoEventWireup="true" CodeFile="GoodsWeight.aspx.cs" Inherits="Infos_GoodsWeight" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade - примерный вес товаров</title>
    <link rel="Stylesheet" href="../css/Infos.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Примерный вес товаров</h2>
    <p>Чтобы приблизительно оценить стоимость доставки ваших заказов вы можете использовать ориентировлчный вес товаров из нижеприведенных таблиц.</p>
    <div class="tableholder">
        <table id="Kinder" class="widened">
            <caption>Детская одежда и обувь</caption>
            <thead>
			    <tr>
				    <td scope="col" width="210"><b>Наименование товара</b></td>
                    <td scope="col" width="90"><b>Вес, г</b></td>
				    <td scope="col" width="210"><b>Наименование товара</b></td>
				    <td scope="col" width="90"><b>Вес, г</b></td>
			    </tr>
		    </thead>
            <tbody>
			    <tr>
				    <td colspan="4"><b>Одежда:</b></td>
			    </tr>
			    <tr>
				    <td>Ползунки, распашонки</td>
				    <td><b>40-50</b></td>
				    <td>Спортивный костюм</td>
				    <td><b>400-600</b></td>
			    </tr>
			    <tr>
				    <td>Трусы, майка</td>
				    <td><b>15-30</b></td>
				    <td>Жилет, безрукавка</td>
				    <td><b>150-200</b></td>
			    </tr>
			    <tr>
				    <td>Носки, гольфы</td>
				    <td><b>10-15</b></td>
				    <td>Свитер, толстовка</td>
				    <td><b>200-350</b></td>
			    </tr>
			    <tr>
				    <td>Пижама</td>
				    <td><b>50-150</b></td>
				    <td>Плащ, пальто</td>
				    <td><b>450-800</b></td>
			    </tr>

			    <tr>
				    <td>Халат</td>
				    <td><b>150-300</b></td>
				    <td>Куртка ветровка</td>
				    <td><b>300-500</b></td>
			    </tr>
			    <tr>
				    <td>Футболка, топ</td>
				    <td><b>50-80</b></td>
				    <td>Куртка осенняя</td>
				    <td><b>450-750</b></td>
			    </tr>
			    <tr>
				    <td>Рубашка, блузка</td>
				    <td><b>60-120</b></td>
				    <td>Куртка зимняя, пуховик</td>
				    <td><b>500-900</b></td>
			    </tr>

			    <tr>
				    <td>Платье, сарафан</td>
				    <td><b>120-200</b></td>
				    <td>Шуба</td>
				    <td><b>1000-3000</b></td>
			    </tr>
			    <tr>
				    <td>Брюки, бриджи</td>
				    <td><b>150-220</b></td>
				    <td>Шапка</td>
				    <td><b>40-100</b></td>
			    </tr>
			    <tr>
				    <td>Джинсы</td>
				    <td><b>200-400</b></td>
				    <td>Шарф</td>
				    <td><b>70-150</b></td>
			    </tr>

			    <tr>
				    <td>Шорты</td>
				    <td><b>80-150</b></td>
				    <td>Перчатки, варежки</td>
				    <td><b>30-100</b></td>
			    </tr>
			    <tr>
				    <td>Юбка</td>
				    <td><b>100-250</b></td>
				    <td>Комплекты мама, папа + малыш</td>
				    <td><b>1300-3000</b></td>
			    </tr>
                <tr>
                    <td>Комплект одежды</td>
				    <td><b>150-400</b></td>
                    <td colspan="2">&nbsp;</td>
                </tr>
			    <tr>
				    <td colspan="4"><b>Обувь:</b></td>
			    </tr>
			    <tr>
				    <td>Тапки, шлепанцы</td>
				    <td><b>100-200</b></td>
				    <td>Ботинки</td>
				    <td><b>350-800</b></td>
			    </tr>
			    <tr>
				    <td>Босоножки, сандалии</td>
				    <td><b>120-400</b></td>
				    <td>Сапоги</td>
				    <td><b>400-1000</b></td>
			    </tr>
			    <tr>
				    <td>Кроссовки, мокасины</td>
				    <td><b>400-600</b></td>
				    <td>Резиновые сапоги</td>
				    <td><b>400-1000</b></td>
			    </tr>
			    <tr>
				    <td>Туфли</td>
				    <td><b>150-600</b></td>
				    <td>&nbsp;</td>
				    <td>&nbsp;</td>
			    </tr>
		    </tbody>
        </table>
    </div>
    <div class="tableholder" style="margin-top:30px">
        <table id="Frauen" class="widened">
            <caption>Женская одежда и обувь</caption>
            <thead>
			    <tr>
				    <td scope="col" width="210"><b>Наименование товара</b></td>
                    <td scope="col" width="90"><b>Вес, г</b></td>
				    <td scope="col" width="210"><b>Наименование товара</b></td>
				    <td scope="col" width="90"><b>Вес, г</b></td>
			    </tr>
		    </thead>
            <tbody>
			    <tr>
				    <td colspan="4"><b>Одежда:
			    </b></td></tr>
			    <tr>
				    <td>Трусы</td>
				    <td><b>15-30</b></td>
				    <td>Шорты</td>
				    <td><b>150-250</b></td>
			    </tr>
			    <tr>
				    <td>Бюстгальтер</td>
				    <td><b>40-70</b></td>
				    <td>Юбка</td>
				    <td><b>200-300</b></td>
			    </tr>
			    <tr>
				    <td>Купальник</td>
				    <td><b>90-120</b></td>
				    <td>Свитер</td>
				    <td><b>300-400</b></td>
			    </tr>
			    <tr>
				    <td>Майка, топ</td>
				    <td><b>70-85</b></td>
				    <td>Толстовка</td>
				    <td><b>400-500</b></td>
			    </tr>

			    <tr>
				    <td>Футболка</td>
				    <td><b>100-140</b></td>
				    <td>Жакет, блейзер</td>
				    <td><b>230-400</b></td>
			    </tr>
			    <tr>
				    <td>Рубашка, блузка</td>
				    <td><b>100-250</b></td>
				    <td>Полупальто, пальто, плащ</td>
				    <td><b>600-900</b></td>
			    </tr>
			    <tr>
				    <td>Платье, сарафан</td>
				    <td><b>120-350</b></td>
				    <td>Куртка ветровка</td>
				    <td><b>400-600</b></td>
			    </tr>
			    <tr>
				    <td>Вечернее платье</td>
				    <td><b>120-500</b></td>
				    <td>Куртка осенняя</td>
				    <td><b>600-800</b></td>
			    </tr>
			    <tr>
				    <td>Свадебное платье</td>
				    <td><b>800-2000</b></td>
				    <td>Куртка зимняя, пуховик</td>
				    <td><b>800-1000</b></td>
			    </tr>
			    <tr>
				    <td>Деловой костюм</td>
				    <td><b>800-950</b></td>
				    <td>Шуба</td>
				    <td><b>3000-4000</b></td>
			    </tr>

			    <tr>
				    <td>Спортивный костюм</td>
				    <td><b>650-750</b></td>
				    <td>Шапка</td>
				    <td><b>60-120</b></td>
			    </tr>
			    <tr>
				    <td>Брюки, бриджи</td>
				    <td><b>300-400</b></td>
				    <td>Шарф</td>
				    <td><b>90-150</b></td>
			    </tr>
			    <tr>
				    <td>Леггинсы</td>
				    <td><b>260-300</b></td>
				    <td>Перчатки, варежки</td>
				    <td><b>40-100</b></td>
			    </tr>
                <tr>
                    <td>Джинсы</td>
                    <td><b>400-500</b></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
			    <tr>
				    <td colspan="4"><b>Обувь:</b></td>
			    </tr>
			    <tr>
				    <td>Тапки, шлепанцы</td>
				    <td><b>200-350</b></td>
				    <td>Ботинки</td>
				    <td><b>800-1200</b></td>
			    </tr>
			    <tr>
				    <td>Босоножки, сандалии</td>
				    <td><b>400-600</b></td>
				    <td>Сапоги</td>
				    <td><b>800-1300</b></td>
			    </tr>

			    <tr>
				    <td>Кроссовки, мокасины</td>
				    <td><b>600-700</b></td>
				    <td>Резиновые сапоги</td>
				    <td><b>800-1000</b></td>
			    </tr>
			    <tr>
				    <td>Туфли</td>
				    <td><b>500-650</b></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
			    </tr>
		    </tbody>
        </table>
    </div>
    <div class="tableholder" style="margin-top:30px">
        <table id="Maenner" class="widened">
            <caption>Мужская одежда и обувь</caption>
            <thead>
			    <tr>
				    <td scope="col" width="210"><b>Наименование товара</b></td>
                    <td scope="col" width="90"><b>Вес, г</b></td>
				    <td scope="col" width="210"><b>Наименование товара</b></td>
				    <td scope="col" width="90"><b>Вес, г</b></td>
			    </tr>
		    </thead>
            <tbody>
			    <tr>
				    <td colspan="2"><b>Одежда:</b></td>
				    <td>Толстовка</td>
				    <td><b>270-400</b></td>
			    </tr>
			    <tr>
				    <td>Трусы</td>
				    <td><b>70-100</b></td>
				    <td>Пиджак</td>
				    <td><b>1000-1200</b></td>
			    </tr>
			    <tr>
				    <td>Майка, футболка</td>
				    <td><b>220-300</b></td>
				    <td>Пальто, плащ</td>
				    <td><b>900-1500</b></td>
			    </tr>
			    <tr>
				    <td>Рубашка</td>
				    <td><b>120-180</b></td>
				    <td>Куртка ветровка</td>
				    <td><b>800-1200</b></td>
			    </tr>
			    <tr>
				    <td>Деловой костюм</td>
				    <td><b>1200-1800</b></td>
				    <td>Куртка осенняя</td>
				    <td><b>1200-1400</b></td>
			    </tr>
			    <tr>
				    <td>Спортивный костюм</td>
				    <td><b>1000-1300</b></td>
				    <td>Куртка зимняя, пуховик</td>
				    <td><b>1400-1800</b></td>
			    </tr>

			    <tr>
				    <td>Брюки, бриджи</td>
				    <td><b>600-700</b></td>
				    <td>Шуба</td>
				    <td><b>3000-8000</b></td>
			    </tr>
			    <tr>
				    <td>Джинсы</td>
				    <td><b>650-800</b></td>
				    <td>Шапка</td>
				    <td><b>60-150</b></td>
			    </tr>
			    <tr>
				    <td>Шорты</td>
				    <td><b>250-350</b></td>
				    <td>Шарф</td>
				    <td><b>90-250</b></td>
			    </tr>

			    <tr>
				    <td>Свитер</td>
				    <td><b>450-600</b></td>
				    <td>Перчатки</td>
				    <td><b>80-140</b></td>
			    </tr>
			    <tr>
				    <td colspan="4"><b>Обувь:</b></td>
			    </tr>
			    <tr>
				    <td>
					    Тапки, шлепанцы</td>

				    <td>
					    <b>250-500</b></td>
				    <td>
					    Ботинки</td>
				    <td>
					    <b>1000-1400</b></td>
			    </tr>

			    <tr>
				    <td>
					    Сандали</td>
				    <td>
					    <b>400-600</b></td>
				    <td>
					    Сапоги</td>

				    <td>
					    <b>1400-1800</b></td>
			    </tr>
			    <tr>
				    <td>
					    Кроссовки, мокасины</td>
				    <td>
					    <b>700-800</b></td>

				    <td>
					    Резиновые сапоги</td>
				    <td>
					    <b>1000-1400</b></td>
			    </tr>
			    <tr>
				    <td>
					    Туфли</td>

				    <td>
					    <b>700-850</b></td>
				    <td>
					    &nbsp;</td>
				    <td>
					    &nbsp;</td>
			    </tr>
		    </tbody>
        </table>
    </div>
    <div class="tableholder" style="margin-top:30px">
        <table id="Taschen" class="widened">
            <caption>Галантерея</caption>
            <thead>
			    <tr>
				    <td scope="col" width="210"><b>Наименование товара</b></td>
                    <td scope="col" width="90"><b>Вес, г</b></td>
				    <td scope="col" width="210"><b>Наименование товара</b></td>
				    <td scope="col" width="90"><b>Вес, г</b></td>
			    </tr>
		    </thead>
            <tbody>
			    <tr>
				    <td>Женская сумка</td>
				    <td><b>200-1000</b></td>
				    <td>Рюкзак</td>
				    <td><b>800</b>-1500, 1500-<b>5000</b></td>
			    </tr>

			    <tr>
				    <td>Портфель</td>
				    <td><b>500-1000</b></td>
				    <td>Дорожная сумка</td>
				    <td><b>1000</b>-3500,&nbsp;3500-<b>5500</b></td>
			    </tr>
			    <tr>
				    <td>Барсетка</td>
				    <td><b>200-800</b></td>
				    <td>Кошельки, портмоне</td>
				    <td><b>50-300</b></td>
			    </tr>
		    </tbody>
        </table>
    </div>
    <div class="tableholder" style="margin-top:30px">
        <table id="Technik" class="widened">
            <caption>Электроника</caption>
            <thead>
			    <tr>
				    <td scope="col" width="210"><b>Наименование товара</b></td>
                    <td scope="col" width="90"><b>Вес, г</b></td>
				    <td scope="col" width="210"><b>Наименование товара</b></td>
				    <td scope="col" width="90"><b>Вес, г</b></td>
			    </tr>
		    </thead>
            <tbody>
			    <tr>
				    <td>Мобильный телефон</td>
				    <td><b>75-150</b></td>
				    <td>Электронная книга</td>
				    <td><b>150-290</b></td>
			    </tr>
			    <tr>
				    <td>КПК</td>
				    <td><b>80-190</b></td>
				    <td>GPS навигатор</td>
				    <td><b>100-240</b></td>
			    </tr>
			    <tr>
				    <td>Фотоаппарат обычный</td>
				    <td><b>200-400</b></td>
				    <td>MP3, MP4</td>
				    <td><b>30</b>-100,&nbsp;100-<b>300</b></td>
			    </tr>
			    <tr>
				    <td>Фотоаппарат проф.</td>
				    <td><b>350-850</b></td>
				    <td>iPod</td>
				    <td><b>11-165</b></td>
			    </tr>
			    <tr>
				    <td>Видеокамера</td>
				    <td><b>160</b>-470,&nbsp;1400-<b>2600</b></td>
				    <td>DVD/HD-медиаплееры</td>
				    <td><b>290</b>-1300,&nbsp;1300-<b>2850</b></td>
			    </tr>
			    <tr>
				    <td>Ноутбук</td>
				    <td><b>780-3500</b></td>
				    <td>Диктофон</td>
				    <td><b>40-170</b></td>
			    </tr>
			    <tr>
				    <td>Нетбук</td>
				    <td><b>960-1500</b></td>
				    <td>Жесткий диск</td>
				    <td><b>120<b>-400,&nbsp;600-<b>1200</b></b></b></td>
			    </tr>
			    <tr>
				    <td>Игровые приставки</td>
				    <td><b>190<b>-220,&nbsp;1700-<b>3500</b></b></b></td>
				    <td>&nbsp;</td>
				    <td>&nbsp;</td>
			    </tr>
		    </tbody>
        </table>
    </div>
</asp:Content>


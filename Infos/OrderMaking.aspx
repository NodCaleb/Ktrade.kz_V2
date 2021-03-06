﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SideModulesDefault.master" AutoEventWireup="true" CodeFile="OrderMaking.aspx.cs" Inherits="Infos_OrderMaking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade - инструкция по оформлению заказа</title>
    <link rel="Stylesheet" href="../css/Infos.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Инструкция по оформлению заказов</h2>
	<iframe width="640" height="480" src="http://www.youtube.com/embed/HgJKy12Jh3A" frameborder="0" allowfullscreen></iframe>
    <img src="../Images/LoginForm.png" alt="" class="right" />
    <p>Для оформления заказов товаров по каталогам через наш сайт вам необходимо иметь свой логин и пароль.</p>
    <p>Для получения логина и пароля нужно воспользоваться формой регистрации, предварительно кликнув мышью на кнопку регистрации нового пользователя: <img src="../Images/RegisterInline.png" alt="" class="inline" />.</p>
    <img src="../Images/RegisterForm.png" alt="" class="right" />
    <p>После того, как вы введете все данные, правильно укажите ваш электронный адрес, и нажмете кнопку <img src="../Images/RegisterConfirmInline.png" alt="" class="inline" />, вам на электронную почту придет сообщение об успешной  регистрации.</p>
    <p><i>Если на ваш электронный ящик не пришло письмо с подтверждением об успешной регистрации, скорее всего вы неверно указали ваш e-mail, в этом случае рекомендуем пройти регистрацию еще раз.</i></p>
    <p>Теперь вам нужно ввести ваш логин и пароль на портале Ktrade.kz и нажать кнопку <img src="../Images/UnlockInline.png" alt="" class="inline" />, если вы входите со своего личного компьютера, можно отметить галочку <img src="../Images/RememberInline.png" alt="" class="inline" />, чтобы не вводить логин и пароль каждый раз.</p>
    <p>Вы попадаете на страницу нашего портала.</p>
    <p>В разделе <b>KTRADE</b> вы можете узнать свежие новости, информацию о действкующих скидках и о том, как нас найти.</p>
    <p>В разделе <b>КАТАЛОГИ</b> вы можете ознакомиться с электронными версиями каталогов и скачать их к себе на компьютер.</p>
    <p>В разделе <b>ИНФОРМАЦИЯ</b> вы найдете полезную для себя информацию: названия вещей и материалах их изготовления на немецком языке, как подобрать одежду по типу фигуры, как оформить заказ, и каковы наши условия работы по доставке товаров.</p>
    <p>В разделе <b>ЗАКАЗ ONLINE</b> вы можете оформить новые заказы, проверить выполнение текущих заказов.</p>
    <p>Итак, для того, чтобы оформить новый заказ вам необходимо:</p>
    <ol>
        <li>найти на интернет-страницах каталогов тот товар, что вы хотите приобрести;</li>
        <li>знать свой немецкий размер (если вы не знаете свой немецкий размер, тогда обращайтесь к нам, мы вам поможем его определить);</li>
        <li>иметь желание заказать этот товар ;-)</li>
    </ol>
    <p><b>К примеру:</b> Хотим заказать с <a href="http://www.otto.de" target="_blank">каталога ОТТО</a> вязанную кофту синего цвета, немецкий размер одежды 32/34.</p>
    <img src="../Images/CataloguePage.png" alt="" class="left" />
    <p>Для заказа нам нужны данные от каталога:</p>
    <ul>
        <li>Наименование – Strickjacke</li>
        <li>Артикул – 33420074</li>
        <li>Цена – 19,99 евро</li>
        <li>Цвет – marine</li>
        <li>Размер – 36/38</li>
    </ul>
    <p>Все эти данные отмечены на рисунке. В разных катлогах артикул может располагаться в разных местах, более подробная информация об этом есть в <a href="OrderMakingFAQ.aspx">вопросах и ответах по оформлению заказов</a>.</p>
    <img src="../Images/NewOrder.png" alt="" class="right" />
    <p>На нашем портале в меню <b>ЗАКАЗ ONLINE</b> выбираем пункт: <b>ОФОРМИТЬ НОВЫЙ ЗАКАЗ</b>.</p>
    <p>В появившемся бланке заказа первым делом выбираем каталог OTTO из ниспадающего списка по кнопке <img src="../Images/DropDown.png" alt="" class="inline" />. Затем последовательно заполняем все поля: наименование, размер, артикул, цвет и цену.</p>
    <img src="../Images/OrderForm.png" alt="" class="left" />
    <p>Для надежности лучше заполнить поле "ссылка". Для этого нужно скопировать адрес страницы из адресной строки браузера (в верхней части окна) и вставить в поле "ссылка".</p>
    <img src="../Images/Address.png" alt=""/>
    <p>После заполнения всех полей нажмите кнопку <img src="../Images/AddInline.png" alt="" class="inline" />, если все данные внесены верно, в ваш заказ добавится новая строка.</p>
    <img src="../Images/Orderline.png" alt="" class="left" />
    <p>Таким же образом в заказ можно доавить еще несколько строк. Когда закончите, нажмите кнопку <img src="../Images/ConfirmOrder.png" alt="" class="inline" /> и ваш заказ будет принят в работу. До отправки заказа в работу можно удалить строки из него, нажав на <img src="../Images/Buttons/Cancel16.png" alt="" class="inline" /> в соответствующей строке.</p>
    <img src="../Images/Orders.png" alt="" class="right" />
    <p>Просмотреть оформленный заказ можно на странице <b>ЗАКАЗЫ В РАБОТЕ</b>. Кликнув на номер заказа, можно увидеть его детали.</p>
    <p>По мере исполнения заказа вам на электронную почту будут приходить уведомления: товар распродан, товар в пути и т.д. Так что, вы будете обладать оперативной информацией о выполнении ваших заказов!</p>
    <p>Удачных покупок!</p>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/SideModulesDefault.master" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade - контактная информация</title>
    <link rel="Stylesheet" href="css/About.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Контактная информация:</h2>
    <table>
	<tr valign="top">
	    <td>
		<h3>ИП Ktrade</h3>
		<p>
		    100019, Казахстан, Караганда<br/>
		    ул. Кривогуза, 5, оф. 202<br/>
		    Тел.: +7 7212 41-90-61, 97-26-00<br/>
		    Skype: ktrade.kz<br/>
		    Mail: <a id="ctl00_MailLink" href="mailto:office@ktrade.kz">office@ktrade.kz</a><br/>
		    Время работы:<br/>
		    ПН:ПТ: 09:30-18:30<br/>
		    СБ : 10:00-16:00
		</p>
	    </td>
	    <td width="30px"></td>
	    <td>
		<h3>KtradeCommerce OÜ</h3>
		<p>
		    Narva mnt 7-563<br/>
		    10117, Tallina linn<br/>
		    Harju maakond<br/>
		    Eesti Vabariik<br/>
		    +372 535 188 66
		</p>
	    </td>
	    <td width="30px"></td>
	    <td>
		<a href="images/akib.png"><img src="images/akib.png" style="margin:0px; width:180px"/></a>
	    </td>
	</tr>
    </table>
    
    <h3>Карта:</h3>
    <iframe width="500" height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?hl=ru&amp;georestrict=input_srcid:1123e2333bb661d0&amp;ie=UTF8&amp;view=map&amp;cid=17414554160187397578&amp;q=Ktrade.kz&amp;hq=Ktrade.kz&amp;hnear=&amp;t=m&amp;vpsrc=6&amp;ll=49.813287,73.071055&amp;spn=0.006923,0.010707&amp;z=16&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="http://maps.google.com/maps?hl=ru&amp;georestrict=input_srcid:1123e2333bb661d0&amp;ie=UTF8&amp;view=map&amp;cid=17414554160187397578&amp;q=Ktrade.kz&amp;hq=Ktrade.kz&amp;hnear=&amp;t=m&amp;vpsrc=6&amp;ll=49.813287,73.071055&amp;spn=0.006923,0.010707&amp;z=16&amp;iwloc=A&amp;source=embed" style="color:#0000FF;text-align:left">Просмотреть увеличенную карту</a></small>
    <p>
	<img src="images/signs01.jpg" style="margin:0px"/>
	<img src="images/signs02.jpg" style="margin:0px"/>
	<img src="images/signs03.jpg" style="margin:0px"/>
	<img src="images/signs04.jpg" style="margin:0px"/>
	<img src="images/signs05.jpg" style="margin:0px"/>
	<img src="images/signs06.jpg" style="margin:0px"/>
    </p>
</asp:Content>


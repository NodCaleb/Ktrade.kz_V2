<%@ Page Title="" Language="C#" MasterPageFile="~/KtradeMasterPageII.master" AutoEventWireup="true" CodeFile="Subscribe.aspx.cs" Inherits="Subscribe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade - форма подписки Smartresponder</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- SmartResponder.ru subscribe form code (begin) --><script language="javascript" type="text/javascript">
                                                              function SR_IsListSelected(el) {
                                                                  for (var i = 0; i < el.length; i++)
                                                                      if (el[i].selected ||
      el[i].checked)
                                                                          return i;
                                                                  return -1;
                                                              }
                                                              function SR_trim(f) {
                                                                  return f.toString().replace(/^[ ]+/, '').replace(/[ ]+$/, '');
                                                              }
                                                              function SR_submit(f) {
                                                                  f["field_name_first"].value = SR_trim(f["field_name_first"].value);
                                                                  f["field_name_last"].value = SR_trim(f["field_name_last"].value);
                                                                  f["field_email"].value = SR_trim(f["field_email"].value);
                                                                  f["field_phones"].value = SR_trim(f["field_phones"].value);
                                                                  if ((SR_focus = f["field_name_first"]) && f["field_name_first"].value.replace(/^[ ]+/, '').replace(/[ ]+$/, '').length < 1 || (SR_focus = f["field_email"]) && f["field_email"].value.replace(/^[ ]+/, '').replace(/[ ]+$/, '').length < 1) { alert("Укажите значения всех обязательных для заполнения полей (помечены звездочкой)"); SR_focus.focus(); return false; }
                                                                  if (!f["field_email"].value.match(/^[\+A-Za-z0-9][\+A-Za-z0-9\._-]*[\+A-Za-z0-9_]*@([A-Za-z0-9]+([A-Za-z0-9-]*[A-Za-z0-9]+)*\.)+[A-Za-z]+$/)) { alert("Некорректный синтаксис email-адреса!"); f["field_email"].focus(); return false; }
                                                                  return true;
                                                              }
</script>
<form style="margin: 0; padding: 0;" name="SR_form" action="http://smartresponder.ru/subscribe.html" method="post" onsubmit="return SR_submit(this)"><input type=hidden name=version value="1"><input type=hidden name=tid value="0"><input type=hidden name=uid value="139606"><input type=hidden name=lang value="ru">
<table  width="300">
<tr><td style="padding: 5px; border: 1px solid #0000ff;background-color: #eeeeee;" align=center><table cellspacing=1 cellpadding=2 align=center>
<tr><td><input type=hidden name="did[]" value="148859"></td></tr>
<tr><td style="font-family: Verdana; font-size: 10pt; color: #000000; font-weight: bold;" align="center">Ваше имя:&nbsp;<font color="#ff0000"><b>*</b></font></td></tr>
<tr><td align="center"><input type=text size="20" style="font-family: Verdana; font-size: 10pt; color: #000000; background-color: #ffffff; " name="field_name_first" value=""></td></tr>
<tr><td style="font-family: Verdana; font-size: 10pt; color: #000000; font-weight: bold;" align="center">Ваша фамилия:</td></tr>
<tr><td align="center"><input type=text size="20" style="font-family: Verdana; font-size: 10pt; color: #000000; background-color: #ffffff; " name="field_name_last" value=""></td></tr>
<tr><td style="font-family: Verdana; font-size: 10pt; color: #000000; font-weight: bold;" align="center">Ваш e-mail:&nbsp;<font color="#ff0000"><b>*</b></font></td></tr>
<tr><td align="center"><input type=text size="20" style="font-family: Verdana; font-size: 10pt; color: #000000; background-color: #ffffff; " name="field_email" value=""></td></tr>
<tr><td style="font-family: Verdana; font-size: 10pt; color: #000000; font-weight: bold;" align="center">Контактный телефон:</td></tr>
<tr><td align="center"><input type=text size="20" style="font-family: Verdana; font-size: 10pt; color: #000000; background-color: #ffffff; " name="field_phones" value=""></td></tr>
<tr><td align="center"><input name="SR_submitButton" type=submit style="font-family: Verdana; font-size: 10pt; color: #000000; background-color: #f0f0c0; font-weight: bold;" value="Получить!"></td></tr>
</table></td></tr></table></form><!-- SmartResponder.ru subscribe form code (end) -->
</asp:Content>


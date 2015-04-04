<%@ Page Title="" Language="C#" MasterPageFile="~/SideModulesDefault.master" AutoEventWireup="true" CodeFile="Groessen.aspx.cs" Inherits="Groessen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ktrade - подбор размера одежды</title>
    <link rel="Stylesheet" href="../css/Infos.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Размеры одежды</h2>
    <p>Нижепреведенная информация поможет вам точно подобрать размер одежды или обуви при оформлении заказа. </p>
	<p>По опыту заказов советуем вам: определив свой размер по таблице, заказывайте как минимум на 1 размер меньше - для хорошего облегания. Очень сложно правильно снять мерки в домашних условиях, погрешность в 1-2 см могут дать разницу в целый размер!</p>
	<p>Однако, если вы знаете точно свой российский размер, то для заказа одежды по немецким каталогам (OTTO, NECKERMANN, HEINE и др.) лучше использовать формулу: НЕМЕЦКИЙ РР= РОССИЙСКИЙ РР - 8, для европейских каталогов (H&M) ЕВРОПЕЙСКИЙ РР= РОССИЙСКИЙ РР - 6</p>
    <ul>
        <li><a href="#Mann">Мужские размеры</a></li>
        <li><a href="#Frau">Женские размеры</a></li>
        <li><a href="#Kind">Детские размеры</a></li>
        <li><a href="#Badeanzug">Размеры нижнего белья и купальников</a></li>
        <li><a href="#Shuhe">Размеры обуви</a></li>
        <li><a href="#Kindershuhe">Размеры детской обуви</a></li>
        <li><a href="#Handshuhe">Размеры перчаток и шляп</a></li>
        <li><a href="#Groessenmassgabe">Таблицы соответствия размеров</a></li>
    </ul>
    <div class="tableholder">
        <table id="Mann" class="centered">
            <caption>Мужские размеры</caption>
            <tr><th>Рост</th><th>Обхват груди</th><th>Обхват талии</th><th>Длина по боковому шву</th><th>Размер</th></tr>
            <tr><td>162-166</td><td>82-85</td><td>70-73</td><td>98-100</td><td>42</td></tr>
            <tr><td>164-168</td><td>84-87</td><td>72-75</td><td>99-101</td><td>43</td></tr>
            <tr><td>166-170</td><td>86-89</td><td>74-77</td><td>100-103</td><td>44</td></tr>
            <tr><td>168-173</td><td>90-93</td><td>78-81</td><td>102-104</td><td>46</td></tr>
            <tr><td>171-176</td><td>94-97</td><td>82-85</td><td>103-106</td><td>48</td></tr>
            <tr><td>174-179</td><td>98-101</td><td>86-89</td><td>105-108</td><td>50</td></tr>
            <tr><td>177-182</td><td>102-105</td><td>90-94</td><td>107-109</td><td>52</td></tr>
            <tr><td>180-184</td><td>106-109</td><td>95-99</td><td>108-110</td><td>54</td></tr>
            <tr><td>182-186</td><td>110-113</td><td>100-104</td><td>109-112</td><td>56</td></tr>
            <tr><td>184-188</td><td>114-117</td><td>105-109</td><td>111-114</td><td>58</td></tr>
            <tr><td>185-189</td><td>118-121</td><td>110-114</td><td>112-115</td><td>60</td></tr>
            <tr><td>187-191</td><td>122-125</td><td>115-119</td><td>114-116</td><td>62</td></tr>
            <tr><td>189-193</td><td>126-129</td><td>120-124</td><td>115-117</td><td>64</td></tr>
            <tr><td>191-194</td><td>130-133</td><td>125-129</td><td>116-118</td><td>66</td></tr>
            <tr><td>192-196</td><td>134-137</td><td>130-134</td><td>117-119</td><td>68</td></tr>
            <tr><td>194-198</td><td>138-141</td><td>135-139</td><td>118-120</td><td>70</td></tr>
            <tr><td>196-200</td><td>142-145</td><td>140-144</td><td>119-121</td><td>72</td></tr>
            <tr><td>198-202</td><td>146-149</td><td>145-149</td><td>120-122</td><td>74</td></tr>
            <tr><td>200-203</td><td>150-153</td><td>150-154</td><td>121-123</td><td>76</td></tr>
            <tr><td>201-204</td><td>154-157</td><td>155-159</td><td>121-124</td><td>78</td></tr>
            <tr><td>203-206</td><td>158-161</td><td>160-164</td><td>122-125</td><td>80</td></tr>
            <tr><td>204-207</td><td>162-165</td><td>165-169</td><td>123-126</td><td>82</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="SchlimmMann" class="centered">
            <caption>Размеры для худых мужчин</caption>
            <tr><th>Рост</th><th>Обхват груди</th><th>Обхват талии</th><th>Длина по боковому шву</th><th>Размер</th></tr>
            <tr><td>177-181</td><td>87-90</td><td>74-77</td><td>106-109</td><td>90</td></tr>
            <tr><td>180-184</td><td>91-94</td><td>78-81</td><td>108-110</td><td>94</td></tr>
            <tr><td>182-186</td><td>95-98</td><td>82-85</td><td>109-112</td><td>98</td></tr>
            <tr><td>184-188</td><td>99-102</td><td>86-89</td><td>111-113</td><td>102</td></tr>
            <tr><td>187-191</td><td>103-106</td><td>90-94</td><td>112-115</td><td>106</td></tr>
            <tr><td>190-194</td><td>107-110</td><td>95-99</td><td>114-116</td><td>110</td></tr>
            <tr><td>193-197</td><td>111-114</td><td>100-104</td><td>115-118</td><td>114</td></tr>
            <tr><td>196-200</td><td>115-118</td><td>105-109</td><td>117-119</td><td>118</td></tr>
            <tr><td>199-203</td><td>119-122</td><td>110-114</td><td>118-120</td><td>122</td></tr>
            <tr><td>204-206</td><td>123-126</td><td>115-119</td><td>119-121</td><td>126</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Mannjeans" class="centered">
            <caption>Размеры мужских джинсов</caption>
            <tr><th>Обхват талии</th><th>Размер</th><th>Длина по шаговому шву (внутр.шов)</th><th>Длина</th></tr>
            <tr><td>73-74</td><td>29</td><td>74-77</td><td>30</td></tr>
            <tr><td>75-78</td><td>30</td><td>78-81</td><td>32</td></tr>
            <tr><td>79-82</td><td>32</td><td>82-86</td><td>34</td></tr>
            <tr><td>83-85</td><td>33</td><td>87-91</td><td>36</td></tr>
            <tr><td>86-89</td><td>34</td><td></td><td></td></tr>
            <tr><td>90-94</td><td>36</td><td></td><td></td></tr>
            <tr><td>95-99</td><td>38</td><td></td><td></td></tr>
            <tr><td>100-104</td><td>40</td><td></td><td></td></tr>
            <tr><td>105-109</td><td>42</td><td></td><td></td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Frau" class="centered">
            <caption>Женские размеры</caption>
            <tr><td></td><td></td><th>Рост >></th><td>< 157</td><td>157-164</td><td>165-172</td><td>> 172</td></tr>
            <tr><td></td><td></td><th>Боковая длина >></th><td>94</td><td>100</td><td>106</td><td>112</td></tr>
            <tr><th>Обхват груди</th><th>Обхват талии</th><th>Обхват бёдер</th><th>Размер</th><th></th><th></th><th></th></tr>
            <tr><td>74-77</td><td>60-62</td><td>84-87</td><td>-</td><td>-</td><td>32</td><td>-</td></tr>
            <tr><td>78-81</td><td>63-65</td><td>88-91</td><td>-</td><td>17</td><td>34</td><td>-</td></tr>
            <tr><td>82-85</td><td>66-69</td><td>92-95</td><td>185</td><td>18</td><td>36</td><td>72</td></tr>
            <tr><td>86-89</td><td>70-73</td><td>96-98</td><td>195</td><td>19</td><td>38</td><td>76</td></tr>
            <tr><td>90-93</td><td>74-77</td><td>99-101</td><td>205</td><td>20</td><td>40</td><td>80</td></tr>
            <tr><td>94-97</td><td>78-81</td><td>102-104</td><td>215</td><td>21</td><td>42</td><td>84</td></tr>
            <tr><td>98-102</td><td>82-85</td><td>105-108</td><td>225</td><td>22</td><td>44</td><td>88</td></tr>
            <tr><td>103-107</td><td>86-90</td><td>109-112</td><td>235</td><td>23</td><td>46</td><td>92</td></tr>
            <tr><td>108-113</td><td>91-95</td><td>113-116</td><td>245</td><td>24</td><td>48</td><td>96</td></tr>
            <tr><td>114-119</td><td>96-102</td><td>117-121</td><td>255</td><td>25</td><td>50</td><td>100</td></tr>
            <tr><td>120-125</td><td>103-108</td><td>122-126</td><td>265</td><td>26</td><td>52</td><td>104</td></tr>
            <tr><td>126-131</td><td>109-114</td><td>127-132</td><td>275</td><td>27</td><td>54</td><td>108</td></tr>
            <tr><td>132-137</td><td>115-121</td><td>133-138</td><td>285</td><td>28</td><td>56</td><td>112</td></tr>
            <tr><td>138-143</td><td>122-128</td><td>139-144</td><td>-</td><td>29</td><td>58</td><td>116</td></tr>
            <tr><td>144-149</td><td>129-134</td><td>145-150</td><td>-</td><td>30</td><td>60</td><td>120</td></tr>
            <tr><td>150-155</td><td>135-142</td><td>151-156</td><td>-</td><td>-</td><td>62</td><td>-</td></tr>
            <tr><td>156-161</td><td>143-149</td><td>157-162</td><td>-</td><td>-</td><td>64</td><td>-</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Kind" class="centered">
            <caption>Детские размеры</caption>
            <tr><th>Возраст</th><th>Рост</th><th>Обхват груди</th><th>Обхват талии</th><th>Обхват бёдер</th><th>Боковая длина</th><th>Размер</th></tr>
            <tr><td>6 мес</td><td>68</td><td>50</td><td>47</td><td>47</td><td>21,5</td><td>68</td></tr>
            <tr><td>9 мес</td><td>80</td><td>52</td><td>49</td><td>51</td><td>28,9</td><td>80</td></tr>
            <tr><td>12 мес</td><td>92</td><td>54</td><td>51</td><td>55</td><td>36,3</td><td>92</td></tr>
            <tr><td>2-3</td><td>104</td><td>56</td><td>53</td><td>59</td><td>43,7</td><td>104</td></tr>
            <tr><td>4-5</td><td>116</td><td>58</td><td>55</td><td>63</td><td>51,1</td><td>116</td></tr>
            <tr><td>6-7</td><td>128</td><td>64</td><td>58</td><td>69</td><td>58,5</td><td>128</td></tr>
            <tr><td>8-9</td><td>140</td><td>70</td><td>61</td><td>75</td><td>65,9</td><td>140</td></tr>
            <tr><td>10-11</td><td>152</td><td>76</td><td>64</td><td>82</td><td>71,5</td><td>152</td></tr>
            <tr><td>12-13</td><td>164</td><td>82</td><td>67</td><td>89</td><td>77,1</td><td>164</td></tr>
            <tr><td>14-15</td><td>176</td><td>88</td><td>70</td><td>96</td><td>82,7</td><td>176</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <h3>Мерить нужно так:</h3>
        <img src="../Images/GirlMeasure.png" alt="Measure" />
        <div>
            <ol>
                <li>Рост</li>
                <p>босиком, от пяток до макушки (используйте посторонюю помощь)</p>
                <li>Обхват груди</li>
                <p>по выступающим точкам груди вокруг тела</p>
                <li>Обхват талии</li>
                <p>вокруг талии, не стягивая</p>
                <li>Обхват бёдер</li>
                <p>горизонтально, вокруг бёдер</p>
                <li>Боковая длина</li>
                <p>от талии, через бёдра до ступни (без пояса)</p>
            </ol>
        </div>
    </div>
    <div class="tableholder">
        <table id="Badeanzug" class="centered">
            <caption>Размеры для нижнего белья и купальных плавок</caption>
            <tr><th>Рост</th><th>Обхват груди</th><th>Обхват талии</th><th>Размер</th></tr>
            <tr><td>158-168</td><td>76-87</td><td>74-79</td><td>3</td></tr>
            <tr><td>162-172</td><td>88-93</td><td>80-85</td><td>4</td></tr>
            <tr><td>166-176</td><td>94-99</td><td>86-91</td><td>5</td></tr>
            <tr><td>170-180</td><td>100-105</td><td>92-97</td><td>6</td></tr>
            <tr><td>174-184</td><td>106-111</td><td>98-103</td><td>7</td></tr>
            <tr><td>178-188</td><td>112-117</td><td>104-109</td><td>8</td></tr>
            <tr><td>180-190</td><td>118-123</td><td>110-115</td><td>9</td></tr>
            <tr><td>184-194</td><td>124-129</td><td>116-121</td><td>10</td></tr>
            <tr><td>185-195</td><td>127-134</td><td>119-126</td><td>11</td></tr>
            <tr><td>186-196</td><td>130-140</td><td>122-132</td><td>12</td></tr>
            <tr><td>187-197</td><td>135-145</td><td>127-137</td><td>13</td></tr>
            <tr><td>188-198</td><td>141-151</td><td>133-143</td><td>14</td></tr>
            <tr><td>190-200</td><td>152-162</td><td>144-154</td><td>16</td></tr>
            <tr><td>192-202</td><td>163-173</td><td>155-165</td><td>18</td></tr>
            <tr><td>194-204</td><td>174-184</td><td>166-176</td><td>20</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <h3>Размеры обуви</h3>
        <p>При изменении американских размеров обуви в европейские, часто возникают проблемы.Часто это зависит от определённых моделей обуви и тогда , например для 39 размерв подходит 39,5.</p>
        <p><b>Если в описании артикула нет особых пометок,которые касаются размера, то Вы можете ориентироваться на данную таблицу!</b></p>
    </div>
    <div class="tableholder">
        <table id="Shuhe" class="centered">
            <caption>Таблица размеров для женщин</caption>
            <tr><th>Длина ступни</th><th>Европа</th><th>Англия</th><th>Америка</th></tr>
            <tr><td></td><td>35</td><td>2,5</td><td>5</td></tr>
            <tr><td></td><td>35,5</td><td>3</td><td>5,5</td></tr>
            <tr><td>23</td><td>36</td><td>3,5</td><td>6</td></tr>
            <tr><td>23,8</td><td>37</td><td>4</td><td>6,5</td></tr>
            <tr><td></td><td>37,5</td><td>4,5</td><td>7</td></tr>
            <tr><td>24,3</td><td>38</td><td>5</td><td>7,5</td></tr>
            <tr><td>24,7</td><td>38,5</td><td>5,5</td><td>8</td></tr>
            <tr><td>25,1</td><td>39</td><td>6</td><td>8,5</td></tr>
            <tr><td></td><td>39,5</td><td>6,5</td><td>9</td></tr>
            <tr><td>25,5</td><td>40</td><td>7</td><td>9,5</td></tr>
            <tr><td></td><td>40,5</td><td>7,5</td><td>10</td></tr>
            <tr><td>26,4</td><td>41</td><td>8</td><td>10,5</td></tr>
            <tr><td>26,8</td><td>42</td><td>8,5</td><td>11</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="ShuheII" class="centered">
            <caption>Таблица размеров для мужчин</caption>
            <tr><th>Длина ступни</th><th>Европа</th><th>Англия</th><th>Америка</th></tr>
            <tr><td></td><td>39,5</td><td>6</td><td>7</td></tr>
            <tr><td>25,7</td><td>40</td><td>6,5</td><td>7,5</td></tr>
            <tr><td></td><td>40,5</td><td>7</td><td>8</td></tr>
            <tr><td>26,4</td><td>41</td><td>7,5</td><td>8,5</td></tr>
            <tr><td>27</td><td>42</td><td>8</td><td>9</td></tr>
            <tr><td></td><td>42,5</td><td>8,5</td><td>9,5</td></tr>
            <tr><td>27,7</td><td>43</td><td>9</td><td>10</td></tr>
            <tr><td>28,4</td><td>44</td><td>9,5</td><td>10,5</td></tr>
            <tr><td></td><td>44,5</td><td>10</td><td>11</td></tr>
            <tr><td>29</td><td>45</td><td>10,5</td><td>11,5</td></tr>
            <tr><td>29,7</td><td>46</td><td>11</td><td>12</td></tr>
            <tr><td></td><td>46,5</td><td>11,5</td><td>12,5</td></tr>
            <tr><td>30,3</td><td>47</td><td>12</td><td>13</td></tr>
            <tr><td></td><td>47,5</td><td>13</td><td>14</td></tr>
            <tr><td>31</td><td>48</td><td>14</td><td>15</td></tr>
        </table>
    </div>
    <div class="tableholder" id="Kindershuhe">
        <h3>Размеры детской обуви</h3>
        <p>В России используется метрическая система, где размер детской обуви равен длине стопы (от самой выступающей точки пятки до наиболее выступающего пальца) в миллиметрах. Интервал между смежными размерами составляет 5 мм.</p>
        <p>Для импортной детской обуви чаще всего размер указывается в штихмассовой системе - длина стельки в штихах (1 штих = 2/3 см).</p>
        <p>Вы можете в разных источниках встретиться с разногласиями при пересчете из одной системы в другую - это связано с тем, что стелька длинее чем стопа ребенка на декоративный припуск, а эта разница в длине отличается у разных производителей (но в среднем составляет около 10 мм).</p>
        <p>Как правило, для ребенка от 6 до 9 месяцев подойдет размер 17, для ребенка от 9 до 12 месяцев – размер обуви 18, а для детей от 12 до 18 месяцев – обувь размера 19.</p>
        <p>Чтобы точнее определить нужный для вашего ребенка размер обуви, измерьте длину его стопы (для этого можно обвести его ножку карандашом на листе бумаги) и обратитесь к таблице:</p>
    </div>
    <div class="tableholder">
        <table id="KindershuheTable" class="centered">
            <caption>Размеры детской обуви</caption>
            <tr><th>Группа</th><th>Длина стопы</th><th>Размер</th></tr>
            <tr><td rowspan="5">пинетки</td><td>10,5</td><td>17</td></tr>
            <tr><td>11</td><td>18</td></tr>
            <tr><td>11,5</td><td>19</td></tr>
            <tr><td>12</td><td>19,5</td></tr>
            <tr><td>12,5</td><td>20</td></tr>
            <tr><td rowspan="8">ясельная</td><td>10,5</td><td>17</td></tr>
            <tr><td>11</td><td>18</td></tr>
            <tr><td>11,5</td><td>19</td></tr>
            <tr><td>12</td><td>19,5</td></tr>
            <tr><td>12,5</td><td>20</td></tr>
            <tr><td>13</td><td>21</td></tr>
            <tr><td>13,5</td><td>22</td></tr>
            <tr><td>14</td><td>22,5</td></tr>
            <tr><td rowspan="5">малодетская</td><td>14,5</td><td>23</td></tr>
            <tr><td>15</td><td>24</td></tr>
            <tr><td>15,5</td><td>25</td></tr>
            <tr><td>16</td><td>25,5</td></tr>
            <tr><td>16,5</td><td>26</td></tr>
            <tr><td rowspan="7">дошкольная</td><td>17</td><td>27</td></tr>
            <tr><td>17,5</td><td>28</td></tr>
            <tr><td>18</td><td>28,5</td></tr>
            <tr><td>18,5</td><td>29</td></tr>
            <tr><td>19</td><td>30</td></tr>
            <tr><td>19,5</td><td>31</td></tr>
            <tr><td>20</td><td>31,5</td></tr>
        </table>
    </div>
    <div class="tableholder" id="Handshuhe">
        <h3>Размеры перчаток</h3>
        <img src="../Images/gloves-measurement.jpg" width="56" height="43" alt="GlMeasure" />
        <p>Определить свой размер перчаток совсем несложно - достаточно иметь обычную измерительную ленту. Размер перчаток определяется по обхвату ладони (см. рисунок) - достаточно измерить ее объем без большого пальца, несильно затягивая ленту, а затем определить свой размер по таблице:</p>
    </div>
    <div class="tableholder">
        <table id="handshuhetable" class="centered">
            <caption>Размеры перчаток</caption>
            <tr><th>Измерение</th><th>Британия / США</th><th>Метрическая</th><th>Размер перчаток</th></tr>
            <tr><td>7" - 7 1/2"</td><td>7"</td><td>17.8 см</td><td>XSM</td></tr>
            <tr><td>7 1/2" - 8 1/4"</td><td>8"</td><td>20 см</td><td>SM</td></tr>
            <tr><td>8 1/2" - 9 1/4"</td><td>9"</td><td>23 см</td><td>MD</td></tr>
            <tr><td>9 1/2" - 10 1/4"</td><td>10"</td><td>25 см</td><td>LG</td></tr>
            <tr><td>10 1/2" - 11 1/4"</td><td>11"</td><td>28 см</td><td>XLG</td></tr>
            <tr><td>11 1/2" - 12 1/4"</td><td>12"</td><td>30.5 см</td><td>XXLG</td></tr>
            <tr><td>12 1/2" +</td><td>13"</td><td>33 см</td><td>XXXLG</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Muetzen" class="centered">
            <caption>Размеры шляп</caption>
            <tr><th>Российский размер</th><th>Американский размер (дюймы)</th><th></th></tr>
            <tr><td>53</td><td>6,625</td><td>XXS</td></tr>
            <tr><td>54</td><td>6,75</td><td>XS</td></tr>
            <tr><td>55</td><td>6,875</td><td>S</td></tr>
            <tr><td>56</td><td>7</td><td>SM</td></tr>
            <tr><td>57</td><td>7,125</td><td>M</td></tr>
            <tr><td>58</td><td>7,25</td><td>ML</td></tr>
            <tr><td>59</td><td>7,375</td><td>L</td></tr>
            <tr><td>60</td><td>7,5</td><td>L-XL</td></tr>
            <tr><td>61</td><td>7,625</td><td>XL</td></tr>
            <tr><td>62</td><td>7,75</td><td>XXL</td></tr>
            <tr><td>63</td><td>7,875</td><td>XXXL</td></tr>
            <tr><td>64</td><td>8</td><td>4XL</td></tr>
            <tr><td>65</td><td>8,125</td><td>5XL</td></tr>
        </table>
    </div>
    <div class="tableholder" style="clear:both">
        <h3>Таблицы соответствия размеров</h3>
    </div>
    <div class="tableholder" id="Groessenmassgabe" style="clear:both">
        <table id="Mannmantel" class="centered">
            <caption>Мужская верхняя одежда, пиджаки, брюки и костюмы</caption>
            <tr><th>Россия</th><th>США</th><th>Международный</th><th>Европа</th></tr>
            <tr><td>46 - 48</td><td>36 - 38</td><td>S</td><td>46 - 48</td></tr>
            <tr><td>48 - 50</td><td>38 - 40</td><td>M</td><td>48 - 50</td></tr>
            <tr><td>50 - 52</td><td>40 - 42</td><td>L</td><td>50 - 52</td></tr>
            <tr><td>52 - 54</td><td>42 - 44</td><td>XL</td><td>52 - 54</td></tr>
            <tr><td>54 - 56</td><td>44 - 46</td><td>XXL</td><td>54 - 56</td></tr>
            <tr><td>56 - 58</td><td>46 - 48</td><td>XXXL</td><td>56 - 58</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Mannhemden" class="centered">
            <caption>Мужские рубашки</caption>
            <tr><th>Россия</th><th>Европа</th><th>США</th><th>Международные</th></tr>
            <tr><td>37</td><td>37</td><td>141/2</td><td>S</td></tr>
            <tr><td>38</td><td>38</td><td>15</td><td></td></tr>
            <tr><td>39 - 40</td><td>39 - 40</td><td>15,5</td><td>M</td></tr>
            <tr><td>41</td><td>41</td><td>16</td><td>L</td></tr>
            <tr><td>42</td><td>42</td><td>161/2</td><td></td></tr>
            <tr><td>43</td><td>43</td><td>17</td><td></td></tr>
            <tr><td>44</td><td>44</td><td>171/2</td><td>XL</td></tr>
            <tr><td>45</td><td>45</td><td>18</td><td>XXL</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Manunderwear" class="centered">
            <caption>Мужское белье</caption>
            <tr><th>Чехия</th><th>Россия</th><th>Великобритания</th><th>Германия</th><th>Франция</th></tr>
            <tr><td>6</td><td>44</td><td>32</td><td>3</td><td>2</td></tr>
            <tr><td>7</td><td>46</td><td>34</td><td>4</td><td>3</td></tr>
            <tr><td>8</td><td>48</td><td>36</td><td>5</td><td>4</td></tr>
            <tr><td>9</td><td>50</td><td>38</td><td>6</td><td>5</td></tr>
            <tr><td>10</td><td>52</td><td>40</td><td>7</td><td>6</td></tr>
            <tr><td>11</td><td>54</td><td>42</td><td>8</td><td>7</td></tr>
            <tr><td>12</td><td>56</td><td>44</td><td>9</td><td>8</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Fraukleidung" class="centered">
            <caption>Женская одежда</caption>
            <tr><th>Россия</th><th>США</th><th>Международный</th><th>Европа</th></tr>
            <tr><td>40</td><td>6</td><td>XS</td><td>34</td></tr>
            <tr><td>42</td><td>8</td><td>XS</td><td>36</td></tr>
            <tr><td>44</td><td>10</td><td>S</td><td>38</td></tr>
            <tr><td>46</td><td>12</td><td>M</td><td>40</td></tr>
            <tr><td>48</td><td>14</td><td>M</td><td>42</td></tr>
            <tr><td>50</td><td>16</td><td>L</td><td>44</td></tr>
            <tr><td>52</td><td>18</td><td>XL</td><td>46</td></tr>
            <tr><td>54</td><td>20</td><td>XL</td><td>48</td></tr>
            <tr><td>56</td><td>22</td><td>XXL</td><td>50</td></tr>
            <tr><td>58</td><td>24</td><td>XXXL</td><td>52</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Fraubadeanzug" class="centered">
            <caption>Женское белье</caption>
            <tr><th>Обхват талии</th><th>Обхват бедер</th><th>Международный</th><th>Россия</th><th>США</th><th>Германия</th><th>Франция</th></tr>
            <tr><td>63-65</td><td>89 - 92</td><td>XXS</td><td>42</td><td>8</td><td>36</td><td>38</td></tr>
            <tr><td>66-69</td><td>93 - 96</td><td>XS</td><td>44</td><td>10</td><td>38</td><td>40</td></tr>
            <tr><td>70-74</td><td>97 - 101</td><td>S</td><td>46</td><td>12</td><td>40</td><td>42</td></tr>
            <tr><td>75-78</td><td>102-104</td><td>M</td><td>48</td><td>14</td><td>42</td><td>44</td></tr>
            <tr><td>79-83</td><td>105-108</td><td>L</td><td>50</td><td>16</td><td>44</td><td>46</td></tr>
            <tr><td>84-89</td><td>109-112</td><td>XL</td><td>52</td><td>18</td><td>42</td><td>48</td></tr>
            <tr><td>90-94</td><td>113-117</td><td>XXL</td><td>54</td><td>20</td><td>46</td><td>50</td></tr>
            <tr><td>90-94</td><td>118-122</td><td>XXXL</td><td>56</td><td>22</td><td>48</td><td>52</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Bra" class="centered">
            <caption>Бюстгалтеры</caption>
            <tr><th>Россия</th><th>США</th></tr>
            <tr><td>65(AA,А,B)</td><td>30(AA,А,B)</td></tr>
            <tr><td>70(AA,А,B,C)</td><td>32(AA,А,B,C)</td></tr>
            <tr><td>75(А...E)</td><td>34(А...E)</td></tr>
            <tr><td>80(А...E)</td><td>36(А...E)</td></tr>
            <tr><td>85(A...E)</td><td>38(A...E)</td></tr>
            <tr><td>90(B...E)</td><td>40(B...E)</td></tr>
            <tr><td>95(B...E)</td><td>42(B...E)</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="Socken" class="centered">
            <caption>Носки</caption>
            <tr><th>Россия</th><th>Европа</th><th>США</th></tr>
            <tr><td>23</td><td>37/38</td><td>8</td></tr>
            <tr><td>25</td><td>39/40</td><td>9</td></tr>
            <tr><td>27</td><td>41/42</td><td>10</td></tr>
            <tr><td>29</td><td>43/44</td><td>11</td></tr>
            <tr><td>31</td><td>45/46</td><td>12</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="MannshuheII" class="centered">
            <caption>Мужская обувь</caption>
            <tr><th>Сантиметры</th><th>Россия</th><th>Европа</th><th>США</th></tr>
            <tr><td>25</td><td>39</td><td>40</td><td>7</td></tr>
            <tr><td>25,5</td><td>39,5</td><td>40,5</td><td>7,5</td></tr>
            <tr><td>26</td><td>40</td><td>41</td><td>8</td></tr>
            <tr><td>26,5</td><td>40,5</td><td>41,5</td><td>8,5</td></tr>
            <tr><td>27</td><td>41</td><td>42</td><td>9</td></tr>
            <tr><td>27,5</td><td>41,5</td><td>42,5</td><td>9,5</td></tr>
            <tr><td>28</td><td>42</td><td>43</td><td>10</td></tr>
            <tr><td>28,5</td><td>42,5</td><td>43,5</td><td>10,5</td></tr>
            <tr><td>29</td><td>43</td><td>44</td><td>11</td></tr>
            <tr><td>29,5</td><td>43,5</td><td>44,5</td><td>11,5</td></tr>
            <tr><td>30</td><td>44</td><td>45</td><td>12</td></tr>
            <tr><td>31</td><td>45</td><td>46</td><td>13</td></tr>
            <tr><td>32</td><td>46</td><td>47</td><td>14</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="FraushuheII" class="centered">
            <caption>Женская обувь</caption>
            <tr><th>Сантиметры</th><th>Россия</th><th>Европа</th><th>США</th></tr>
            <tr><td>21,5</td><td>34</td><td>35</td><td>5</td></tr>
            <tr><td>22</td><td>34,5</td><td>35,5</td><td>5,5</td></tr>
            <tr><td>22,5</td><td>35</td><td>36</td><td>6</td></tr>
            <tr><td>23</td><td>35,5</td><td>36,5</td><td>6,5</td></tr>
            <tr><td>23,5</td><td>36</td><td>37</td><td>7</td></tr>
            <tr><td>24</td><td>36,5</td><td>37,5</td><td>7,5</td></tr>
            <tr><td>24,5</td><td>37</td><td>38</td><td>8</td></tr>
            <tr><td>25</td><td>37,5</td><td>38,5</td><td>8,5</td></tr>
            <tr><td>25,5</td><td>38</td><td>39</td><td>9</td></tr>
            <tr><td>26</td><td>38,5</td><td>39,5</td><td>9,5</td></tr>
        </table>
    </div>
    <div class="tableholder">
        <table id="KindershuheII" class="centered">
            <caption>Детская обувь</caption>
            <tr><th>Сантиметры</th><th>Россия</th><th>Европа</th><th>США</th></tr>
            <tr><td>20</td><td>31</td><td>32</td><td>1</td></tr>
            <tr><td>20,5</td><td>32</td><td>33</td><td>2</td></tr>
            <tr><td>21,5</td><td>33</td><td>34</td><td>3</td></tr>
            <tr><td>22</td><td>34</td><td>35</td><td>4</td></tr>
            <tr><td>23</td><td>36</td><td>37</td><td>5</td></tr>
            <tr><td>24</td><td>37</td><td>38</td><td>6</td></tr>
        </table>
    </div>
</asp:Content>


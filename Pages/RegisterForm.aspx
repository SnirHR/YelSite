<%@ Page Language="C#" Title="Register" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="YelSite.Pages.RegisterForm" MasterPageFile="~/Site.Master" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Register.js"></script>
    <div class="logo-container">
        <a href="../" class="logo"></a>
    </div>
    <div id="form-container">
        <input id="Rid" placeholder="Enter ID" type="number" required="required" runat="server" />
        <input id="Ruser" placeholder="Enter Username" type="text" required="required" runat="server" />
        <input id="Remail" placeholder="Enter E-Mail" type="email" required="required" runat="server" />
        <input id="Rfname" placeholder="Enter first name" type="text" required="required" runat="server" />
        <input id="Rlname" placeholder="Enter last name" type="text" required="required" runat="server" />
        <input id="Rbirthday" placeholder="Enter your birthday" type="date" required="required" runat="server" />
        <input id="Rpassword" placeholder="Enter Password" type="password" required="required" runat="server" />
        <input id="Rconfirm" placeholder="Confirm Password" type="password" required="required" runat="server" />
        <input id="Reducation" placeholder="Enter education experience" type="text" runat="server" />
        <input id="Rphone" onblur="checkPhone" placeholder="Enter your phone number" type="tel" runat="server" />
        <select name="Rrole" class="form-control" id="Rrole" runat="server">
            <option value="" selected disabled>Choose role</option>
            <option value="Mentor" label="Mentor">Mentor</option>
            <option value="Student" label="Student">Student</option>
        </select>
        <select id="Rgender" class="form-control" runat="server">
            <option value="" selected disabled>Choose Gender</option>
            <option value="M" label="Male">Male</option>
            <option value="F" label="Female">Female</option>
            <option value="O" label="Other">Other</option>
        </select>
        <select id="Rlanguage" class="form-control" runat="server">
            <option value="" selected disabled>Select language</option>
            <option value="af">Afrikaans</option>
            <option value="sq">Albanian</option>
            <option value="am">Amharic</option>
            <option value="ar">Arabic</option>
            <option value="an">Aragonese</option>
            <option value="hy">Armenian</option>
            <option value="ast">Asturian</option>
            <option value="az">Azerbaijani</option>
            <option value="eu">Basque</option>
            <option value="be">Belarusian</option>
            <option value="bn">Bengali</option>
            <option value="bs">Bosnian</option>
            <option value="br">Breton</option>
            <option value="bg">Bulgarian</option>
            <option value="ca">Catalan</option>
            <option value="ckb">Central Kurdish</option>
            <option value="zh">Chinese</option>
            <option value="zh-HK">Chinese (Hong Kong)</option>
            <option value="zh-CN">Chinese (Simplified)</option>
            <option value="zh-TW">Chinese (Traditional)</option>
            <option value="co">Corsican</option>
            <option value="hr">Croatian</option>
            <option value="cs">Czech</option>
            <option value="da">Danish</option>
            <option value="nl">Dutch</option>
            <option value="en">English</option>
            <option value="en-AU">English (Australia)</option>
            <option value="en-CA">English (Canada)</option>
            <option value="en-IN">English (India)</option>
            <option value="en-NZ">English (New Zealand)</option>
            <option value="en-ZA">English (South Africa)</option>
            <option value="en-GB">English (United Kingdom)</option>
            <option value="en-US">English (United States)</option>
            <option value="eo">Esperanto</option>
            <option value="et">Estonian</option>
            <option value="fo">Faroese</option>
            <option value="fil">Filipino</option>
            <option value="fi">Finnish</option>
            <option value="fr">French</option>
            <option value="fr-CA">French (Canada)</option>
            <option value="fr-FR">French (France)</option>
            <option value="fr-CH">French (Switzerland)</option>
            <option value="gl">Galician</option>
            <option value="ka">Georgian</option>
            <option value="de">German</option>
            <option value="de-AT">German (Austria)</option>
            <option value="de-DE">German (Germany)</option>
            <option value="de-LI">German (Liechtenstein)</option>
            <option value="de-CH">German (Switzerland)</option>
            <option value="el">Greek</option>
            <option value="gn">Guarani</option>
            <option value="gu">Gujarati</option>
            <option value="ha">Hausa</option>
            <option value="haw">Hawaiian</option>
            <option value="he">Hebrew</option>
            <option value="hi">Hindi</option>
            <option value="hu">Hungarian</option>
            <option value="is">Icelandic</option>
            <option value="id">Indonesian</option>
            <option value="ia">Interlingua</option>
            <option value="ga">Irish</option>
            <option value="it">Italian</option>
            <option value="it-IT">Italian (Italy)</option>
            <option value="it-CH">Italian (Switzerland)</option>
            <option value="ja">Japanese</option>
            <option value="kn">Kannada</option>
            <option value="kk">Kazakh</option>
            <option value="km">Khmer</option>
            <option value="ko">Korean</option>
            <option value="ku">Kurdish</option>
            <option value="ky">Kyrgyz</option>
            <option value="lo">Lao</option>
            <option value="la">Latin</option>
            <option value="lv">Latvian</option>
            <option value="ln">Lingala</option>
            <option value="lt">Lithuanian</option>
            <option value="mk">Macedonian</option>
            <option value="ms">Malay</option>
            <option value="ml">Malayalam</option>
            <option value="mt">Maltese</option>
            <option value="mr">Marathi</option>
            <option value="mn">Mongolian</option>
            <option value="ne">Nepali</option>
            <option value="no">Norwegian</option>
            <option value="nb">Norwegian Bokmål</option>
            <option value="nn">Norwegian Nynorsk</option>
            <option value="oc">Occitan</option>
            <option value="or">Oriya</option>
            <option value="om">Oromo</option>
            <option value="ps">Pashto</option>
            <option value="fa">Persian</option>
            <option value="pl">Polish</option>
            <option value="pt">Portuguese</option>
            <option value="pt-BR">Portuguese (Brazil)</option>
            <option value="pt-PT">Portuguese (Portugal)</option>
            <option value="pa">Punjabi</option>
            <option value="qu">Quechua</option>
            <option value="ro">Romanian</option>
            <option value="mo">Romanian (Moldova)</option>
            <option value="rm">Romansh</option>
            <option value="ru">Russian</option>
            <option value="gd">Scottish Gaelic</option>
            <option value="sr">Serbian</option>
            <option value="sh">Serbo</option>
            <option value="sn">Shona</option>
            <option value="sd">Sindhi</option>
            <option value="si">Sinhala</option>
            <option value="sk">Slovak</option>
            <option value="sl">Slovenian</option>
            <option value="so">Somali</option>
            <option value="st">Southern Sotho</option>
            <option value="es">Spanish</option>
            <option value="es-AR">Spanish (Argentina)</option>
            <option value="es-419">Spanish (Latin America)</option>
            <option value="es-MX">Spanish (Mexico)</option>
            <option value="es-ES">Spanish (Spain)</option>
            <option value="es-US">Spanish (United States)</option>
            <option value="su">Sundanese</option>
            <option value="sw">Swahili</option>
            <option value="sv">Swedish</option>
            <option value="tg">Tajik</option>
            <option value="ta">Tamil</option>
            <option value="tt">Tatar</option>
            <option value="te">Telugu</option>
            <option value="th">Thai</option>
            <option value="ti">Tigrinya</option>
            <option value="to">Tongan</option>
            <option value="tr">Turkish</option>
            <option value="tk">Turkmen</option>
            <option value="tw">Twi</option>
            <option value="uk">Ukrainian</option>
            <option value="ur">Urdu</option>
            <option value="ug">Uyghur</option>
            <option value="uz">Uzbek</option>
            <option value="vi">Vietnamese</option>
            <option value="wa">Walloon</option>
            <option value="cy">Welsh</option>
            <option value="fy">Western Frisian</option>
            <option value="xh">Xhosa</option>
            <option value="yi">Yiddish</option>
            <option value="yo">Yoruba</option>
            <option value="zu">Zulu</option>
        </select>
        <select id="Rcountry" class="form-control" runat="server">
            <option value="" selected disabled>Select Country</option>
                <option value="Congo">Congo, the Democratic Republic of the</option>
                <option value="Cook Islands">Cook Islands</option>
                <option value="Costa Rica">Costa Rica</option>
                <option value="Cota D'Ivoire">Cote d'Ivoire</option>
                <option value="Croatia">Croatia (Hrvatska)</option>
                <option value="Cuba">Cuba</option>
                <option value="Cyprus">Cyprus</option>
                <option value="Czech Republic">Czech Republic</option>
                <option value="Denmark">Denmark</option>
                <option value="Djibouti">Djibouti</option>
                <option value="Dominica">Dominica</option>
                <option value="East Timor">East Timor</option>
                <option value="Ecuador">Ecuador</option>
                <option value="Egypt">Egypt</option>
                <option value="El Salvador">El Salvador</option>
                <option value="Eritrea">Eritrea</option>
                <option value="Estonia">Estonia</option>
                <option value="Ethiopia">Ethiopia</option>
                <option value="Faroe Islands">Faroe Islands</option>
                <option value="Fiji">Fiji</option>
                <option value="Finland">Finland</option>
                <option value="France">France</option>
                <option value="Gabon">Gabon</option>
                <option value="Gambia">Gambia</option>
                <option value="Georgia">Georgia</option>
                <option value="Germany">Germany</option>
                <option value="Ghana">Ghana</option>
                <option value="Gibraltar">Gibraltar</option>
                <option value="Greece">Greece</option>
                <option value="Greenland">Greenland</option>
                <option value="Grenada">Grenada</option>
                <option value="Guadeloupe">Guadeloupe</option>
                <option value="Guam">Guam</option>
                <option value="Guatemala">Guatemala</option>
                <option value="Guinea">Guinea</option>
                <option value="Guinea-Bissau">Guinea-Bissau</option>
                <option value="Guyana">Guyana</option>
                <option value="Haiti">Haiti</option>
                <option value="Honduras">Honduras</option>
                <option value="Hong Kong">Hong Kong</option>
                <option value="Hungary">Hungary</option>
                <option value="Iceland">Iceland</option>
                <option value="India">India</option>
                <option value="Indonesia">Indonesia</option>
                <option value="Iran">Iran (Islamic Republic of)</option>
                <option value="Iraq">Iraq</option>
                <option value="Ireland">Ireland</option>
                <option value="Israel">Israel</option>
                <option value="Italy">Italy</option>
                <option value="Jamaica">Jamaica</option>
                <option value="Japan">Japan</option>
                <option value="Jordan">Jordan</option>
                <option value="Kazakhstan">Kazakhstan</option>
                <option value="Kenya">Kenya</option>
                <option value="Kiribati">Kiribati</option>
                <option value="Korea">Korea, Republic of</option>
                <option value="Kuwait">Kuwait</option>
                <option value="Latvia">Latvia</option>
                <option value="Lebanon">Lebanon</option>
                <option value="Lesotho">Lesotho</option>
                <option value="Liberia">Liberia</option>
                <option value="Liechtenstein">Liechtenstein</option>
                <option value="Lithuania">Lithuania</option>
                <option value="Luxembourg">Luxembourg</option>
                <option value="Macau">Macau</option>
                <option value="Madagascar">Madagascar</option>
                <option value="Malawi">Malawi</option>
                <option value="Malaysia">Malaysia</option>
                <option value="Maldives">Maldives</option>
                <option value="Mali">Mali</option>
                <option value="Malta">Malta</option>
                <option value="Marshall Islands">Marshall Islands</option>
                <option value="Mexico">Mexico</option>
                <option value="Moldova">Moldova, Republic of</option>
                <option value="Monaco">Monaco</option>
                <option value="Mongolia">Mongolia</option>
                <option value="Montserrat">Montserrat</option>
                <option value="Morocco">Morocco</option>
                <option value="Myanmar">Myanmar</option>
                <option value="Namibia">Namibia</option>
                <option value="Nauru">Nauru</option>
                <option value="Nepal">Nepal</option>
                <option value="Netherlands">Netherlands</option>
                <option value="New Zealand">New Zealand</option>
                <option value="Nicaragua">Nicaragua</option>
                <option value="Niger">Niger</option>
                <option value="Nigeria">Nigeria</option>
                <option value="Norway">Norway</option>
                <option value="Oman">Oman</option>
                <option value="Pakistan">Pakistan</option>
                <option value="Palau">Palau</option>
                <option value="Panama">Panama</option>
                <option value="Peru">Peru</option>
                <option value="Philippines">Philippines</option>
                <option value="Poland">Poland</option>
                <option value="Portugal">Portugal</option>
                <option value="Puerto Rico">Puerto Rico</option>
                <option value="Qatar">Qatar</option>
                <option value="Romania">Romania</option>
                <option value="Russia">Russian Federation</option>
                <option value="Rwanda">Rwanda</option>
                <option value="San Marino">San Marino</option>
                <option value="Saudi Arabia">Saudi Arabia</option>
                <option value="Senegal">Senegal</option>
                <option value="Singapore">Singapore</option>
                <option value="Slovakia">Slovakia (Slovak Republic)</option>
                <option value="Slovenia">Slovenia</option>
                <option value="Somalia">Somalia</option>
                <option value="South Africa">South Africa</option>
                <option value="Spain">Spain</option>
                <option value="SriLanka">Sri Lanka</option>
                <option value="Sudan">Sudan</option>
                <option value="Suriname">Suriname</option>
                <option value="Sweden">Sweden</option>
                <option value="Switzerland">Switzerland</option>
                <option value="Syria">Syrian Arab Republic</option>
                <option value="Taiwan">Taiwan, Province of China</option>
                <option value="Tanzania">Tanzania, United Republic of</option>
                <option value="Thailand">Thailand</option>
                <option value="Togo">Togo</option>
                <option value="Tunisia">Tunisia</option>
                <option value="Turkey">Turkey</option>
                <option value="Tuvalu">Tuvalu</option>
                <option value="Uganda">Uganda</option>
                <option value="Ukraine">Ukraine</option>
                <option value="United Arab Emirates">United Arab Emirates</option>
                <option value="United Kingdom">United Kingdom</option>
                <option value="United States">United States</option>
                <option value="Uruguay">Uruguay</option>
                <option value="Uzbekistan">Uzbekistan</option>
                <option value="Vanuatu">Vanuatu</option>
                <option value="Venezuela">Venezuela</option>
                <option value="Vietnam">VietNam</option>
                <option value="Western Sahara">Western Sahara</option>
                <option value="Yemen">Yemen</option>
                <option value="Serbia">Serbia</option>
                <option value="Zambia">Zambia</option>
                <option value="Zimbabwe">Zimbabwe</option>
        </select>

        <asp:Button ID="RegisterButton" runat="server" Text="Register" CssClass="btn btn-primary submit" BorderColor="#008060" BackColor="#008060" OnClick="RegisterButton_Click" />
        <button class="reset" type="reset">Reset</button>
        <a href="LoginForm.aspx" class="login-toggle">Already have an account?</a>
        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>

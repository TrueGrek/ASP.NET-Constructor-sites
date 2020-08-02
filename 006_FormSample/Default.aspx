<%@ Page Language="C#" AutoEventWireup="true" 
    MaintainScrollPositionOnPostBack="true" 
    CodeBehind="Default.aspx.cs" Inherits="_006_FormSample.Default" %>
<% //MaintainScrollPositionOnPostBack="true"  
   //Возвращает или задает значение, указывающее, должен ли пользователь возвращаться в то же место в клиентском браузере после обратной передачи. %>
<!DOCTYPE>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="stylesheet" href="Style.css">
    <%//Загружаем шрифт из интернета %>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700|Old+Standard+TT&display=swap&subset=cyrillic" rel="stylesheet">
    <title>Простая Web форма</title>

</head>
<body>
    <%--Все серверные элементы управления должны находиться в элементе form с атрибутом runat="server"--%>
    <%--Серверные элементы начиняются с префикса <asp:--%>
   <div class="imgBack"> 
    <div class="sendName otstupTop">
    <form id="form1" runat="server">
    <div class="sender">
        <p class="sendName1 common">
            Введите имя</p>
        <div class="common1">
        <p class="layerSend">
            &nbsp;<%--При создании серверного элемента управления обязательно нужно задать два атрибута ID и runat="server"--%>
            <%--TextBox - поле ввода--%>
            <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="181px"></asp:TextBox>
        </p>
        <p class="layerSend1">
            <%--Button - кнопка. OnClick="OkButton_Click" - задание обработчика нажатия по кнопке. OkButton_Click - имя метода,
                который находиться в файле кода.--%>
            <asp:Button ID="Button1" runat="server" Text="Send" OnClick="OkButton_Click" />
        </p>
            </div>
        <p>
            <%--Label - метка для вывода текста на страницу--%>
            <asp:Label ID="Label1" runat="server" />
        </p>
        </div>
         <% //календарь %>
        <div class="groupCallendar">
   <div class="c1"> <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar></div>
   <div class="c2"> <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar></div>
   <div class="c3"> <asp:Calendar ID="Calendar3" runat="server"></asp:Calendar></div>
        </div>

        <%//список %>
        <div class="mesList">
            <div>
        <asp:BulletedList ID="ItemsBulletedList" 
      BulletStyle="Disc"
      DisplayMode="LinkButton"
      OnClick="ItemsBulletedList_Click"
      runat="server"  Width="221px">
            <asp:ListItem Value="http://www.cohowinery.com">Coho Winery</asp:ListItem>
            <asp:ListItem Value="http://www.contoso.com">Contoso, Ltd.</asp:ListItem>
            <asp:ListItem Value="http://www.tailspintoys.com">Tailspin Toys</asp:ListItem>
       </asp:BulletedList>
                </div>
              <%//print list %>
            <div class="mesListm">  
          <p><asp:Label id="Message" 
      Font-Size="12pt"
      Width="168px" 
      Font-Bold="True" 
      runat="server"
      AssociatedControlID="ItemsBulletedList"/>
              </p>
            </div>
      </div>
        <%//button %>
        <div>
            <asp:Button ID="Button2" runat="server" Text="&lt;&lt;Перейти на сайт&gt;&gt;" Width="100%" OnClick="Button2_Click" BackColor="#99CCFF" ForeColor="Black" />
        </div>
        <%//обычный чек бокс %>
        <div class="checkbox otstupTop">
            <div><asp:CheckBox ID="CheckBox1" runat="server" /><span>C#</span></div>
            <div><asp:CheckBox ID="CheckBox2" runat="server" /><span>F#</span></div>
            <div><asp:CheckBox ID="CheckBox3" runat="server" /><span>JS</span></div>
            <div><asp:CheckBox ID="CheckBox4" runat="server" /><span>Angular</span></div>
            <div><asp:CheckBox ID="CheckBox5" runat="server" /><span>Ruby</span></div>
            <div><asp:CheckBox ID="CheckBox6" runat="server" /><span>Vue</span></div>
            <div><asp:CheckBox ID="CheckBox7" runat="server" /><span>Blazor</span></div>
        </div>
        <%//чек бокс лист %>
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="31px" Width="150px">
                <asp:ListItem>ML</asp:ListItem>
                <asp:ListItem>AI</asp:ListItem>
                <asp:ListItem>Software engineer</asp:ListItem>
                <asp:ListItem>HR</asp:ListItem>
                <asp:ListItem>Programmer</asp:ListItem>
            </asp:CheckBoxList>
        </div>

        <div class="downList">
           <div> <asp:DropDownList ID="DropDownList1" runat="server" CssClass="downList1" Height="28px" Width="298px" DataTextField="Those is downList, isn't it?">
                <asp:ListItem>Lorium</asp:ListItem>
                <asp:ListItem>Kolorium</asp:ListItem>
                <asp:ListItem>Lenolium</asp:ListItem>
                <asp:ListItem>Depetrinolium</asp:ListItem> 
                     </asp:DropDownList>
               </div>
        </div>
        <div class="UploadText">Передайте нам все ваши конфиденциальные данные (прикрепите pdf файлом)</div>
        <div class="Upload1">
            <asp:FileUpload ID="FileUpload1" CssClass="Upload" runat="server" Width="197px" />
        </div>
        <div class="imgpalka"><img alt="" src="https://avatars.mds.yandex.net/get-zen_doc/1852544/pub_5d821dc095aa9f00adde4eef_5d8763f8c7e50c00ad0a2f42/scale_1200" width="100%"></div>
            <div>
               
                <asp:AdRotator ID="AdRotator1" AdvertisementFile="~/ads.xml" Target="_blank" runat="server" Height="100px" Width="100%"/>
            </div>
            <div style="margin-left:35px;">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://docs.microsoft.com/ru-ru/dotnet/api/system.web.ui.webcontrols.hiddenfield?view=netframework-4.8" Target="_blank">Купить в один клик!</asp:HyperLink>
            </div>
            <div class="imageTrump">
                <asp:Image ID="Image1" alt="" runat="server" Width="300px" Height="300px" ImageUrl="~/img/mockup-2e5ffcaf-300x300.png" />
                <asp:Label ID="Label3" alt="" runat="server"  Text="Это просто изображение" Height="23px" CssClass="imageTrump1" Width="383px"></asp:Label>
            </div>
            <div class="imageTrump">
                <asp:Label ID="Label2" runat="server"  Text="Это button-image" Height="23px" CssClass="imageTrump1" Width="383px"></asp:Label>
                <asp:ImageButton ID="ImageButton1" runat="server" Width="300px" Height="300px" ImageUrl="~/img/mockup-2e5ffcaf-300x300.png" PostBackUrl="https://smartprogress.do/" />
        </div>
            <div class="imagemap">
                <asp:ImageMap alt="" ID="ImageMap1" runat="server" ImageUrl="~/img/elon-musk-companies-logos.jpg">
                    <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="https://www.tesla.com/modely" Radius="100" X="100" Y="100" />
                </asp:ImageMap>
        </div>
            <div class="ilon"><asp:Label ID="Label4" runat="server" Text="Это ImageMap, реализуется он очень неудобно, поэтому просто представьте себе, что нажимая на каждую иконку вы переходите на сайт"></asp:Label></div>
            <div>
                <asp:LinkButton ID="LinkButton1" Width="80%" runat="server" CssClass="LinkBut">LinkButton</asp:LinkButton>
        </div>
        <div ID="Label5" runat="server" visible="false" style="margin-top:20px;">
            <%
            Response.Write("<b>Выбранные элементы в Listbox1:</b><br/>");
            foreach (ListItem li in Listbox1.Items)
            {
                if (li.Selected) Response.Write("- " + li.Text + "<br/>");
            }

            Response.Write("<b>Выбранный элемент в DropdownList1:</b><br/>");
            Response.Write("- " + DropdownList2.SelectedItem.Text + "<br/>");

            Response.Write("<b>Выбранные элементы в CheckboxList1:</b><br/>");
            foreach (ListItem li in CheckboxList2.Items)
            {
                if (li.Selected) Response.Write("- " + li.Text + "<br/>");
            }

            Response.Write("<b>Выбранный элемент в RadiobuttonList1:</b><br/>");
            Response.Write("- " + RadiobuttonList1.SelectedItem.Text + "<br/><br/><br/>");
        
                %>
        </div>
<div class="myList">
            <asp:ListBox runat="server" ID="Listbox1" SelectionMode="Multiple" Rows="5">
                <asp:ListItem Selected="true">Option 1</asp:ListItem>
                <asp:ListItem>Option 2</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            <asp:DropDownList runat="server" ID="DropdownList2">
                <asp:ListItem Selected="true">Option 1</asp:ListItem>
                <asp:ListItem>Option 2</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:CheckBoxList runat="server" ID="CheckboxList2" RepeatColumns="3">
                <asp:ListItem Selected="true">Option 1</asp:ListItem>
                <asp:ListItem>Option 2</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:RadioButtonList runat="server" ID="RadiobuttonList1"
                RepeatDirection="Horizontal" RepeatColumns="2">
                <asp:ListItem Selected="true">Option 1</asp:ListItem>
                <asp:ListItem>Option 2</asp:ListItem>
            </asp:RadioButtonList>
            <div class="KnopkaZapuslRakety"><asp:Button ID="Button3" runat="server" Text="Вывести на экран то, что ты выбрал" OnClick="Button1_Click" />
           <asp:Button ID="Button4" runat="server" Text="Тыкни, чтобы добавить 3 поля каждому боксу" OnClick="Button4_Click" Width="361px" /></div>

</div>       
        <div>
        <table align="center" class="style1" style="border: thin solid #008080">
            <tr>
                <td class="style2" 
                    style="text-align: center; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #008080;">
                    MultiView Control in ASP.Net</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="btnview1" runat="server" onclick="btnview1_Click" 
                        style="font-weight: 700" Text="View1" />

                    <asp:Button ID="btnview2" runat="server" onclick="btnview2_Click" 
                        style="font-weight: 700" Text="View2" />

                    <asp:Button ID="btnview3" runat="server" onclick="btnview3_Click" 
                        style="font-weight: 700" Text="View3" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:MultiView ID="MultiView1" runat="server">
                        <asp:View ID="View1" runat="server">
                            <table border="1" class="style3">
                                <tr>
                                    <td class="style5" style="text-align: center">
                                        View -1</td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        MEERA ACADEMY</td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                            <table border="1" class="style3">
                                <tr>
                                    <td class="style7" style="text-align: center">
                                        View -2</td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        MICRO EDUCATION</td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                            <table border="1" class="style3">
                                <tr>
                                    <td class="style9" style="text-align: center">
                                        View -3</td>
                                </tr>
                                <tr>
                                    <td class="style8">
                                        MEERA SOFTWARE</td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
        </table>
         </div> 
    <div class="wiz">Сейчас будет большая реализация Wizard</div>
    <%//Сейчас будет большая реализация Wizard %>
    <div class="wizard">  
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="210px" OnNextButtonClick="Wizard1_NextButtonClick" Width="496px">  
            <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />  
            <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />  
            <SideBarButtonStyle ForeColor="White" />  
            <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />  
            <WizardSteps>  
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Student Details">  
                    <table style="width: 100%;">  
                        <tr>  
                            <td><strong>Student Details</strong></td>  
                              
                        </tr>  
                        <tr>  
                            <td>Student FirstName</td>  
                            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>  
                            <td></td>  
                        </tr>  
                        <tr>  
                            <td>Student LastName</td>  
                            <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>  
                            <td> </td>  
                        </tr>  
                    </table>  
  
  
                </asp:WizardStep>  
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Student Course Details">  
                     <table style="width: 100%;">  
                    <tr>  
                        <td><strong>Student Course Detail</strong></td>  
                         
                    </tr>  
                    <tr>  
                        <td>Student Course</td>  
                        <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>  
                         
                    </tr>  
                    <tr>  
                        <td>Student Branch</td>  
                        <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>  
                          
                    </tr>  
                </table>  
  
                </asp:WizardStep>  
                 <asp:WizardStep ID="WizardStep3" runat="server" Title="Student Personal Details">  
                <table style="width: 100%;">  
                    <tr>  
                        <td><strong>Student Personal Detail</strong></td>  
                        
                    </tr>  
                    <tr>  
                        <td>Student EmailId</td>  
                        <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>  
                          
                    </tr>  
                    <tr>  
                        <td>Student City</td>  
                        <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>  
                         
                    </tr>  
                    <tr>  
                        <td>Student State</td>  
                        <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>  
                         
                    </tr>  
                </table>  
  
            </asp:WizardStep>  
  
                 <asp:WizardStep ID="WizardStep4" runat="server" Title="Student Summary">  
                       
                     <table class="auto-style1">  
                         <tr>  
                             <td><strong>Student Details</strong></td>  
                               
                             <td> </td>  
                               
                         </tr>  
                         <tr>  
                             <td>  
                                 Student FirstName:</td>  
                             <td>  
                                 <asp:Label ID="Label6" runat="server" Text=""></asp:Label>  
                                 </td>  
                             <td> </td>  
                               
                         </tr>  
                         <tr>  
                             <td>Student LastName:</td>  
                               
                             <td>  
                                 <asp:Label ID="Label7" runat="server" Text=""></asp:Label>  
                             </td>  
                               
                         </tr>  
                           
                         <tr>  
                             <td></td>  
                             <td> </td>  
                         </tr>  
                         <tr>  
                             <td><strong>Student Course Details</strong></td>  
                             <td> </td>  
                         </tr>  
                           
                         <tr>  
                             <td>Student Course:</td>  
                             <td>  
                                 <asp:Label ID="Label8" runat="server" Text=""></asp:Label>  
                             </td>  
                         </tr>  
                          <tr>  
                             <td>Student Branch:</td>  
                             <td>  
                                 <asp:Label ID="Label9" runat="server" Text=""></asp:Label>  
                              </td>  
                         </tr>  
                           
                         <tr>  
                             <td> </td>  
                             <td> </td>  
                         </tr>  
                         <tr>  
                             <td><strong>Student Personal Details</strong></td>  
                             <td> </td>  
                         </tr>  
                         <tr>  
                             <td>Student EmailId:</td>  
                             <td>  
                                 <asp:Label ID="Label10" runat="server" Text=""></asp:Label>  
                             </td>  
                         </tr>  
                         <tr>  
                             <td>Student City:</td>  
                             <td>  
                                 <asp:Label ID="Label11" runat="server" Text=""></asp:Label>  
                             </td>  
                         </tr>  
                         <tr>  
                             <td>Student State:</td>  
                             <td>  
                                 <asp:Label ID="Label12" runat="server" Text=""></asp:Label>  
                             </td>  
                         </tr>  
                           
                     </table>  
                </asp:WizardStep>  
            </WizardSteps>  
        </asp:Wizard>  
    </div> 
        <div class="copMain">
        <div><asp:Label ID="Label13" runat="server" CssClass="cop" Text="Сайт с примерами из конструктора ASP.NET"></asp:Label></div>
        <div><asp:Label ID="Label14" runat="server" CssClass="cop1" Text="Copyright 2020"></asp:Label></div>
            </div>
        </form>
    </div>
    </div>
    </body>
</html>

<%--
    СПОСОБЫ ПРИСВОЕНИЯ ОБРАБОТЧИКА НАЖАТИЯ КНОПКИ.

    1) Задать значение атрибута OnClick в файле разметки. После, создать метод с указанным именем в файле кода.
    2) Перейти в окно дизайнера (кнопка 'Design' в левом нижнем углу текущего представления) и дважды кликнуть по кнопке.
       Нужный код будет автоматически создан в файле разметки и файле кода.
    3) Перейти в окно дизайнера, правой клавишей мыши кликнуть по кнопке и выбрать в контекстном меню пункт 'Properties'.
       В окне свойства перейти на список событий элемента управления (иконка в виде молнии в верхней панели окна 'Properties')
       и дважды кликнуть по нужному событию. Код автоматически будет создан в файле разметки и файле кода.
--%>

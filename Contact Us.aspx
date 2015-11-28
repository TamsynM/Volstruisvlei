<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact Us.aspx.cs" Inherits="Contact_Us" %>

<%@ Register assembly="DayPilot" namespace="DayPilot.Web.Ui" tagprefix="DayPilot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico"/>  <!-- TM - Added this line to include a page icon -->
    <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
    <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script> 
    <script src="jquery-ui.multidatespicker.js"></script> 
    <title>Contact Us</title>

    <!-- Javascript -->
      <script>
          $(function () {
              $('#with-altField').multiDatesPicker({
                  prevText: "Click for previous months",
                  nextText: "Click for next months",
                  showOtherMonths: true,
                  selectOtherMonths: true,
                  changeMonth: true,
                  changeYear: true,
                  dateFormat: "yy-m-d",
                  altField: '#altField'
              });
          });
      </script>

</head>
<body style="margin-left:150px;">
    <form id="contactUs" runat="server" method="post">
        <div id="mainHeading">
                <center><h1>Contact Us</h1></center><br /><br />
        </div>
        
        <div id="navigation">
                <div id="list">
                    <ul>
                        <li><a href="default.aspx">Home</a></li>
                        <li><a href="Gallery.aspx">Gallery</a></li>                       
                    </ul>
                </div>
        </div>
        <div id="contactForm">
             <asp:Panel ID="ContactUsPanelLeft" runat="server" DefaultButton="btnSubmit">
                 


                <div class="box"> 
                <p>Contact Us using the below form</p>
                <p>Name: <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
                ControlToValidate="contactFirstName" ValidationGroup="save" /><br />
                <asp:TextBox ID="contactFirstName" runat="server" Width="250px" /><br />
                
                Surname: <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                ControlToValidate="contactLastName" ValidationGroup="save" /><br />
                <asp:TextBox ID="contactLastName" runat="server" Width="250px" /><br />
                
                Email: <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                ControlToValidate="contactEmail" ValidationGroup="save" /><br />
                <asp:TextBox ID="contactEmail" runat="server" Width="250px" />
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
                SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="contactEmail"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                ValidationGroup="save" /><br />

                 Contact Number: <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                ControlToValidate="contactNumber" ValidationGroup="save" /><br />
                <asp:TextBox ID="contactNumber" runat="server" Width="400px" /><br /> <br />

                Number of People: <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                ControlToValidate="numberPeople" ValidationGroup="save" /><br />
                <asp:TextBox ID="numberPeople" runat="server" Width="400px" /><br /> <br />

                 <!--<div class="box"> Below it the radio buttons with the Options -->

                 <asp:RadioButtonList ID="radioAccomodation" runat="server" OnSelectedIndexChanged="Button1_Click">
                    <asp:ListItem Value="bushlapa">Bush Lapa - Special</asp:ListItem>
                    <asp:ListItem Value="farmhouse">Farm House</asp:ListItem>
                     <asp:ListItem Value="function">Function</asp:ListItem>
                </asp:RadioButtonList> 

                <!--</div> End Of the Radio Buttons and Options -->

                </p>
                  </div>               
                
                 <!--  Added in a text box and image button to click on to view the calendar  -->
                 <p><br />
                     
                    <!--  Insert Calendar  
                    <asp:Calendar ID="Calendar1" runat="server" MultiSelectedDates="true" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="200px" ondayrender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
	                    <SelectedDayStyle BackColor="#4CC552" Font-Bold="True" />
	                    <SelectorStyle BackColor="#FFCC66" />
	                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
	                    <OtherMonthDayStyle ForeColor="#CC9966" />
	                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
	                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
	                    <TitleStyle BackColor="#4CC552" Font-Bold="True" Font-Names="Nyala" Font-Size="15pt" ForeColor="#FFFFCC" />
                    </asp:Calendar>
                     <asp:Button ID="clear" runat="server" Text="Clear" OnClick="clear_Click" /> &nbsp;
                     
                 </p>
                 -->
                 <p>
                     
                 <br />
                     Additional Information:
                     <br />
                     <asp:TextBox ID="contactMessage" runat="server" Rows="10" TextMode="MultiLine" ToolTip="Any additional information please ask here!" Width="400px"></asp:TextBox>
                 </p>
                <br />
                <br />
                <br />
                <br />
                <br />                
                
                Required dates: <div id="with-altField"></div>
                <input id="altField">

                <p>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="save" />
                </p>
            </asp:Panel>
        </div>

              
       <!-- <div id="topIntro">
            <br /> <br />
             <table style="width:100%; font-size:16.0pt;  font-family: Nyala; font-weight: bold; text-align:center; ">
                 <tr>    
                     <td>
                        <u> First night on arrival:</u> <br /><br />
                Potjie Kos, Rooster koek/ fresh baked bread, salad, jam and cheese. <br /><br />
                <u>Camp fire breakfast after the first night sleep over:</u> <br /><br />
               Farm style breakfast on the fire: <br />
                Bacon, Eggs, sausage, mushrooms, tomato, and freshly baked bread and jam.<br /><br />


                <u>Second night dinner:</u><br /><br />
                Braai packs consisting of 2x Lamb chops and wors will be available for sale at the price of the quotation and confirmation of the booking. <br />  <br /> 
                <u>OR YOU MAY CHOOSE TO ORDER</u> <br /><br />
                Whole fish/snoek (any seasonal fish) can be arranged and booked for you to put on the braai - available on order and on the confirmation for the second night. Wood will be supplied.
                Cleaning of the LAPA on departure for Volstuisvlei staff.<br /><br />
                Please note, due to our venue being completely private we are able to be flexible with bookings or arrangements to suit each situation; this can be accommodated and arranged on the initial confirmation of the booking.<br /><br />
                         <u>Booking Confrimation:</u> <br />
                Please send you booking and related confirmation thereof to: info@volstruisvlei.co.za<br />

                     </td>
                 </tr>
                 </table>
         </div>-->
       

        <br />
        <div id="copyright;">&copy Brandon Gregory, Seth Luther and <a href="https://about.me/TamsynMurphy">Tamsyn Murphy</a> </div>
    


    </form>
            
    </body>
</html>
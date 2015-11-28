<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bushlapaGallery.aspx.cs" Inherits="bushlapaGallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Bush Lapa Gallery</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css"/>  
    <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico"> <!-- TM - Added this line to include a page icon -->    
</head>
<body>
    <form id="bushlapa" runat="server">
    <div>
            <div id="mainHeading">
               <center><h1><b>Bush Lapa Gallery</b></h1></center><br /><br />
        </div>
        <div id="navigation">
            <div id="list">
                <ul>
                    <li><a href="default.aspx">Home</a></li>
                    <!-- <li><a href="Booking.aspx">Booking</a></li>-->
                    <li><a href="Contact Us.aspx">Contact Us</a></li>
                    <li><a href="Gallery.aspx">Gallery</a></li>
                </ul>
            </div>
        </div>
        <!--<div id="topIntro">added the intro tag so that the images take the spacing same as home page-->
        <table style="width:auto; margin-top: 50px; margin-left:90px;"><!--changing height from 257px; width 100%;-->
            <tr>
                <td class="style4"><div id="boxedItem">
                    <asp:Image ID="Image1" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/bushlapa/004.jpg" Width="400px" />
                </div></td>
                <td class="style2"><div id="boxedItem">
                    <asp:Image ID="Image11" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/bushlapa/010.jpg" Width="400px" />
                </div></td>
                <td><div id="boxedItem">
                    <asp:Image ID="Image2" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/bushlapa/012.jpg" Width="400px" />
             </div></td>
            </tr>
            <tr>
                <td class="style4"><div id="boxedItem">
                    <asp:Image ID="Image3" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/bushlapa/014.jpg" Width="400px" />
                </div></td>
                <td class="style2"><div id="boxedItem">
                    <asp:Image ID="Image8" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/bushlapa/015.jpg" Width="400px" />
                </div></td>
                <td><div id="boxedItem">
                    <asp:Image ID="Image7" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/bushlapa/016.jpg" Width="400px" />
                </div></td>
            </tr>
            <tr>
                <td class="style4"><div id="boxedItem">
                    <asp:Image ID="Image4" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/bushlapa/017.JPG" Width="400px" />
               </div></td>
                <td class="style2"><div id="boxedItem">
                    <asp:Image ID="Image9" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/bushlapa/009.jpg" Width="400px" />
               </div></td>
                <td><div id="boxedItem">
                    <asp:Image ID="Image10" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/bushlapa/018.JPG" Width="400px" />
                </div></td>
            </tr>
            <tr>

                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    </td>
                <td class="style1">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

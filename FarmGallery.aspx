<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FarmGallery.aspx.cs" Inherits="FarmGallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Farm Gallery</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css"/>  
    <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico"/> <!-- TM - Added this line to include a page icon -->  
</head>
<body>
    <form id="form1" runat="server">
        <div id="mainHeading">
            <center><h1><b>Farm House Gallery</b></h1></center><br /><br />
        </div>
        
        <div id="navigation">
            <div id="list">
                <ul>
                    <li><a href="default.aspx">Home</a></li>
                    <li><a href="Contact Us.aspx">Contact Us</a></li>
                    <li><a href="Gallery.aspx">Gallery</a></li>
                </ul>
            </div>
        </div>

        <table style="width: 80%; margin-top:40px; margin-left:100px;"><!--changing height from 257px; width 100%;-->
            <tr>
                
                <td class="style2">
                    <div id="boxedItem">
                    <asp:Image ID="bedroom1" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/farmhousegallery/bedroom1.jpg" Width="510px" />
                    </div>
                </td>
                <td>
                    <div id="boxedItem">
                    <asp:Image ID="bedroom2" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/farmhousegallery/bedroom2.jpg" Width="510px" />
                    </div>
                </td>
            </tr>

            <tr>
                <td class="style2">
                    <div id="boxedItem">
                    <asp:Image ID="kitchen" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/farmhousegallery/kitchen.jpg" Width="510px" />
                    </div>
                </td>
                <td>
                    <div id="boxedItem">
                    <asp:Image ID="kitchen_oven" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/farmhousegallery/kitchen_oven.jpg" Width="510px" />
                    </div>
                </td>
            </tr>

            <tr>
                <td class="style2">
                    <div id="boxedItem">
                    <asp:Image ID="loungefromkitchen" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/farmhousegallery/loungefromkitchen.jpg" Width="510px" />
                    </div>
                </td>
                <td>
                    <div id="boxedItem">
                    <asp:Image ID="Image1" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/farmhousegallery/lounge.jpg" Width="510px" />
                    </div>
                </td>
            </tr>
            
            <tr>
                <td class="style4">
                    <div id="boxedItem">
                    <asp:Image ID="bathroom" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/farmhousegallery/bathroom.jpg" Width="510px" />
                    </div>
                </td>
                <td>
                    <div id="boxedItem">
                    <asp:Image ID="shower" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/farmhousegallery/shower.jpg" Width="250px" />
                    </div>
                </td>
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
    </form>
</body>
</html>

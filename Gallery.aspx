<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Album" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Gallery</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css"/>  
    <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico"/> <!-- TM - Added this line to include a page icon -->    
</head>
<body>
    <!-- <body style="background-image:url(Images/background/068.JPG); opacity:0.4;"> -->
    <form id="galleryPage" runat="server">
        <div>
            <div id="mainHeading">
               <center><h1><b>Gallery</b></h1></center><br /><br />
        </div>
        <div id="navigation">
            <div id="list">
                <ul>
                    <li><a href="default.aspx">Home</a></li>
                    <li><a href="Contact Us.aspx">Contact Us</a></li>
                </ul>
            </div>
        </div>
            <table style="width:80%; margin-top: 40px; margin-left:150px;"><!--changing height from 257px; width 100%;-->
                <tr>
                <td><div id="boxedItem">Bush Lapa
                    <a href="bushlapaGallery.aspx"><asp:Image ID="Image1" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/" Width="450px" />
                </a></div></td>
                <td><div id="boxedItem">Farm House
                   <a href="FarmGallery.aspx"> <asp:Image ID="Image11" runat="server" Height="400px" 
                        ImageUrl="~/Images/gallery/" Width="450px" />
                </a></div></td>
            </tr>
           </table>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestPage Javascript.aspx.cs" Inherits="Album" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Gallery</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css"/>  
    <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico"/> <!-- TM - Added this line to include a page icon -->   
    <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script> 
    <script src="jquery-ui.multidatespicker.js"></script> 
    
    
    <!-- Javascript -->
      <script>
          $(function () {
              $("#datepicker-8").datepicker({
                  prevText: "click for previous months",
                  nextText: "click for next months",
                  showOtherMonths: true,
                  selectOtherMonths: false,
                  changeMonth:true,
                  changeYear:true,

              });

              $("#simpliest-usage").multiDatesPicker({
                  dateFormat: "yyyy-mm-dd",
              });


              $('#with-altField').multiDatesPicker({
                  altField: '#altField'
              });

          });
      </script>
</head>
<body>
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
            
        <!-- HTML --> 
            <br />
            <br />
            <br />
            <br />
 

            Enter dates: <div id="with-altField"></div>
            <input id="altField">






    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Akira.aspx.cs" Inherits="Akira" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MuSic W@la.com</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="templatemo_container">

	<div id="templatemo_header">
    	<div id="templatemo_title">
            <div id="templatemo_sitetitle">MuSic <span>W@la</span></div>
        </div>
        
        <div id="templatemo_login">
        	<form method="get" action="#">
                <label>Search:</label><input class="inputfield" name="keyword" type="text" id="keyword"/>
                <input class="button" type="submit" name="Search" value="Search" />
            </form>
        </div>
    </div>

	<div id="templatemo_banner">
       	<div id="templatemo_banner_text">
            <div id="banner_title">Welcome To MuSic W@la</div>
            <p>
                MUSIC WALA website gives them free access to the latest and unlimited music.They can listen every type of music which they want to hear, from classical music to trending trans music.They all need to do is to register it on the website and have to create an account and that’s all then they are free to enjoy the music according to their mood.

            </p>
            <div class="more_button"><a href="#">Read More</a></div>
    	</div>
	</div>
    
    <div id="templatemo_menu">
     	<ul>
			<li><a href="index.html" class="current">Main Page</a></li>
            <li><a href="Audio.aspx">Audios</a></li>
            <li><a href="Albums.aspx">Albums</a></li>  
            <li><a href="Registration.aspx">Registration</a></li> 
            <li><a href="LogIn.aspx">LogIn</a></li>                      
                      
        </ul>  
    </div>
    
    <div id="templatemo_content">
    
    	<div id="templatemo_left_column">
            <h2></h2>
            <div class="left_col_box">
                
			</div>
            
            <h2></h2>
            <div class="left_col_box">
                <div class="blog_box">
                    <h3><a href="#">Curabitur quis velit quis tortor</a></h3>
                    Suspendisse vitae neque eget ante tristique vestibulum. Pellentesque vitae magna.<br />
                    Posted by <a href="#"><span>Admin</span></a> in <a href="#"><span>Videos</span></a><br />
                    14 December 2020
				</div>
                <div class="blog_box">
                    <h3><a href="#">Duis vitae velit sed dui</a></h3>
                    Pellentesque vitae magna. Suspendisse vitae neque eget ante tristique vestibulum.<br />
                    Posted by <a href="#"><span>Admin</span></a> in <a href="#"><span>Audios</span></a><br />
                    20 December 2020
				</div>
                <div class="blog_box">
                    <h3><a href="#">Donec mollis aliquet ligula</a></h3>
                    Suspendisse vitae neque eget ante tristique vestibulum.<br />
                    Posted by <a href="#"><span>Admin</span></a> in <a href="#"><span>Samples</span></a><br />
                    22 December 2020
				</div> 
                <div class="blog_box">
                    <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
    <a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>
				</div> 
                <div class="more_button"><a href="#">View All</a></div>                                              

			</div>
		</div>
        
        <div id="templatemo_right_column">
        	<div id="new_released_section">
                <strong style="font-size:40px;font-family:'Comic Sans MS';text-align:center;">Akira</Strong>
				<p style="text-align:left">
                     <img src="images/akira.jpg" alt="image" style="width:140px; height:140px" />
				</p>
                <p>
                  <!--Upload button for website Start -->
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
            <!--Upload button for website End -->

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" RowStyle-BackColor="#A1DCF2" Font-Names = "Arial" Font-Size = "10pt"
    HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="FileName" />
            <asp:TemplateField>
                <ItemTemplate>
                    <object type="application/x-shockwave-flash" data='dewplayer-vol.swf?mp3=FileCS.ashx?Id=<%# Eval("Id") %>'
                        width="240" height="20" id="dewplayer">
                        <param name="wmode" value="transparent" />
                        <param name="movie" value='dewplayer-vol.swf?mp3=FileCS.ashx?Id=<%# Eval("Id") %>'/>
                    </object>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="Id" Text = "Download" DataNavigateUrlFormatString = "~/FileCS.ashx?Id={0}" HeaderText="Download" />
        </Columns>
    </asp:GridView>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
                    </p>
            </div>
            
		</div>
    </div>
    <!--  Designed by w w w . t e m p l a t e m o . c o m  --> 
    
	<div id="templatemo_footer">
        <a href="#">Home</a> | <a href="#">Audios</a> | <a href="#">Albums</a> <br />
        Copyright © <a href="#"><strong>MuSic W@la</strong></a> 
        <!-- Credit: www.templatemo.com -->
	</div>
</div>
<!-- templatemo 047 music -->
<!-- 
Music Template 
http://www.templatemo.com/preview/templatemo_047_music 
-->  
    </form>
</body>
</html>

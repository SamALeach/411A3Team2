<%@ page language="java" pageEncoding="gb2312" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
    <title>塞北村镇旅游网站</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <LINK href="qtimages/style.css" type=text/css rel=stylesheet>
    <style type="text/css">
        <!--
        .STYLE1 {
            color: #006666
        }

        .STYLE2 {
            color: #006666;
            font-weight: bold;
        }

        .STYLE5 {
            color: #FFFFFF;
            font-weight: bold;
        }

        .STYLE6 {
            color: #FFCC33
        }

        -->
    </style>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<%@ include file="qttop.jsp" %>

<table width="100%" height="135" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
    <tr>
        <td width="978" height="109" align="center" valign="middle">
            <script type="text/jscript">

var widths=1420; //设置幻灯片宽度

var heights=520; //设置幻灯片高度

var counts=5; //设置幻灯片数量

img1=new Image ();img1.src='Image/1.jpg';

img2=new Image ();img2.src='Image/2.jpg';

img3=new Image ();img3.src='Image/3.jpg';

img4=new Image ();img4.src='Image/4.jpg';

img5=new Image ();img5.src='Image/5.jpg';



//设置图片的URL
url1=new Image ();url1.src='Image/1.jpg';

url2=new Image ();url2.src='Image/2.jpg';

url3=new Image ();url3.src='Image/3.jpg';

url4=new Image ();url4.src='Image/4.jpg';

url5=new Image ();url5.src='Image/5.jpg';




var nn=1;

var key=0;

function change_img()

{if(key==0){key=1;}

else if(document.all)

{document.getElementById("pic").filters[0].Apply();document.getElementById("pic").filters[0].Play(duration=2);}

eval('document.getElementById("pic").src=img'+nn+'.src');

eval('document.getElementById("url").href=url'+nn+'.src');

for (var i=1;i<=counts;i++){document.getElementById("xxjdjj"+i).className='axx';}

document.getElementById("xxjdjj"+nn).className='bxx';

nn++;if(nn>counts){nn=1;}

//设置图片切换间隔时间
tt=setTimeout('change_img()',3000);}

function changeimg(n){nn=n;window.clearInterval(tt);change_img();}

document.write('<style>');

document.write('.axx{padding:1px 10px;border-left:#cccccc 1px solid;}');

document.write('a.axx:link,a.axx:visited{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#666;}');

document.write('a.axx:active,a.axx:hover{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#999;}');

document.write('.bxx{padding:1px 7px;border-left:#cccccc 1px solid;}');

document.write('a.bxx:link,a.bxx:visited{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#D34600;}');

document.write('a.bxx:active,a.bxx:hover{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#D34600;}');

document.write('</style>');

document.write('<div style="width:'+widths+'px;height:'+heights+'px;overflow:hidden;text-overflow:clip;">');

document.write('<div><a id="url"><img id="pic" style="border:0px;filter:progid:dximagetransform.microsoft.wipe(gradientsize=1.0,wipestyle=4, motion=forward)" width='+widths+' height='+heights+' /></a></div>');

document.write('<div style="filter:alpha(style=1,opacity=10,finishOpacity=80);background: #888888;width:100%-2px;text-align:right;top:-12px;position:relative;margin:1px;height:12px;padding:0px;margin:0px;border:0px;">');

for(var i=1;i<counts+1;i++){document.write('<a href="javascript:changeimg('+i+');" id="xxjdjj'+i+'" class="axx" target="_self">'+i+'</a>');}

document.write('</div></div>');

change_img();


            </script>
        </td>
    </tr>
    <tr>
        <td width="978" height="13">&nbsp;</td>
    </tr>
</table>
</body>

</html>
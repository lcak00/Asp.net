<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JwPlayer.aspx.cs" Inherits="JwPlayer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <!--
        2013-5-13
        JwPlayer官网 Javascript API说明:http://www.longtailvideo.com/support/jw-player/28842/working-with-playlists
        中文参考网址:http://hi.baidu.com/pengkunfan/item/a5f07e274329df58c28d59eb
    -->
    <script src="jwplayer/jwplayer.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="myElement">载入播放器... </div>
	<script type="text/javascript">
	    jwplayer("myElement").setup({
            file: "movie/m.flv",            //视频文件地址
            height: 360,                    //播放器的高度
            image: "image/a.jpg",           //当视频还没有播放时,播放器播放的图片
            width: 640                      //播放器宽度
        });
	</script>
	<ul>
        <li onclick='jwplayer().play()'>Start playback(开始播放)</li>
        <li onclick='alert(jwplayer().getVolume())'>Get audio volume(获得音量)</li>
    </ul>
    
   <h2>自动播放</h2> 
   <div id="div2">载入播放器... </div>
   <script type="text/javascript">
	    jwplayer("div2").setup({
            file: "movie/m.flv",           
            height: 360,                    
            image: "image/a.jpg",          
            width: 640,                    
            autoStart:true    //页面一加载自动播放              
        });
	</script>
    <h2>视频列表循环播放</h2> 
   <div id="div3">载入播放器... </div>
   <script type="text/javascript">
       jwplayer("div3").setup({
            playlist: [{
                image: "image/a.jpg",
                sources: [{ 
                  file: "movie/271310319168.flv"
                }]
            },{
                image: "image/b.jpg",
                sources: [{ 
                  file: "movie/m.flv"
                }]
            }],
            height: 360,  
            width:640,
            autoStart:true,
            repeat:true         //设置为true会循环播放
        });
    </script>
    </form>
</body>
</html>

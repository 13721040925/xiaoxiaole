<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html class="SG-game-show" style="background:none;background-color:transparent; width:100%;" manifest="manifest.mf">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

<script type="text/javascript">
var SpilGamesBrandTimer = +new Date(),
_SPTimer={w:{},start:function(a){this.w[(a||"_")]=+new Date()},end:function(a){window._gaq=window._gaq||[],a=a||"_";if(this.w[a]){ 
}}};
_SPTimer.start('pageLoad');
</script>
	
<link rel="icon" href="img/logo1.jpg" type="image/x-icon"> 
<link rel="shortcut icon" href="img/logo1.jpg" type="image/x-icon">
<title>冰山消消乐</title>		
<style type="text/css"> 
	* { 
		padding: 0px; 
		margin: 0px; 
		cursor: default; 
	}
	 body { 
	 	font: 12px/20px Palatino;
	 	background:url("img/冬1.jpg");
		background-size:cover;
		overflow:hidden; 
	 }
 </style>
 <script type="text/javascript">
 	var id;
 	var num=0;
 	
 	window.onload=function () {
        id=setInterval("changeSrc()",5000);
    }
 	function changeSrc() {
 		var pic=document.getElementById("bd");
        num++;
        if(num==17){
            num=1;
        }
        pic.style.backgroundImage="url(img/"+num+".jpg)";
    }

 </script>
</head>
<body id="bd">


<div id="spilgames-root"></div>
<script type="text/javascript" src="js/game.min.js"></script>

<script>
	function dp_Ranking() {
		document.location.href = "https://www.magicpeng.com/";
	}
</script>

<div id="share" style="display: none">
		<img width="100%" src="bitmap/share.png" style="position: fixed; z-index: 9999; top: 0; left: 0; display: " ontouchstart="document.getElementById(&#39;share&#39;).style.display=&#39;none&#39;;">
	</div>


<script>
	var mebtnopenurl = "https://www.magicpeng.com/";
	var tit = "";
	var DFW = {
		appId: "",
		TLImg: "kaixinlian.jpg",
		url: "https://www.magicpeng.com/",
		title: "冰山消消乐",
		desc: "我消，我消，我消...！"
	};
	var onBridgeReady = function () {
		WeixinJSBridge.on('menu:share:appmessage', function (argv) {
			WeixinJSBridge.invoke('sendAppMessage', {
				"appid": DFW.appId,
				"img_url": DFW.TLImg,
				"img_width": "120",
				"img_height": "120",
				"link": DFW.url,
				"title": DFW.title + tit,
				"desc": DFW.desc
			}
			);
		});
		WeixinJSBridge.on('menu:share:timeline', function (argv) {
			WeixinJSBridge.invoke('shareTimeline', {
				"appid": DFW.appId,
				"img_url": DFW.TLImg,
				"img_width": "120",
				"img_height": "120",
				"link": DFW.url,
				"title": DFW.title + tit,
				"desc": DFW.desc
			}
			);
		});
	};
	if (document.addEventListener) { 
		document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
	} else if (document.attachEvent) {
		document.attachEvent('WeixinJSBridgeReady', onBridgeReady);
		document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
	}
	function do_share(score) {
		document.title = "我获得了" + score + "分，一起来消星星吧！";

		document.getElementById("share").style.display = "";
		window.DFW.title = document.title;
	}
	function dp_submitScore(level,score) {
		if (score > 5000) {
			if (confirm("你获得了" + score + " 要不要通知下小伙伴们呢？")) {
				do_share(score);
			}
		}
	}
</script>

</body>
</html>


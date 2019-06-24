<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>读卡</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.2.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.qrcode.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=8"> <!--以IE8模式渲染--> 
<meta http-equiv="X-UA-Compatible" content="IE=7"> <!--以IE7模式渲染-->
	<style>
    body {
        width: 100%;
        height: 100%;
        overflow: hidden;
        background: url(${pageContext.request.contextPath}/images/print/printmain.jpg) no-repeat;
    }
    </style>
</head>

<body scroll=no>
	<!-- 显示返回主页面倒计时时间 -->
 	<div id="time" style="position:absolute;top:10px;right:30px;font-size:40px;color: #FF0000;">
   	</div>
   	
   <!-- 	<div id="title"
			style="text-align:center;position:absolute;top:230px;left:400px;">
			<span  style="font-size:40px;color:#EE7700;"><strong>请扫描电子健康卡二维码</strong></span>
	</div> -->
	<div id="tip_div"
		style="z-index:1000;display:none;width:659px;height:243px;background-image:url('${pageContext.request.contextPath}/images/dck2.png');position:absolute;left:312px;top:365px;">
		<div id="tip_divInfo"
			style="text-align:center;position:relative;top:82px">
			<span id="error" style="font-size:30px;color:#EE7700;"><strong></strong></span>
		</div>
		<img id="tip_s"
			src="${pageContext.request.contextPath}/images/qdmix.png" width="90"
			height="43" style="position:relative;top:160px;left:300px" />
	</div>
	<div id="pay" style="display:block;margin-top:320px;margin-left:300px; ">
			<img src="${pageContext.request.contextPath}/images/print/qstm.png"  height="343" width="621"/> 
	</div>	
	
	<div style="text-align:center;position:absolute;top:670px;left:330px;">
			<span  style="font-size:30px;color:#EE7700;"><strong>条码:</strong></span>
			<input id="ewm" style="width:350px;height:30px;font-size:28px;vertical-align:0px;line-height:28px;" >
	</div>
	
	<div id="qdb" style="position:absolute;top:655px;left:800px; ">
			<img src="${pageContext.request.contextPath}/images/queding.png"  height="67" width="161"/> 
	</div>	
	
	<div id="main" style="position: absolute;top:750px;left:550px;">
			<img src="${pageContext.request.contextPath}/images/fanhui.png"  height="67" width="161"/> 
	</div>
</body>

<script language="javascript">
	//初始化倒计时时间：60秒
	var time = 60;
	//自动倒计时，计时时间为0时，
	function returnTime(){
		myVar=setInterval(
			function(){
				time--;
				$("#time").text(time);
				if(time==0){
					//跳转页面
					window.location.href = "${pageContext.request.contextPath}/jsp/printOf/printMain.jsp";
				}
			},1000);
	}
	
	//用户点击或按键等操作时，倒计时重新计时
	document.onkeydown = timeAgin;
	document.onclick = timeAgin;
	function timeAgin(){
		time = 60;
	}
	returnTime();
	$("#tip_s").on("click", function() {
		window.location.href = "${pageContext.request.contextPath}/jsp/printOf/printMain.jsp";
	});
  	var cardNO;//卡号
	var qrcode;//二维码串
	$(document).keydown(function(event){
		if(event.keyCode==13){
			qrcode=$("#ewm").val();
			qrcode = qrcode.replace(/\s+/g,"");
			if(qrcode==""){
	  			$("#tip_div").show();
				$("#error").text("条码不能为空");
				$("#ewm").focus();
	  		}else{
	  			window.parent.brid00=qrcode;
				window.location.href="${pageContext.request.contextPath}/jsp/printOf/infohomeLis.jsp";
	  		}
		}
	})
	function getQrcode(){
		$("#ewm").focus();
	}
  	getQrcode();
  	$("#main").bind("click dbclick", function() {
  		window.location.href = "${pageContext.request.contextPath}/jsp/printOf/printMain.jsp";
	});
  	$("#qdb").bind("click dbclick", function() {
  		qrcode=$("#ewm").val();
  		qrcode = qrcode.replace(/\s+/g,"");
  		if(qrcode==""){
  			$("#tip_div").show();
			$("#error").text("条码不能为空");
			$("#ewm").focus();
  		}else{
  			window.parent.brid00=qrcode;
			window.location.href="${pageContext.request.contextPath}/jsp/printOf/infohomeLis.jsp";
  		}
		
	});
  	
</script>
</html>
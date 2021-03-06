<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>充值方式</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.2.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=8"> <!--以IE8模式渲染--> 
<meta http-equiv="X-UA-Compatible" content="IE=7"> <!--以IE7模式渲染-->
	<style>
    body {
        width: 100%;
        height: 100%;
        overflow: hidden;
    }
    </style>
</head>
<body scroll=no>
		<!-- 显示返回主页面倒计时时间 -->
 	<div id="time" style="position:absolute;top:1130px;right:80px;font-size:60px;color: #FF0000;">
 	</div>
 	<div id="tip_div"
		style="z-index:1000;display:none;width:659px;height:243px;background-image:url('${pageContext.request.contextPath}/images/dck2.png');position:absolute;left:212px;top:1365px;">
		<div id="tip_divInfo"
			style="text-align:center;position:relative;top:82px">
			<span id="error" style="font-size:30px;color:#EE7700;"><strong></strong></span>
		</div>
		<img id="tip_s"
			src="${pageContext.request.contextPath}/images/qdmix.png" width="90"
			height="43" style="position:relative;top:160px;left:300px" />
	</div>

   	
		<div style="position: absolute;left:12px;">
			<%-- <div id="bankpay" style="position: absolute;top:1370px;left:90px;">
				 <img src="${pageContext.request.contextPath}/images/bankpay.png" res_img="${pageContext.request.contextPath}/" height="" width=""/>
			</div> --%>
			<%-- <div id="cashpay" style="position: absolute;top:1370px;left:270px;">
				<img src="${pageContext.request.contextPath}/images/cashpay.png" res_img="${pageContext.request.contextPath}/" height="" width=""/> 
			</div> --%>
			<div id="wxpay" style="position: absolute;top:1400px;left:250px;">
				<img src="${pageContext.request.contextPath}/images/wxpay.png" res_img="${pageContext.request.contextPath}/" height="" width=""/> 
			</div>
			<div id="zfbpay" style="position: absolute;top:1400px;left:570px;">
				<img src="${pageContext.request.contextPath}/images/zfbpay.png" res_img="${pageContext.request.contextPath}/" height="" width=""/> 
			</div>
		</div>
		<div id="main" style="position: absolute;top:1745px;left:395px;">
			<img src="${pageContext.request.contextPath}/images/main.png" res_img="${pageContext.request.contextPath}/" height="" width=""/> 
		</div>
		<div id="next" style="position: absolute;top:1728px;left:545px;">
			<img src="${pageContext.request.contextPath}/images/next.png" res_img="${pageContext.request.contextPath}/" height="" width=""/> 
		</div>		
</body>
<script language="javascript">
	//初始化倒计时时间：60秒
	var time = window.parent.reTime;
	//自动倒计时，计时时间为0时，
	function returnTime(){
		myVar=setInterval(
			function(){
				time--;
				$("#time").text(time);
				if(time==0){
					//跳转页面
					window.location.href="${pageContext.request.contextPath}/jsp/main/main.jsp";
				}
			},1000);
	}
	
	//用户点击或按键等操作时，倒计时重新计时
	document.onkeydown = timeAgin;
	document.onclick = timeAgin;
	function timeAgin(){
		time = window.parent.reTime;
	}
	returnTime();
	$("#tip_s").on("click", function() {
		$("#tip_div").hide();
	});
  	$("#bankpay").bind("click dbclick", function() {
  		$("#tip_div").show();
		$("#error").text("暂未开通，敬请期待");
		//window.location.href="${pageContext.request.contextPath}/jsp/pay/bankpay.jsp";
	});
	$("#cashpay").bind("click dbclick", function() {
		$("#tip_div").show();
		$("#error").text("暂未开通，敬请期待");
		//window.location.href="${pageContext.request.contextPath}/jsp/pay/cashpay.jsp";
	});
	$("#wxpay").bind("click dbclick", function() {
		window.location.href="${pageContext.request.contextPath}/jsp/pay/wxpay.jsp";
	});
	$("#zfbpay").bind("click dbclick", function() {
		window.location.href="${pageContext.request.contextPath}/jsp/pay/zfbpay.jsp";
	});
	$("#main").bind("click dbclick", function() {
		window.location.href="${pageContext.request.contextPath}/jsp/main/main.jsp";
	});
	/* $("#next").bind("click dbclick", function() {
		window.location.href="main.jsp";
	}); */
</script>
</html>

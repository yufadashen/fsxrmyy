﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
 <head>
 	<OBJECT name="xn_pos" ID="pos" WIDTH="640" HEIGHT="480" CLASSID="CLSID:16F4DBF0-6FC9-424A-BB65-8DA8EF3AF531" codebase="ReadM1.ocx"></OBJECT>
 	<!-- 读卡器，密码键盘，身份证，识币器ocx -->
 	<%--<object width="0" height="0" name="plugin" classid="clsid:4C5F4B81-B044-4C45-AC9A-26864D324EBA">
	</object> --%>
	<%--<!--  M1读卡器ocx,创自310 -->
	<object id="AVFOCX" classid="clsid:A5D2E211-A165-4316-8373-C02F199C55D8" width="0" height="0">
               <param name="s1" value="" />
    </object>--%>
    <!--  K80打印机ocx -->
    <object id="AVFOCX2" classid="clsid:01678147-0761-4E43-AA5C-C96BAEF52461" width="0" height="0">
               <param name="s1" value="" />
    </object>
     <object id="AVFOCX9" classid="clsid:A7C153B2-3299-4474-A6A0-6276739BDAC3" width="0" height="0">
         <param name="s1" value="" />
     </object>
     <%--感应读卡器--%>
     <object id="AVFOCX7" classid="clsid:28DF5A67-DFD2-4309-97E9-0601C4C54411" width="0" height="0">
         <param name="s1" value="" />
     </object>
          <%--医保--%>
     <!-- <object id="AVFOCX8" classid="clsid:2494F9C7-3CB0-4C88-BF7D-E0BCD628EA7A" width="0" height="0">
         <param name="s1" value="" />
     </object> -->
     <object id="AVFOCX8" classid="clsid:638722F5-6033-43BE-9BD7-BEF665C39E94" width="0" height="0">
               <param name="s1" value="" />
      </object>
    <!--  日志ocx -->
   <%-- <object id="AVFOCX3" classid="clsid:83B1BDC2-E546-4910-9E05-8B352F3FD5BA" width="0" height="0">
               <param name="s1" value="" />
    </object>--%>
    <!--  定时关机ocx -->
    <object id="AVFOCX4" classid="clsid:17E4902E-876F-439A-92AC-717AFAF51673" width="0" height="0">
               <param name="s1" value="" />
     </object>
     <object id="AVFOCX6" classid="clsid:7FAD456B-5D32-4AF4-B588-29E78440D647" width="0" height="0">
         <param name="s1" value="" />
     </object>
     <!--  发卡ocx -->
      <object id="CardSender" classid="clsid:38B053C4-1B81-4626-AC0E-1D47DAA7087B" width="0" height="0">
               <param name="s1" value="" />
       </object>
     <%-- 老弟牌打印机--%>
     <object id="xiongdi" hidden="hidden" width="" height="" classid="clsid:AF1466DF-1659-4DBB-805D-4FD3AE348E73">
     </object>
     <%--Ip address ocx--%>
     <object  hidden="hidden" id="IPHlpOcx" width="" height="" classid="clsid:CFF0A334-C8A5-4C9E-A705-36E2B0651461">
     </object>
     <title>河北北方学院附属第一医院—首页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.2.js"></script>
   	<script type="text/javascript" src="${pageContext.request.contextPath}/DriverJS/json2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/DriverJS/PinPad.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/DriverJS/CardPayment.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/DriverJS/operate_device.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/DriverJS/CashPayment.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/DriverJS/UserIDCard.js"></script>

   <style type="text/css">
	#apDiv2 {	position:absolute;	left:0px;	top:0px;	width:1280px;	height:1024px;	z-index:10;	margin: 0 0 0 0px;}
    body {
        width: 1280px;
        height: 1024px;
        overflow: hidden;
       /*  background: url(${pageContext.request.contextPath}/images/payway.jpg) no-repeat;  */
    }
    </style>
   </head>
 <body scroll="no">
	<div id='main_box'>
		<div id ="apDiv2">
            <%--将跳转到带发卡图标的main 页面--%>
			<iframe  id="pa" name="page1" src="${pageContext.request.contextPath}/jsp/main/mainTemp.jsp" width="1280" height="1024" align="center" scrolling="no" frameborder="0" allowTransparency="false" ></iframe>
		</div>
	</div>
 </body>
 <script type="text/javascript">
 //var serverUrl = "http://192.168.101.152:7001/zjkfsyy/controlAction.do";//正式地址
 var serverUrl = "http://192.168.5.137:7001/zjkfsyy/controlAction.do";//测试地址
 var cardNo;//卡号
 var cardtype;//卡类型  01 身份证   02：就诊卡 03:医保卡
 //*******查询患者信息返回参数开始
 var lxdh00;//联系电话
 var xming0;//患者名称
 var xbie00;//患者性别
 var csrq00;//出生日期
 var brnl00;//病人年龄
 var brid00;//病人ID
 var yjjxh0;//预交金序号（结算金额使用）
 var yjjye0;//预交金余额（结算金额使用）
 var sfzhao;//身份证号
 var zdbh00;//终端编号
 //*******查询患者信息返回参数结束
 
 //***********数据
 var money=0;//支付金额
 var data;
 var openCode; //打开端口返回状态。大于0为正常。
 var reTime=60;
 var pat_no; //
 var jstype=1; //1是直接结算   2是结算挂号检查费  3预约取号结算
 var cztype=1; //正常充值  2.结算时金额不足充值   3.挂号时金额不足充值
 var ttype;//操作类型
 var czsucc=0;//充值成功   1为成功  0为失败
 var sffs; //收费方式，挂号，预约，结算时候用到   13：支付宝  17：微信
 var ptqqls; //平台请求流水号
 var dateTimeNow; //今天现在的时间
 var dateTimeTonight;//今天晚上12点的时间
 var dateTimeAfterSeven;//明天晚上的时7天后的时间，截止到23:59:59
 var dateTimeTomorrow; //明天的现在的时间
 var ybsflx;//医保身份类别

 //硬件状态开始*************************
 //var CardReader = new CardPayment(plugin, "读卡器");
 //var Pad = new PinPad(plugin, "密码键盘");
 //var IDReader = new UserIDCard(plugin, "身份证读卡器");
 //var IdCard = new UserIDCard(plugin, "身份证读卡器");
 //var CashBV = new CashPayment(plugin, "识币器");
// var Reader = document.getElementById("AVFOCX");
 var KPrinter = document.getElementById("AVFOCX2");
// var Logger = document.getElementById("AVFOCX3");
 var shutdown=document.getElementById("AVFOCX4");
var IdCard=document.getElementById("AVFOCX6");
var cardReader = document.getElementById("AVFOCX7");
 var yiBao = document.getElementById("AVFOCX8");
 var cardPrinter = document.getElementById("CardSender");
 var xdResult;
 //var faka = document.getElementById("AVFOCX5");
 //实例化兄弟打印机
 var xdPrinter = document.getElementById("xiongdi");
 //调用windows exec list
 var ListEXE = document.getElementById("AVFOCX9");
 var IPHlpOcx = document.getElementById("IPHlpOcx");

 function openDevices(){
	 yiBao.INIT();
	 //CardReader.OpenDevice(1);
	 //var aa= Reader.OpenCardReaderX(1);
	 var bb = KPrinter.OpenAndSetCOMX("COM1",115200);
   	  var aa = cardReader.OpenCardReaderX(1);
	var cc = cardPrinter.OpenPort(4,115200,1);
     xdResult = xdPrinter.getPrinterStatus();
	 //var cc= IDReader.OpenDevice(1001);
	 //var dd= faka.OpenCommX(4,9600,0,2);
	// Pad.OpenDevice(5);
	 //Pad.SetWorkMode(0);
     //IDReader.OpenDevice(3);
	 //CashBV.OpenDevice(2);
 } 
 //硬件状态结束*************************

 
 openDevices();


 </script>
</html>
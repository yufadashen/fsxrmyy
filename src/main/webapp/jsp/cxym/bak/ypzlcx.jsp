<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<object width="0" height="0" name="plugin"
	classid="clsid:4C5F4B81-B044-4C45-AC9A-26864D324EBA"></object>
<object width="0" height="0" id="AVFOCX"
	classid="clsid:83B1BDC2-E546-4910-9E05-8B352F3FD5BA"> </object>
<object width="0" height="0" id="printer"
	classid="clsid:01678147-0761-4E43-AA5C-C96BAEF52461"> </object>
<title>药品目录列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath}/js/layui.js"
	charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/easing.js"></script>
<script src="${pageContext.request.contextPath}/js/stepBar.js"></script>
<script src="${pageContext.request.contextPath}/js/jqsession.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layui.css" media="all">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/control.css" media="all">
<script src="../../js/jquery-1.11.0.min.js"></script>
<script src="../../js/softkeys-0.0.1.js"></script>
<link rel="stylesheet" type="text/css" href="../../css/softkeys-0.0.1.css">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<!--以IE8模式渲染-->
<meta http-equiv="X-UA-Compatible" content="IE=7">
<!--以IE7模式渲染-->

<style type="text/css">
body {
	width: 100%;
	height: 100%;
	overflow: hidden;
	background:url(../../images/bgn.jpg) no-repeat;
}

#bottomArea {
	background-color: #3f7dac;
	width: 100%;
	height: 60px;
	margin-left: 0px;
	text-align: left;
	font-size: 50px;
	color: white;
	margin-top: 558px;
	line-height: 60px;
}

#biaotou {
	font-size: 50px;
	background-color: #3f7dac;
	color: white;
	padding-left: 50px;
	height: 60px;
	text-align: left;
	vertical-align: text-bottom;
}

table {
	table-layout:fixed;
	border: solid 1px #3f7dac;
	padding-left: 20PX;
}

table th {
	color: white;
	background-color: #3f7dac;
}
td{
	word-wrap:break-word;
}
label {
	color: black;
	font-size: 30px;
	height: 50px;
}

#tff{
	margin-top:10px;
	margin-bottom:10px;
}
#pageup {
	background: #3f7dac;
	color: white;
	behavior: url(../../js/PIE.htc);
}

#pagedown {
	background: #3f7dac;
	color: white;
	behavior: url(../../js/PIE.htc);
}

.pageButton {
	width: 260px;
	height: 60px;
	border-radius: 10px;
	background-color: #85c531;
	margin-left: 220px;
	margin-top: 120px;
	line-height: 60px;
	font-size: 30px;
	color: white;
	behavior: url(../../js/PIE.htc);
}

#confirmBtn {
	border: 2px solid #3f7dac;
	width: 180px;
	height: 60px;
	line-height: 60px;
	border-radius: 10px;
	margin-left: 20px;
	behavior: url(../../js/PIE.htc);
}
</style>

</head>
<body scroll="no" id="info">
	<div id="biaotou">药品目录列表</div>
	<div id="time"
		style="position:absolute;top:30px;right:50px;font-size:30px;color: #FF0000;">
	</div>
	<div class="layui-inline">
		&nbsp;&nbsp;<label class="layui-form-label"
			style="width: 200px;padding-top: 30px;">药品名称:</label>
		<div class="layui-input-inline">
			<input id="xmmc00" name="code" style="margin-top: 2px;padding-top: 2px; font-size:25px;" class="form-control input-lg"
				placeholder="请输入药品名称首字母">
		</div>
		  <div id="keypyma" class="softkeys" data-target="input[name='code']" style="position:absolute;padding-top:2px;background-color:#CEEFFF;left:180px;width:700px;display: none;z-index:1000;border:1px solid black;font-size:20px;color：white;"></div>
		<button id="do_search" style="margin-top: 21px;">
			<img src="${pageContext.request.contextPath}/images/query.png">
		</button>
	</div>

	<div id="ypzlcx"
		style="z-index:30;position:absolute;left:14px;top:135px;display:block;text-align:center">
		<table id="ypzlcx1" style="table-layout:fixed;cellspacing:2px">
			<thead>
				<tr
					style="height:40px;background-color:#3f7dac;border:1px solid black;color:white;">
					<td
						style="width:5%;height:40px;border:1px solid black;font-size:25px;font-coloer:white;text-align:center">序号</td>
					<td
						style="width:35%;height:40px;border:1px solid black;font-size:25px;text-align:center">名称</td>
					<td
						style="width:20%;height:40px;border:1px solid black;font-size:25px;text-align:center">规格</td>
					<td
						style="width:8%;height:40px;border:1px solid black;font-size:25px;text-align:center">单位</td>
					<td
						style="width:12%;height:40px;border:1px solid black;font-size:25px;text-align:center">单价</td>
					<td
						style="width:18%;height:40px;border:1px solid black;font-size:25px;text-align:center">自付比例</td>
				</tr>
			</thead>
			<tbody id="info1">

			</tbody>
			<tfoot>
				<tr>
					<td colspan="6"
						style="width:200px;height:6px;font-size:35px;text-align:center;">
						<div id="tff">
							<button id="pageup" style="font-size:35px;height:50px"
								class="layui-btn layui-btn-primary layui-btn-radius"
								onclick="page.prePage();">上一页</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button id="confirmBtn"></button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button id="pagedown" style="font-size:35px;height:50px"
								class="layui-btn layui-btn-primary layui-btn-radius"
								onclick="page.nextPage();">下一页</button>
						<div/>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>

	<div id="bottomArea">
		<span style="margin-left:664px;"> <img id="main"
			style="margin-top:-8px;"
			src="${pageContext.request.contextPath}/images/index.png" res_img="" />
		</span> <span style="margin-left:10px;"> <img id="pre"
			style="margin-top:-8px;"
			src="${pageContext.request.contextPath}/images/return.png" res_img="" />
		</span>
	</div>

	 <div id="waiting"  style="margin: -529px 0px 0px 0px;display:none;z-index:1000;width:576px;height:321px;position:absolute;left:212px;">
	 <img src="${pageContext.request.contextPath}/images/waiting.gif" >
   </div>
</body>

<script>
	var qsym00 = 1;//起始页码
	//初始化倒计时时间：120秒
	var time = 120;
	function timeAgin() {
		time = 120;
	}
	//自动倒计时，计时时间为0时，
function returnTime() {
			myVar = setInterval(
				function() {
					time--;
					$("#time").text(time);
					if (time == 0) {
						//跳转页面
						//$.session.clear();
						window.location.href="${pageContext.request.contextPath}/jsp/main/main.jsp";
					}
				}, 1000);
		}
		
		
	
	
	//页面跳转方法	
function jump() {
		$("#main").bind("click dbclick", function() {
			window.location.href="${pageContext.request.contextPath}/jsp/main/main.jsp";
		});
		$("#xmmc00").bind("click dbclick", function() {
			$("#keypyma").show();
		});
		$("#pre").bind("click dbclick", function() {
			window.location.href = "${pageContext.request.contextPath}/jsp/cxym/xxcx.jsp";
		});
		$("#do_search").bind("click dbclick", function() {
			$("#keypyma").hide();
			var xmmc001 = $("#xmmc00").val();
			getYaoPinAll();
			// window.location.href = "${pageContext.request.contextPath}/jsp/cxym/ypxxcx.jsp"; 
		});

	}

	//获取药品列表方法，渲染方法	
function getYaoPinAll() {
	var xmmc00 = document.getElementById("xmmc00").value;
		//获取初始化页面参数
		var datas = {
			"funcid" : "M07.02.06.04",
			"zdbh00" : window.parent.zdbh00,
			"cxlb00" : "1",
			"jspym0" : xmmc00,
			"qsym00" : qsym00,
			"myjls0" : "8"
			};
		$.ajax({
			async : true,
			type : "post",
			data : datas,
			dataType : "json",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			url : window.parent.serverUrl + "?method=ApplyAction",
			//url : "${pageContext.request.contextPath}/Test/test.do",
			success : function(json) {
				
				Data = eval(json);
				
				if (Data.retcode == "0") {
					var length = Data.retbody.length;
					if(length!=0){
						$("#info1").empty();//清空列表
					var j = 1;
					var i ;
					for (i = 0; i < length; i++) {
						if (j <= 8) {
							$("#info1").append(
								"<tr style=\"height:50px;border:1px solid black;\">"
								+ "<th style=\"width:70px;height:50px;border:1px solid black;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:25px;text-align:center\"><div style=\"width:60px;height:40px;background-color:#3f7dac;\">" + j + "</div></th>"
								+ "<td style=\"width:300px;height:50px;border:1px solid black;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:20px;text-align:center\">" + Data.retbody[i].xmmc00 + "</td>"
								+ "<td style=\"width:150px;height:50px;border:1px solid black;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:20px;text-align:center\">" + Data.retbody[i].xmgg00 + "</td>"
								+ "<td style=\"width:120px;height:50px;border:1px solid black;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:20px;text-align:center\">" + Data.retbody[i].xmdw00 + "</td>"
								+ "<td style=\"width:120px;height:50px;border:1px solid black;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:20px;text-align:center\">" + Data.retbody[i].xmje00 + "</td>"
								+ "<td style=\"width:180px;height:50px;border:1px solid black;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:20px;text-align:center\">" + Data.retbody[i].zfbL00 + "</td>"
								+ "</tr>");
							j++;
						} else {
							j = 1;
							i--;
						}
					}
					var duochurow =i % 8
					empt = 8 - duochurow;
					if(empt==8){
					//正好查询出整页
					}else{//填充非整页页面数据
						var xh = duochurow+1;
						for (var k = 1; k <= empt; k++) {
							$("#info1").append(
								"<tr style=\"height:50px;border:1px solid black;\">"
								+ "<th style=\"width:70px;height:50px;border:1px solid black;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:25px;text-align:center\"><div style=\"width:60px;height:40px;background-color:#3f7dac;\">" + xh + "</div></th>"
								+ "<td style=\"width:300px;height:50px;border:1px solid black;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:25px;text-align:center\">" + " " + "</td>"
								+ "<td style=\"width:150px;height:50px;border:1px solid black;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:25px;text-align:center\">" + " " + "</td>"
								+ "<td style=\"width:120px;height:50px;border:1px solid black;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:25px;text-align:center\">" + " " + "</td>"
								+ "<td style=\"width:120px;height:50px;border:1px solid black;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:25px;text-align:center\">" + " " + " </td>"
								+ "<td style=\"width:180px;height:50px;border:1px solid black;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:25px;text-align:center\">"+ " " + "</td>"
								+ "</tr>");
							xh++;
						}
					}
					page = new Page(8, "ypzlcx1", "info1");
					$("#confirmBtn").text(qsym00);
					}
					
				} else {
					--qsym00;
					if(qsym00>-1){
						getYaoPinAll();
					}else{
						$("#info1").empty();//清空列表
						$("#info1").append(
							"<tr style=\"width:1000px;height:400px;border:1px solid #3f7dac;\">"
							+ "<td colspan='6' rowspan='8' style='width:1000px;height:80px;font-size:35px;text-align:center;'>" +  Data.retmsg + "</td>"
							+ "</tr>");
					}
				}
				$("#waiting").hide();
			},
			error : function() {
				$("#waiting").hide();
				$("#info1").append(
					"<tr style=\"width:1024px;height:400px;border:1px solid #3f7dac;\">"
					+ "<td colspan='6' style='width:1024px;height:80px;font-size:35px;text-align:center;'>" + Data.retmsg  + "</td>"
					+ "</tr>");
			}
		});
	}
/**
	* js分页类
	* @param iAbsolute 每页显示记录数
	* @param sTableId 分页表格属性ID值，为String
	* @param sTBodyId 分页表格TBODY的属性ID值,为String,此项为要分页的主体内容
	* @Version 1.0.0
	* @author 辛现宝 2007-01-15 created
	* var __variable__; private
	* function __method__(){};private
	*/
	function Page(iAbsolute, sTableId, sTBodyId) {
		this.absolute = iAbsolute; //每页最大记录数
		this.tableId = sTableId;
		this.tBodyId = sTBodyId;
		this.rowCount = 0; //记录数
		this.pageCount = 0; //页数
		this.pageIndex = 0; //页索引
		this.__oTable__ = null; //表格引用
		this.__oTBody__ = null; //要分页内容
		this.__dataRows__ = 0; //记录行引用
		this.__oldTBody__ = null;
		this.__init__(); //初始化;
	}
	;
	/*
	初始化
	*/
	Page.prototype.__init__ = function() {
		this.__oTable__ = document.getElementById(this.tableId); //获取table引用
		this.__oTBody__ = this.__oTable__.tBodies[this.tBodyId]; //获取tBody引用
		this.__dataRows__ = this.__oTBody__.rows;
		this.rowCount = this.__dataRows__.length;
		try {
			this.absolute = (this.absolute <= 0) || (this.absolute > this.rowCount) ? this.rowCount : this.absolute;
			this.pageCount = parseFloat(this.rowCount % this.absolute == 0
				? this.rowCount / this.absolute : this.rowCount / this.absolute + 1);
		} catch (exception) {}

		this.__updateTableRows__();
	};
	/*
	下一页
	*/
	Page.prototype.nextPage = function() {
			$("#keypyma").hide();
			qsym00++;
			$("#waiting").css("display","block");
			getYaoPinAll();
	};
	/*
	上一页
	*/
	Page.prototype.prePage = function() {
			$("#keypyma").hide();
			qsym00--;
			if (qsym00 > 0){
				$("#waiting").css("display","block");
				getYaoPinAll();
			}else{
				qsym00=1;
				$("#waiting").css("display","block");
				getYaoPinAll();
			}

	};
	/*
	首页
	*/
	Page.prototype.firstPage = function() {
		if (this.pageIndex != 0) {
			this.pageIndex = 0;
			this.__updateTableRows__();
		}
	};
	/*
	尾页
	*/
	Page.prototype.lastPage = function() {
		if (this.pageIndex + 1 != this.pageCount) {
			this.pageIndex = this.pageCount - 1;
			this.__updateTableRows__();
		}
	};
	/*
	页定位方法
	*/
	Page.prototype.aimPage = function(iPageIndex) {
		if (iPageIndex > this.pageCount - 1) {
			this.pageIndex = this.pageCount - 1;
		} else if (iPageIndex < 0) {
			this.pageIndex = 0;
		} else {
			this.pageIndex = iPageIndex;
		}
		this.__updateTableRows__();
	};
	/*
	执行分页时，更新显示表格内容
	*/
	Page.prototype.__updateTableRows__ = function() {
		var iCurrentRowCount = this.absolute * this.pageIndex;
		var iMoreRow = this.absolute + iCurrentRowCount > this.rowCount ? this.absolute + iCurrentRowCount - this.rowCount : 0;
		var tempRows = this.__cloneRows__();
		//alert(tempRows === this.dataRows);
		//alert(this.dataRows.length);
		var removedTBody = this.__oTable__.removeChild(this.__oTBody__);
		var newTBody = document.createElement("TBODY");
		newTBody.setAttribute("id", this.tBodyId);

		for (var i = iCurrentRowCount; i < this.absolute + iCurrentRowCount - iMoreRow; i++) {
			newTBody.appendChild(tempRows[i]);
		}
		this.__oTable__.appendChild(newTBody);
		/*
		this.dataRows为this.oTBody的一个引用，
		移除this.oTBody那么this.dataRows引用将销失,
		code:this.dataRows = tempRows;恢复原始操作行集合.
		*/
		this.__dataRows__ = tempRows;
		this.__oTBody__ = newTBody;
		//alert(this.dataRows.length);
		//alert(this.absolute+iCurrentRowCount);
		//alert("tempRows:"+tempRows.length);

	};
	/*
	克隆原始操作行集合
	*/
	Page.prototype.__cloneRows__ = function() {
		var tempRows = [];
		for (var i = 0; i < this.__dataRows__.length; i++) {
			/*
			code:this.dataRows[i].cloneNode(param), 
			param = 1 or true:复制以指定节点发展出去的所有节点,
			param = 0 or false:只有指定的节点和它的属性被复制.
			*/
			tempRows[i] = this.__dataRows__[i].cloneNode(1);
		}
		return tempRows;
	};	
function keyStart(){
	 $('.softkeys').softkeys({
        target : $('.softkeys').data('target'),
        layout : [
           [
                /* ['`','~'], */
                ['1','!'],
                ['2','@'],
                ['3','#'],
                ['4','$'],
                ['5','%'],
                ['6','^'],
                ['7','&'],
                ['8','*'],
                ['9','('],
                ['0',')']
                /*,
                 ['-', '_'],
                ['=','+'], 
                'delete'*/
            ], 
            [
                'q','w','e','r','t','y','u','i','o','p'
               /*  ,
                ['[','{'],
                [']','}'] */
            ],
            [
                /* 'capslock', */
                'a','s','d','f','g','h','j','k','l'
                /* ,
                [';',':'],
                ["'",'"'],
                ['\\','|'] */
            ],
            [
                'shift',
                'z','x','c','v','b','n','m','delete'
                /* ,
                [',','<'],
                ['.','>'],
                ['/','?'],
                ['@'] */
            ]
        ]
    });
}		
var init = function() {
		$("#waiting").show();
		keyStart();
		var qsym00 = 1; //起始页码
		getYaoPinAll(); //获取所有药品列表
		jump(); //跳转页面方法	
		returnTime(); //倒计时方法
		//用户点击或按键等操作时，倒计时重新计时
		document.onkeydown = timeAgin;
		document.onclick = timeAgin;
		
	};
	init();
</script>
</html>


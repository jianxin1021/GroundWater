<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">  
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-table.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loaders.css">
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-table.js"></script>
<title>Insert title here</title>
</head>
<body>

	<table  data-toggle="table" id="cusTable" data-pagination="true"
		data-show-refresh="true" data-show-toggle="true"
		data-showColumns="true" data-search="true">
		<thead>
			<tr>
				<th data-field="index" data-formatter="indexFormatter" data-align="center" >序号</th>
				<th data-field="code" data-align="center" >站点</th>
				<th data-field="date" data-align="center" data-sortable="true">时间</th>
				<th data-field="v1" data-align="center" >埋深</th>
				<th data-field="v2" data-align="center" >温度</th>
				<th data-field="v3" data-align="center" >标高</th>
				<th data-field="v4" data-align="center" >分站电量</th>
				<th data-field="v5" data-align="center" >传感器电量</th>
				<th data-field="v6" data-align="center">气压</th>
				<th data-field="address" data-align="center" >地址</th>
			</tr>
		</thead>
	</table>
	<input class="form-control col-md-6 col-md-offset-3" style="width:33%" placeholder="设置刷新时间" type="text"
		value="" id="getTime" />
	<input class="btn btn-default" type="button"  value="设置刷新时间" id="setTime"><br>
	<input class="btn btn-default col-md-4 col-md-offset-3" type="button" value="刷新实时数据" id="getJsonReal"><br>
	<input class="btn btn-default col-md-4 col-md-offset-3" type="button" value="显示历史数据" id="getJsonHis"><br>
	<script type="text/javascript">
		function indexFormatter(value, row, index) {   //显示行号
			return index + 1;
		}
		function displayData(){  //展示实时数据
			$.ajax({             //获取json
		        async : true,
				type : "post",
				url : "${pageContext.request.contextPath}/servlet/DataServlet?table=now",   //获取实时数据
				contentType : 'application/json',
				dataType : "json",
				success : function(data) {
					$("#cusTable").bootstrapTable('load', data);   //装载数据
					alert("更新");
				},
				error : function() {
					alert("错误");
				}
			})
		}
		
		var time = 5000;  //刷新时间
		var flag = 0;    //接收定时函数的参数
		$("#setTime").click(function(){
			time = $("#getTime").val() * 1000;
		})
		
		$("#getJsonHis").click(function(){
			$.ajax({             //获取json
		        async : true,
				type : "post",
				url : "${pageContext.request.contextPath}/servlet/DataServlet?table=history",  //获取历史数据
				contentType : 'application/json',
				dataType : "json",
				success : function(data) {
					$("#cusTable").bootstrapTable('load', data);   //装载数据
					clearInterval(flag);//停止刷新
				},
				error : function() {
					alert("错误");
				}
			})
			
		})
		 $("#getJsonReal").click(function(){     //获得实时数据
			 /**
		        *   设置定时执行
		        *   setInterval(表达式,交互时间)从载入后,每隔指定的时间就执行一次表达式 
		        */
				flag =  setInterval("displayData()",time);    //开始刷新
		   })
	</script>



</body>
</html>
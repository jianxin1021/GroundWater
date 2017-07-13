<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">  
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">

<link rel="icon" href="http://hao.360.cn/favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon" href="http://hao.360.cn/favicon.ico"
	type="image/x-icon" />

<!-- Bootstrap -->
<!-- <link rel="stylesheet"
	href="css/bootstrap.min.css"> -->
<title>XXXXXXXXXXX</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<style type="text/css">
body {
	padding-top: 50px;
	padding-bottom: 40px;
	color: #5a5a5a;
}
/* 轮播广告 */
.carousel {
	height: 500px;
	margin-bottom: 60px;
}

.carousel .item {
	height: 500px;
	background-color: #000;
}

.carousel .item img {
	width: 100%;
	height: 500px;
}

.carousel-caption {
	z-index: 10;
}

.carousel-caption p {
	margin-bottom: 20px;
	font-size: 20px;
	line-height: 1.8;
}
/* 简介 */
.summary {
	padding-right: 15px;
	padding-left: 15px;
}

.summary .col-md-4 {
	margin-bottom: 20px;
	text-align: center;
}
/* 特性 */
.feature-divider {
	margin: 40px 0;
}

.feature {
	padding: 30px 0;
}

.feature-heading {
	font-size: 50px;
	color: #2a6496;
}

.feature-heading .text-muted {
	font-size: 28px;
}
/* 响应式布局 */
@media ( max-width : 768px) {
	.summary {
		padding-right: 3px;
		padding-left: 3px;
	}
	.carousel {
		height: 300px;
		margin-bottom: 30px;
	}
	.carousel .item {
		height: 300px;
	}
	.carousel img {
		min-height: 300px;
	}
	.carousel-caption p {
		font-size: 16px;
		line-height: 1.4;
	}
	.feature-heading {
		font-size: 34px;
	}
	.feature-heading .text-muted {
		font-size: 22px;
	}
}

@media ( min-width : 992px) {
	.feature-heading {
		margin-top: 120px;
	}
}

#black {
	color: black;
}
/* 这里是设置对联样式滴 */
#leftDiv, #rightDiv {
	width: 100px; /* 宽度 */
	height: 300px; /* 高度 */
	position: absolute; /* 绝对定位激活 */
}
</style>

</head>
<body>

	<!-- 顶部导航 -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"
		id="menu-nav">
	<div class="container">
		<div class="navbar-header">
			<!-- 导航栏右侧的导航切换按钮，当屏幕尺寸缩小时改变导航风格 -->
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">XXX地下水监测</a>
		</div>

		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#ad-carousel">综述</a></li>
				<li><a href="#summary-container">简述</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">功能 <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#feature-tab" data-tab="tab-chrome">实时监控</a></li>
						<li><a href="#feature-tab" data-tab="tab-firefox">报警信息</a></li>
						<li><a href="#feature-tab" data-tab="tab-safari">数据列表</a></li>
						<li><a href="#feature-tab" data-tab="tab-opera">曲线分析</a></li>
						<li><a href="#feature-tab" data-tab="tab-ie">辅助管理</a></li>
					</ul></li>
				<li><a href="#" data-toggle="modal" data-target="#about-modal">关于</a></li>
			</ul>

			<form class="navbar-form navbar-right" role="form"
				action="${pageContext.request.contextPath}/servlet/UsersServlet"
				method="post">
				<div class="form-group">
					<input type="text" placeholder="请输入用户名" name="username"
						id="username" class="form-control">
				</div>
				<div class="form-group">
					<input type="password" placeholder="请输入密码" name="password"
						id="password" class="form-control">
				</div>
				<button type="submit" class="btn btn-success" id="bt_login">登录</button>
			</form>

		</div>
	</div>
	</nav>

	<!-- 广告轮播 -->
	<div id="ad-carousel" class="carousel slide" data-ride="carousel">
		<!--图片轮播最下面的小圆点-->
		<ol class="carousel-indicators">
			<li data-target="#ad-carousel" data-slide-to="0" class="active"></li>
			<li data-target="#ad-carousel" data-slide-to="1"></li>
			<li data-target="#ad-carousel" data-slide-to="2"></li>
			<li data-target="#ad-carousel" data-slide-to="3"></li>
			<li data-target="#ad-carousel" data-slide-to="4"></li>
		</ol>

		<!-- 图片轮播的内容 -->
		<div class="carousel-inner">
			<!-- 图片轮播当前被激活的项 -->
			<div class="item active">
				<img src="${pageContext.request.contextPath}/images/f.jpg" alt="1 slide">

				<div class="container">
					<div class="carousel-caption">
						<p>
							<span style="font-size: 20px" id="black"><strong>水资源是指可资利用或有可能被利用的水源，这个水源应具有足够的数量和合适的质量，并满足某一地方在一段时间内具体利用的需求。</strong>
							</span>
						</p>
					</div>
				</div>
			</div>

			<!--图片轮播的每一项-->
			<div class="item">
				<img src="${pageContext.request.contextPath}/images/c.jpg" alt="2 slide">

				<div class="container">
					<div class="carousel-caption">
						<p>
							<span style="font-size: 20px" id="black"><strong>天然水资源包括河川径流、地下水、积雪和冰川、湖泊水、沼泽水、海水,按水质划分为淡水和咸水。
									地下水，是贮存于包气带以下地层空隙，包括岩石孔隙、裂隙和溶洞之中的水。 水在地下分为许多层段便是所谓的含水层。 </strong></span>
						</p>
					</div>
				</div>
			</div>

			<div class="item">
				<img src="images/d.jpg" alt="3 slide">

				<div class="container">
					<div class="carousel-caption">
						<p>
							<span style="font-size: 20px" id="black"><strong>地下水污染（ground
									water pollution）主要指人类活动引起地下水化学成分、物理性质和生物学特性发生改变而使质量下降的现象。
									地表以下地层复杂，地下水流动极其缓慢，因此，地下水污染具有过程缓慢、不易发现和难以治理的特点。地下水一旦受到污染，即使彻底消除其污染源，也得十几年，甚至几十年才能使水质复原。至于要进行人工的地下含水层的更新，问题就更复杂了。
							</strong></span>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="images/e.jpg" alt="4 slide">

				<div class="container">
					<div class="carousel-caption">
						<p>
							<span style="font-size: 20px"><strong>地下水，是指赋存于地面以下岩石空隙中的水，狭义上是指地下水面以下饱和含水层中的水。地下水是水资源的重要组成部分，由于水量稳定，水质好，是农业灌溉、工矿和城市的重要水源之一。
									为保护和合理开发地下水资源，防止和控制地下水污染，保障人民身体健康，促进经济建设，国家出台了地下水的各项量值标准—GB/T
									14848-9.</strong></span>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="${pageContext.request.contextPath}/images/b.jpg" alt="5 slide">

				<div class="container">
					<div class="carousel-caption">
						<p>
							<span style="font-size: 20px"><strong>依据《中华人民共和国环境保护法》第十一条“国务院环境保护行政主管部门建立监测制度、制订监测规范”和《中华人民共和国水污染防治法》的要求，积极开展地下水环境监测，掌握地下水环境质量，保护地下水水质，防治地下水污染，以保障人体健康，特制订本技术规范。

							</strong></span>
						</p>
					</div>
				</div>
			</div>
		</div>

		<!--图片轮播的左右两个箭头-->
		<a class="left carousel-control" href="#ad-carousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
		</a> <a class="right carousel-control" href="#ad-carousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span></a>
	</div>

	<!-- 主要内容 ，使用栅格布局实现-->
	<div class="container summary">

		<h5>核心简介</h5>
		<div class="row" id="summary-container">
			<div class="col-md-4">
				<img class="img-circle" src="${pageContext.request.contextPath}/images/a4.jpg" alt="chrome">

				<h2>实时监控</h2>

			</div>
			<div class="col-md-4">
				<img class="img-circle" src="${pageContext.request.contextPath}/images/a6.jpg" alt="firefox">

				<h2>曲线分析</h2>

			</div>
			<div class="col-md-4">
				<img class="img-circle" src="${pageContext.request.contextPath}/images/a7.jpg" alt="safari">

				<h2>辅助管理</h2>

			</div>

		</div>


		<!--水平分割线-->
		<hr />
		<!--tab标签产品特征部分 -->
		<!-- tab标签头部 -->
		<ul class="nav nav-tabs" role="tablist" id="feature-tab">
			<li class="active"><a href="#tab-chrome" role="tab"
				data-toggle="tab">实时监控</a></li>
			<li><a href="#tab-firefox" role="tab" data-toggle="tab">报警信息</a></li>
			<li><a href="#tab-safari" role="tab" data-toggle="tab">数据列表</a></li>
			<li><a href="#tab-opera" role="tab" data-toggle="tab">曲线分析</a></li>
			<li><a href="#tab-ie" role="tab" data-toggle="tab">辅助管理</a></li>
		</ul>


		<!-- 每个tab标签对应的介绍部分，5个标签所有5个div的介绍 -->
		<div class="tab-content">
			<div class="tab-pane active" id="tab-chrome">
				<div class="row feature">
					<div class="col-md-7">

						<h2 class="feature-heading">
							实时监控 <span class="text-muted"></span>
						</h2>

						<p class="lead">展示最新水位数据、电池电压、设备状态和信号质量等。</p>
					</div>
					<div class="col-md-5">
						<img class="feature-image img-responsive" src="images/a4.jpg"
							alt="实时监控">
					</div>
				</div>
			</div>
			<div class="tab-pane" id="tab-firefox">
				<div class="row feature">
					<div class="col-md-5">
						<img class="feature-image img-responsive" src="images/a8.jpg"
							alt="报警信息">
					</div>
					<div class="col-md-7">

						<h2 class="feature-heading">
							报警信息 <span class="text-muted"></span>
						</h2>

						<p class="lead">水位越限、电量过低、设备异常等自动报警。</p>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="tab-safari">
				<div class="row feature">
					<div class="col-md-7">

						<h2 class="feature-heading">
							数据列表 <span class="text-muted"></span>
						</h2>

						<p class="lead">智能生成时、日、月或任意时段的数据统计报表。
							用户可以根据实际情况生成日报表、月报表、年报表以及任意时间段的水位及温度曲线。</p>
					</div>
					<div class="col-md-5">
						<img class="feature-image img-responsive" src="images/a5.jpg"
							alt="数据列表">
					</div>
				</div>
			</div>
			<div class="tab-pane" id="tab-opera">
				<div class="row feature">
					<div class="col-md-5">
						<img class="feature-image img-responsive" src="images/a6.jpg"
							alt="曲线分析 ">
					</div>
					<div class="col-md-7">

						<h2 class="feature-heading">
							曲线分析 <span class="text-muted"></span>
						</h2>

						<p class="lead">一键生成各监测参数的时段分析曲线。</p>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="tab-ie">
				<div class="row feature">
					<div class="col-md-7">

						<h2 class="feature-heading">
							辅助管理 <span class="text-muted"></span>
						</h2>

						<p class="lead">矢量地图展示测点分布位置、报警状态和单点监测数据，智能生成任意时刻的等水位图。</p>
					</div>
					<div class="col-md-5">
						<img class="feature-image img-responsive" src="images/a7.jpg"
							alt="辅助管理">
					</div>
				</div>
			</div>
		</div>

		<!-- 关于 -->
		<div class="modal fade" id="about-modal" tabindex="-1" role="dialog"
			aria-labelledby="modal-label" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
						</button>
						<h4 class="modal-title" id="modal-label">关于</h4>
					</div>
					<div class="modal-body">
						<p>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地下水资源较地表水资源复杂，因此地下水本身质和量的变化以及引起地下水变化的环境条件和地下水的运移规律不能直接观察，
							同时，地下水的污染以及地下水超采引起的地面沉降是缓变型的，一旦积累到一定程度，就成为不可逆的破坏。
							因此准确开发保护地下水就必须依靠长期的地下水监测，及时掌握动态变化情况。 <br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地下水监测系统是掌握地下水变化规律、了解地下水开采状况、指导地下水资源保护的重要手段。地下水监测系统可对地下水的水位、水温、水质等参数进行长期监测并自动存储监测数据，
							可对地下水的变化规律进行动态分析。针对地下水监测井分布地域广、数量众多的特点，地下水监测系统依托既有的GPRS/CDMA无线网络平台进行建设，具有投资成本低、建设速度快、无通信距离限制等优点。
						</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">了解</button>
					</div>
				</div>
			</div>
		</div>
		<!--对联开始-->
		<div id="leftDiv" style="top: 750px; /* 距离顶部120px */ left: 2px;">
			<img src="images/y.jpg" alt="这是对联广告" width="140" height="300" />
		</div>
		<div id="rightDiv" style="top: 750px; /* 距离顶部120px */ right: 2px;">
			<img src="images/p.jpg" alt="这是对联广告" width="140" height="300" />
		</div>
		<!--对联结束-->
		<!-- 页面的尾部 -->
		<footer>
		<p class="pull-right">
			<a href="#top">回到顶部</a>
		</p>

		<p>&copy; 2017 地下水监测系统</p>
		</footer>
	</div>



	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script>
		$(function() {
			$('#ad-carousel').carousel();
			$('#menu-nav .navbar-collapse a').click(function(e) {
				var href = $(this).attr('href');
				var tabId = $(this).attr('data-tab');
				if ('#' !== href) {
					e.preventDefault();//阻止事件冒泡用的。
					$(document).scrollTop($(href).offset().top - 70);
					if (tabId) {
						$('#feature-tab a[href=#' + tabId + ']').tab('show');
					}
				}
			});
		});
	</script>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Visual Admin Dashboard - Home</title>
<meta name="description" content="">
<meta name="author" content="templatemo">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/bootstrap.min1.css" rel="stylesheet">
<link href="css/templatemo-style.css" rel="stylesheet">
<link rel="stylesheet" href="css/stylesheets/style.css">
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/jquery.leoweather.min.js"></script>

<style>
@font-face {
	font-family: 'font1'; /*字体名称*/
	src: url('fonts/方正静蕾体.TTF'); /*字体源文件*/
}
</style>
<script>
	$(document).ready(function() {
		if ('${user.role.roleId == 3}'.toString() == "true") {
			$(".df").css("display", "block")
		}
	});
</script>

</head>
<body>
	<!-- Left column -->
	<div class="templatemo-flex-row">
		<div class="templatemo-sidebar">
			<header class="templatemo-site-header">
				<div class="square"></div>
				<h1>${user.nickName}</h1>
			</header>
			<div class="profile-photo-container">
				<img src="${user.userIconSrc }" alt="Profile Photo"
					class="img-responsive">
				<div class="profile-photo-overlay"></div>
			</div>
			<!-- Search box -->
			<form action="SearchServlet" method="post"
				class="templatemo-search-form" role="search">
				<div class="input-group">
					<button type="submit" class="fa fa-search"></button>
					<input type="text" class="form-control" placeholder="点击搜索内容"
						name="searchContent" id="srch-term">
				</div>
			</form>
			<div class="mobile-menu-icon">
				<i class="fa fa-bars"></i>
			</div>
			<nav class="templatemo-left-nav">
				<ul>
					<li><a href="userIndex.jsp" class="active"><i
							class="fa fa-home fa-fw"></i>个人中心主页</a></li>
					<li><a href="usersFile.jsp"><i
							class="fa fa-database fa-fw"></i>查看文件</a></li>
					<li style="display: none" class="df"><a
						href="ManageServlet?action=userManage"><i
							class="fa fa-users fa-fw"></i>人员管理</a></li>
					<li style="display: none" class="df"><a
						href="ManageServlet?action=fileManage"><i
							class="fa fa-users fa-fw"></i>文件管理</a></li>
					<li><a href="upload.jsp"><i class="fa fa-bar-chart fa-fw"></i>进入上传中心</a></li>
					<li><a href="userPerfence.jsp"><i
							class="fa fa-sliders fa-fw"></i>修改个人信息</a></li>
					<li><a href="LoginServlet?action=out"><i
							class="fa fa-eject fa-fw"></i>登出</a></li>
				</ul>
			</nav>
		</div>
		<!-- Main content -->
		<div class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-top-nav-container">
				<div class="row">
					<nav class="templatemo-top-nav col-lg-12 col-md-12">
						<ul class="text-uppercase">
							<li><a href="index.jsp" class="active">回到主页</a></li>
							<li><a href="searchIndex.jsp">进入搜索页面</a></li>
							<li><a href="userPerfence.jsp">修改信息</a></li>
							<li><a href="upload.jsp" style="color:#FF6A6A">上传中心</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="templatemo-content-container" style="height: 900px">
				<div class="templatemo-flex-row flex-content-row">
					<div class="templatemo-content-widget white-bg col-2">
						<i class="fa fa-times"></i>
						<div class="square"></div>
						<h2 class="templatemo-inline-block"
							style='font-size: 30px;color: #E87476'>
							<strong>江汉大学音乐平台管理员须知</strong>
						</h2>
						<hr>
						<div style="color: #268BB5;font-size:20px">
							<p>
								<strong
									style="font-family: 'font1';font-weight:bolder;font-size:35px">1.这是音乐管理平台的后台页面。</strong>
							</p>
							<hr>
							<p>
								<strong
									style="font-family: 'font1';font-weight:bolder;font-size:35px">2.部分功能不支持IE10以下浏览器，当遇到错误时，请尝试将浏览器升到最新版本。</strong>

							</p>
							<hr>
							<p>
								<strong
									style="color:#FF4040;font-family: 'font1';font-weight:bolder;font-size:35px">3.提示！歌曲上传需经过审核，请不要上传没有版权的歌曲！</strong>
							</p>
						</div>


					</div>

					<div class="templatemo-content-widget white-bg col-1 text-center"
						style="background-color: #607B8B">
						<i class="fa fa-times"></i>
						<div
							style="font-family: 'font1';font-weight:bolder;font-size:70px;letter-spacing:40px">Music</div>
						<div id="player">

							<div class="cover"></div>

							<div class="ctrl">

								<div class="tag">

									<strong>Title</strong> <span class="artist">Artist</span> <span
										class="album">Album</span>

								</div>

								<div class="control">

									<div class="left">

										<div class="rewind icon"></div>

										<div class="playback icon"></div>

										<div class="fastforward icon"></div>

									</div>

									<div class="volume right">

										<div class="mute icon left"></div>

										<div class="slider left">

											<div class="pace"></div>

										</div>

									</div>

								</div>

								<div class="progress">

									<div class="slider">

										<div class="loaded"></div>

										<div class="pace"></div>

									</div>

									<div class="timer left">0:00</div>

									<div class="right">

										<div class="repeat icon"></div>

										<div class="shuffle icon"></div>

									</div>

								</div>

							</div>

						</div>

						<ul id="playlist"></ul>

					</div>
				</div>
				<div class="templatemo-flex-row flex-content-row">
					<div class="col-1">
						<div class="templatemo-content-widget orange-bg">
							<i class="fa fa-times"></i>
							<div class="media">
								<div class="media-left">
									<a href="#"> <img class="media-object img-circle"
										src="images/profile-photo.jpg" width="130px"
										style="float:left">
									</a>
								</div>
								<div class="media-body"
									style="padding-left: 80px;padding-top:7px">
									<div style="font-weight: bold;font-size:15px">
										尊敬的管理员<span id="weather"></span>
									</div>
									<script type="text/javascript">
										$('#weather').leoweather({
											format : '，{时段}好！，<Br><span id="colock">现在时间是：<strong>{年}年{月}月{日}日 星期{周} {时}:{分}:{秒}</strong>，<Br></span> <b>{城市}天气</b> {天气} {夜间气温}℃ ~ {白天气温}℃'
										});
									</script>
								</div>
							</div>
						</div>
						<div class="templatemo-content-widget white-bg">
							<i class="fa fa-times"></i>
							<div class="media">
								<div class="media-left">
									<a href="#"> <img class="media-object img-circle"
										src="images/sunset.jpg" alt="Sunset" style="float:left">
									</a>
								</div>
								<div class="media-body" style="color:#6666CC;padding-left:82px">
									<h2 class="media-heading text-uppercase"
										style="font-family: 'font1';font-weight:bolder;font-size:35px">快乐与人分享就是两份快乐</h2>
									<h2 class="media-heading text-uppercase"
										style="font-family: 'font1';font-weight:bolder;font-size:35px">痛苦与人分享则是半个痛苦</h2>
								</div>
							</div>
						</div>
					</div>
					<div class="col-1">
						<div
							class="panel panel-default templatemo-content-widget white-bg no-padding templatemo-overflow-hidden">
							<i class="fa fa-times"></i>
							<div class="panel-heading templatemo-position-relative">
								<h2 class="text-uppercase">热度文件排行榜</h2>
							</div>
							<div class="table-responsive">
								<table class="table table-striped table-bordered"
									style="color:#FF4040;font-weight:bolder">
									<thead>
										<tr>
											<td>No.</td>
											<td>歌曲名</td>
											<td>歌手</td>
											<td>热度</td>
										</tr>
									</thead>
									<tbody style="color:#1874CD">

										<c:forEach items="${applicationScope.top5Song }" var="s"
											varStatus="status">
											<tr>
												<td>${status.count}</td>
												<td>${s.songName}</td>
												<td>${s.singer.singerName}</td>
												<td>${s.hot}</td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- Second row ends -->
				<div class="copyrights">Collect from</div>

				<footer class="text-right">
					<p>Copyright &copy; 2084 Company Name | More Templates -
						Collect from</p>
				</footer>
			</div>
		</div>
	</div>
	<script src="js/manger/jquery-ui-1.8.17.custom.min.js"></script>
	<script src="js/manger/script.js"></script>
	<!-- JS -->


</body>
</html>

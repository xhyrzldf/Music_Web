<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<title>Demo</title>
		<c:if test="${empty sessionScope.singerPage }">
		<c:redirect url="singerAction!initAllSinger.action"></c:redirect>
		</c:if>
		
		
		<link rel="icon" href="favicons/1.png">
		<link rel="stylesheet" href="css/test.css" />
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/index.css">
		<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
		<script src="js/script.js"></script>
	<script type="text/javascript">
		function initPage(){
		var currentPage="${currentPage}";
		$("div[class='mod_page_nav js_pager']>a").eq(currentPage).attr('class','current');
	}
	
	$(function(){

		/*歌手类别的全部标签绑定*/
		$("div[class='singer_tag__list js_area'] a[class='singer_tag__item singer_tag__item--select']").click(function() {
			$("div[class='singer_tag__list js_area'] a[class='singer_tag__item singer_tag__item--select']").attr('class','singer_tag__item');
			$(this).attr('class','singer_tag__item singer_tag__item--select');
		});
		/*歌手类别绑定*/
		$("div[class='singer_tag__list js_area'] a[class='singer_tag__item']").click(function() {
			$("div[class='singer_tag__list js_area'] a[class='singer_tag__item singer_tag__item--select']").attr('class','singer_tag__item');
			$(this).attr('class','singer_tag__item singer_tag__item--select');
		});
		/*拼音选择的热门按钮绑定*/
		$("div[class='singer_tag__list js_letter'] a[class='singer_tag__item singer_tag__item--select']").click(function() {
			$("div[class='singer_tag__list js_letter'] a[class='singer_tag__item singer_tag__item--select']").attr('class','singer_tag__item');
			$(this).attr('class','singer_tag__item singer_tag__item--select');
		});
		/*拼音选择绑定*/
		$("div[class='singer_tag__list js_letter'] a[class='singer_tag__item']").click(function() {
			$("div[class='singer_tag__list js_letter'] a[class='singer_tag__item singer_tag__item--select']").attr('class','singer_tag__item');
			$(this).attr('class','singer_tag__item singer_tag__item--select');
		});
		/*跳转页面的绑定*/
		$("div[class='mod_page_nav js_pager']>a[class='js_pageindex'],div[class='mod_page_nav js_pager']>a[class='current']").click(function(){
			$("div[class='mod_page_nav js_pager'] a[class='current']").attr('class','js_pageindex');
			$(this).attr('class','current');
		});
		/*下一页的绑定*/
		$("a[class='next js_pageindex']").click(function(){
			$("a[class='current']").next("a[class='js_pageindex']").attr('class','current');
			$("a[class='current']").first().attr('class','js_pageindex');
		});
		/*上一页的绑定*/
		$("a[class='previous js_pageindex']").click(function(){
			$("a[class='current']").prev("a[class='js_pageindex']").attr('class','current');
			$("a[class='current']").last().attr('class','js_pageindex');
		});
	});
		
	</script>
	</head>

	<body onload="initPage()">

		<header class="header">
			<div class="header-container">
				<div class="header-top">
					<a href="#" class="logo"></a>
					<nav class="header-nav">
						<ul>
							<li>
								<a href="show.jsp" class="header-nav__cur">音乐馆</a>
							</li>
							<li>
								<a href="usercenter.jsp">我的音乐</a>
							</li>
							<li>
								<a href="#">下载客户端</a>
							</li>
							<li>
								<a href="#">VIP</a>
							</li>
						</ul>
					</nav>
					<div class="header-search">
						<input type="text" class="text" placeholder="here...">
						<div class="btn"><i class="icon-sprite"></i></div>
						<div class="result">
				<c:forEach items="${applicationScope.top5Song }" var="s" varStatus="status">
			   <a href="#" class="result-item">
              <span class="rank">${status.count }</span>
              <span class="title">${s.songName}</span>
              <span class="num">${s.hot }</span>
           		 </a>
				</c:forEach>

							<div class="history">
								<span>搜索历史</span>
								<i class="icon-sprite"></i>
							</div>
						</div>
					</div>
					<div class="header-login">

					</div>
				</div>
				<ul class="header-subNav">
					<li>
						<a href="show.jsp" >首页</a>
					</li>
					<li>
						<a href="singer.jsp" class="subNav-cur">歌手</a>
					</li>
					<li>
						<a href="album.jsp">专辑</a>
					</li>
					<li>
						<a href="topList.jsp">排行榜</a>
					</li>
					<li>
						<a href="playList.jsp">分类歌单</a>
					</li>
					<li>
						<a href="#">MV</a>
					</li>
				</ul>
			</div>
		</header>

		<!-- 新歌首发 -->
		<div class="main" id="newSong">
			<div class="main-inner">
				<div class="main-title">
					<h2 class="title"><i></i></h2>
					<span class="line line-left"></span>
					<span class="line line-right"></span>
				</div>
				<a href="#" class="readAll">全部<i class="icon-sprite"></i></a>
				<div class="main-tab tab-title">
					<a href="javascript:;" class="item item-cur">全部</a>
					<a href="javascript:;" class="item">华语</a>
					<a href="javascript:;" class="item">欧美</a>
					<a href="javascript:;" class="item">韩国</a>
					<a href="javascript:;" class="item">日本</a>
				</div>
				<div class="main-slider tab-cont">
					<ul class="slider-wrapper">
		<c:forEach  items="${applicationScope.dList }" var="d">
		   <li>
            <a onclick="javascript:playSong('${d.dvdId}','${d.dvdIconSrc}');return false;" href="#" class="img">
              <img src="${d.dvdIconSrc }" alt="#">
              <span class="mask"></span>
              <i class="icon-play"></i>
            </a>
            <div class="info">
              <div class="title">
                <a href="albumAction!goIntoAlbumDetails.action?dvd.dvdName=${d.dvdName }">${d.dvdName }</a>
                <i class="icon-sprite"></i>
              </div>
              <a href="singerAction!initSingerDetails.action?singer.singerName=${d.singer.singerName }" class="author">${d.singer.singerName }</a>
            </div>
          </li>
		</c:forEach>

					</ul>
					<div class="slider-btns">
						<span class="cur"><i></i></span>
						<span><i></i></span>
						<span><i></i></span>
					</div>
				</div>
			</div>
			<div class="main-operate">
				<a href="javascript:;" class="slider-prev"><i class="icon-sprite"></i></a>
				<a href="javascript:;" class="slider-next"><i class="icon-sprite"></i></a>
			</div>
		</div>

		<div class="main1">
			<div class="mod_singer_tag">
				<div class="singer_tag__list js_area">
					<a href="javascript:;" class="singer_tag__item singer_tag__item--select" data-key="all_all" hidefocus="">全部</a>
<!-- 					这里要遍历所有歌手类型 -->
					<c:forEach items="${allSingerType }" var="t">
					<a href="javascript:;" class="singer_tag__item" data-key="cn_man" hidefocus="" >${t.singerTypeName }</a>
					</c:forEach>
					
				</div>
				<div class="singer_tag__list js_letter">
					<!--singer_tag__item--all-->
					<a href="javascript:;" class="singer_tag__item singer_tag__item--select" data-key="all" hidefocus="">热门</a>
					<a href="javascript:;" class="singer_tag__item" data-key="A" hidefocus="">A</a>
					<a href="javascript:;" class="singer_tag__item" data-key="B" hidefocus="">B</a>
					<a href="javascript:;" class="singer_tag__item" data-key="C" hidefocus="">C</a>
					<a href="javascript:;" class="singer_tag__item" data-key="D" hidefocus="">D</a>
					<a href="javascript:;" class="singer_tag__item " data-key="E" hidefocus="">E</a>
					<a href="javascript:;" class="singer_tag__item" data-key="F" hidefocus="">F</a>
					<a href="javascript:;" class="singer_tag__item" data-key="G" hidefocus="">G</a>
					<a href="javascript:;" class="singer_tag__item" data-key="H" hidefocus="">H</a>
					<a href="javascript:;" class="singer_tag__item" data-key="I" hidefocus="">I</a>
					<a href="javascript:;" class="singer_tag__item" data-key="J" hidefocus="">J</a>
					<a href="javascript:;" class="singer_tag__item" data-key="K" hidefocus="">K</a>
					<a href="javascript:;" class="singer_tag__item" data-key="L" hidefocus="">L</a>
					<a href="javascript:;" class="singer_tag__item" data-key="M" hidefocus="">M</a>
					<a href="javascript:;" class="singer_tag__item" data-key="N" hidefocus="">N</a>
					<a href="javascript:;" class="singer_tag__item" data-key="O" hidefocus="">O</a>
					<a href="javascript:;" class="singer_tag__item" data-key="P" hidefocus="">P</a>
					<a href="javascript:;" class="singer_tag__item" data-key="Q" hidefocus="">Q</a>
					<a href="javascript:;" class="singer_tag__item" data-key="R" hidefocus="">R</a>
					<a href="javascript:;" class="singer_tag__item" data-key="S" hidefocus="">S</a>
					<a href="javascript:;" class="singer_tag__item" data-key="T" hidefocus="">T</a>
					<a href="javascript:;" class="singer_tag__item" data-key="U" hidefocus="">U</a>
					<a href="javascript:;" class="singer_tag__item" data-key="V" hidefocus="">V</a>
					<a href="javascript:;" class="singer_tag__item" data-key="W" hidefocus="">W</a>
					<a href="javascript:;" class="singer_tag__item" data-key="X" hidefocus="">X</a>
					<a href="javascript:;" class="singer_tag__item" data-key="Y" hidefocus="">Y</a>
					<a href="javascript:;" class="singer_tag__item" data-key="Z" hidefocus="">Z</a>
					<a href="javascript:;" class="singer_tag__item" data-key="9" hidefocus="">#</a>
				</div>
			</div>
			<div id="mod-singerlist">

				<div class="mod_singer_list">
					<ul class="singer_list__list js_avtar_list">

<!-- 					这里要遍历10个歌手,分页显示的 -->
						<c:forEach items="${sessionScope.singerPage }" var="s">
							<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href="singerAction!initSingerDetails.action?singer.singerName=${s.singerName }" class="singer_list__cover js_singer" hidefocus="true" data-stat="y_new.singerlist.singerpic" data-singermid="002J4UUk29y8BY" data-singerid="5062" title="${s.singerName }">
									<img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=2592000';this.onerror=null;" src="${s.singerIconSrc }" alt="${s.singerName }">
								</a>
								<h3 class="singer_list__title"><a href="singerAction!initSingerDetails.action?singer.singerName=${s.singerName }" data-singermid="002J4UUk29y8BY" data-id="5062" class="js_singer" data-stat="y_new.singerlist.singername" title="${s.singerName }">${s.singerName }</a></h3>
							</div>
						</li>
						</c:forEach>
					

						

					</ul>
				</div>

				<ul class="singer_list_txt">

					<!-- 			这里要遍历所有歌手 -->
					<c:forEach items="${allSingers }" var="s">
						<li class="singer_list_txt__item">
						<a href="singerAction!initSingerDetails.action?singer.singerName=${s.singerName }" class="singer_list_txt__link js_singer" data-stat="y_new.singerlist.singername" data-singermid="001fNHEf1SFEFN" data-singerid="13948" title="${s.singerName }">${s.singerName }</a>
					</li>
					
					</c:forEach>
				</ul>

				<div class="mod_page_nav js_pager">
					<a href="singerAction!previousPage.action" class="previous js_pageindex"  title="上一页" hidefocus=""><span>&lt;</span></a>
					<a href="singerAction!showSingerByPage.action?currentPage=1" class="js_pageindex"  hidefocus="">1</a>
					<a href="singerAction!showSingerByPage.action?currentPage=2" class="js_pageindex" name="hah" hidefocus="">2</a>
					<a href="singerAction!showSingerByPage.action?currentPage=3" class="js_pageindex"  hidefocus="">3</a>
<!-- 					<strong class="more">...</strong> -->
					<a href="singerAction!showSingerByPage.action?currentPage=${totalPage}" class="js_pageindex"  hidefocus="">${totalPage}</a>
					<a href="singerAction!nextPage.action" class="next js_pageindex"  title="下一页" hidefocus=""><span>&gt;</span></a>
				</div>

			</div>

		</div>
		<!-- footer -->
		<footer class="footer">
			<div class="footer-inner">
				<div class="footer-info">
					<div class="footer-info__download">
						<h3>下载KK音乐客户端</h3>
						<ul class="list">
							<li>
								<a href="#">
									<i class="footer-icon icon-pc"></i> PC版
								</a>
							</li>
							<li>
								<a href="#">
									<i class="footer-icon icon-mac"></i> Mac版
								</a>
							</li>
							<li>
								<a href="#">
									<i class="footer-icon icon-android"></i> Android版
								</a>
							</li>
							<li>
								<a href="#">
									<i class="footer-icon icon-iphone"></i> iPhone版
								</a>
							</li>
						</ul>
					</div>
					<div class="footer-info__product">
						<h3>特色产品</h3>
						<ul class="list">
							<li class="hasPic">
								<a href="#">
									<i class="footer-icon icon-kg"></i> 全民K歌
								</a>
							</li>
							<li class="hasPic">
								<a href="#">
									<i class="footer-icon icon-ss"></i> 全民K歌
								</a>
							</li>
							<li class="hasPic">
								<a href="#">
									<i class="footer-icon icon-qp"></i> 全民K歌
								</a>
							</li>
							<li>
								<a href="#">KK音乐原创音乐平台</a>
							</li>
							<li>
								<a href="#">上传视频</a>
							</li>
							<li>
								<a href="#">上传视频</a>
							</li>
							<li>
								<a href="#">上传视频</a>
							</li>
						</ul>
					</div>
					<div class="footer-info__link">
						<h3>特色产品</h3>
						<ul class="list">
							<li>
								<a href="#">CJ E&M</a>
							</li>
							<li>
								<a href="#">我们视频</a>
							</li>
							<li>
								<a href="#">手机KK空间</a>
							</li>
							<li>
								<a href="#">CJ E&M</a>
							</li>
							<li>
								<a href="#">我们视频</a>
							</li>
							<li>
								<a href="#">手机KK空间</a>
							</li>
							<li>
								<a href="#">CJ E&M</a>
							</li>
							<li>
								<a href="#">我们视频</a>
							</li>
							<li>
								<a href="#">手机KK空间</a>
							</li>
							<li>
								<a href="#">CJ E&M</a>
							</li>
							<li>
								<a href="#">我们视频</a>
							</li>
							<li>
								<a href="#">手机KK空间</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="footer-copyright">
					<p>
						<a href="#">关于我们</a><span>|</span>
						<a href="#">关于我们</a><span>|</span>
						<a href="#">关于我们</a><span>|</span>
						<a href="#">关于我们</a><span>|</span>
						<a href="#">关于我们</a><span>|</span>
						<a href="#">关于我们</a><span>|</span>
						<a href="#">关于我们</a><span>|</span>
						<a href="#">关于我们</a>
					</p>
					<p>Copyright © 1998 - 2017 kk. All Rights Reserved.</p>
					<p>我们公司 版权所有 我们网络文化经营许可证</p>
				</div>
			</div>
		</footer>

		<!-- 分享到 -->
		<ul class="slider-share">
			<li>
				<a href="#">
					<i class="icon-sprite icon-add"></i> 添加到
					<i class="icon-sprite icon-arrow"></i>
				</a>
			</li>
			<li>
				<a href="#">
					<i class="icon-sprite icon-share"></i> 分享
					<i class="icon-sprite icon-arrow"></i>
				</a>
			</li>
			<li>
				<a href="#">
					<i class="icon-sprite icon-download"></i> 下载
				</a>
			</li>
		</ul>


	</body>

</html>

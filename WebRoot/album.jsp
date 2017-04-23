<%@page import="com.mysql.fabric.xmlrpc.base.Data"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html lang="zh-cn">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta name="keywords" content="音乐,QQ音乐,在线听歌,音乐下载,音乐播放器,音乐网站,MV,巅峰榜,音乐排行榜,翻译歌曲,热门歌曲,经典老歌">
		<meta name="description" content="QQ音乐是腾讯公司推出的一款免费音乐服务，海量音乐在线试听、最流行音乐在线首发、歌词翻译、手机铃声下载、高品质音乐试听、正版音乐下载、免费空间背景音乐设置、MV观看等，是互联网音乐播放和下载的首选">
		<meta name="mobile-agent" content="format==[html5];url=http://m.y.qq.com">
		<meta name="applicable-device" content="pc">
		<title>QQ音乐 - 专辑库</title>
		<c:if test="${empty applicationScope.allAlbumList }">
		<c:redirect url="albumAction!InitAlbum.action"></c:redirect>
		</c:if>
		
		
		<link rel="canonical" href="//y.qq.com/portal/album_lib.html">
		<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript">
			var _speedMark = new Date();
			function playSong(){
				var dvdId=arguments[0];
				var dvdIconSrc=arguments[1];
				$.ajax({
					type:"post",
					url:"albumAction!ajaxPlayAlbum.action",
					async:true,
					data:{
					"dvd.dvdId": dvdId,
					"dvd.dvdIconSrc": dvdIconSrc
					},
					dataType:"json",
					success:function(data){
					top.changeSong(data);
					}
				});
			}
		</script>
		<script id="requirenode" async="" src="js/album.js"></script>

		<link rel="stylesheet" href="//y.gtimg.cn/mediastyle/yqq/layout0110.css?max_age=25920000&amp;v=20160803">
		<link rel="stylesheet" href="//y.gtimg.cn/mediastyle/yqq/album.css?max_age=2592000&amp;v=20160831">
		<style type="text/css">
			.emojicon-m {
				min-height: 1em !important;
				min-width: 1em !important;
				max-height: 1em !important;
				max-width: 1em !important;
				vertical-align: middle !important;
				float: none !important;
				background-repeat: no-repeat;
				background-position: center center;
				background-size: contain;
				display: inline-block;
			}
		</style>
		<style id="style-1-cropbar-clipper">
			/* Copyright 2014 Evernote Corporation. All rights reserved. */
			
			.en-markup-crop-options {
				top: 18px !important;
				left: 50% !important;
				margin-left: -100px !important;
				width: 200px !important;
				border: 2px rgba(255, 255, 255, .38) solid !important;
				border-radius: 4px !important;
			}
			
			.en-markup-crop-options div div:first-of-type {
				margin-left: 0px !important;
			}
		</style>
		
		
		
	</head>

	<body class="page_album_all os_mac">
		<!-- 头部 S -->

		<div class="mod_header">
			<div class="section_inner">
				<h1 class="qqmusic_title"><a href="//y.qq.com"><img srcset="//y.gtimg.cn/mediastyle/yqq/img/logo@2x.png 2x" src="//y.gtimg.cn/mediastyle/yqq/img/logo.png" alt="QQ音乐" class="qqmusic_logo"></a></h1>
				<!-- 导航 S -->
				<ul class="mod_top_nav" role="nav">
					<li class="top_nav__item top_nav__item--room">
						<a href="show.jsp" class="top_nav__link top_nav__link--current" title="音乐馆">音乐馆<i class="top_nav__txt"></i></a>
					</li>
					<li class="top_nav__item top_nav__item--mine">
						<a href="usercenter.jsp" class="top_nav__link" title="我的音乐">我的音乐<i class="top_nav__txt"></i></a>
					</li>
					<li class="top_nav__item top_nav__item--down">
						<a href="//y.qq.com/download/index.html" class="top_nav__link" title="下载客户端" target="_blank">下载客户端<i class="top_nav__txt"></i></a>
					</li>
					<li class="top_nav__item top_nav__item--vip">
						<a href="//y.qq.com/vipportal/" class="top_nav__link" title="VIP" target="_blank">VIP<i class="top_nav__txt"></i></a>
					</li>
				</ul>
				<ul class="mod_top_subnav" style="">
					<li class="top_subnav__item">
						<a href="show.jsp" class="top_subnav__link">首页</a>
					</li>
					<li class="top_subnav__item">
						<a href="singer.jsp" class="top_subnav__link">歌手</a>
					</li>
					<li class="top_subnav__item">
						<a href="album.jsp" class="top_subnav__link top_subnav__link--current">专辑</a>
					</li>
					<li class="top_subnav__item">
						<a href="topList.jsp" class="top_subnav__link">排行榜</a>
					</li>
					<li class="top_subnav__item">
						<a href="playList.jsp" class="top_subnav__link">分类歌单</a>
					</li>
					<li class="top_subnav__item">
						<a href="/portal/mv_lib.html#t6=2" class="top_subnav__link">MV</a>
					</li>
				</ul>
				<!-- 导航 E -->
				<div class="mod_top_search" role="search">
					<div class="mod_search_input">
						<input class="search_input__input" placeholder="歌手" accesskey="s" type="text">
						<button class="search_input__btn"><i class="icon_search"></i><span class="icon_txt">搜索</span></button>
					</div>
					<div class="js_smartbox">
						<div class="mod_search_other" style="">
							<div class="search_hot">
								<dl class="search_hot__list" aria-labelledy="search_hot__tit">
									<dt class="search_hot__tit">热门搜索</dt>
									<dd>

										<a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="刚好遇见你">
											<span class="search_hot__number">1</span>
											<span class="search_hot__name">刚好遇见你</span>
											<span class="search_hot__listen">8.6万</span>
										</a>

										<a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="我要你">
											<span class="search_hot__number">2</span>
											<span class="search_hot__name">我要你</span>
											<span class="search_hot__listen">8.3万</span>
										</a>

										<a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="逃">
											<span class="search_hot__number">3</span>
											<span class="search_hot__name">逃</span>
											<span class="search_hot__listen">7.7万</span>
										</a>

										<a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="DJ">
											<span class="search_hot__number">4</span>
											<span class="search_hot__name">DJ</span>
											<span class="search_hot__listen">6.8万</span>
										</a>

										<a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="高尚">
											<span class="search_hot__number">5</span>
											<span class="search_hot__name">高尚</span>
											<span class="search_hot__listen">5.9万</span>
										</a>

									</dd>

								</dl>
							</div>

							<div class="search_history">
								<dl class="search_history__list">
									<dt class="search_history__tit">搜索历史<a href="javascript:;" class="search_history__clear js_smartbox_delete_all"><i class="icon_history_clear"></i><span class="icon_txt">清空</span></a></dt>

									<dd class="search_history__item">
										<a href="javascript:;" class="search_history__link js_smartbox_search js_left" data-name="你就不要想起我">你就不要想起我</a>
										<a href="javascript:;" class="search_history__delete js_smartbox_delete" data-name="你就不要想起我" title="删除"><i class="search_history__icon_delete"></i><span class="icon_txt">删除</span></a>
									</dd>

								</dl>
							</div>
						</div>
					</div>
				</div>
				<div class="header__opt">

				
				</div>
			</div>
		</div>
		<!-- 头部 E -->

		<div class="mod_loading" id="before_page" style="display: none;"><i class="icon_txt">加载中</i></div>
		<div class="main" style="">
			<!-- 标签筛选 -->
			<div class="mod_tag" id="tag_list">

				<div class="tag__list">
					<h3 class="tag__tit">语种</h3>

					<a href="javascript:;" class="tag__item tag__item--select" data-id="language|-1">全部</a>

					<a href="javascript:;" class="tag__item" data-id="language|0">国语</a>

					<a href="javascript:;" class="tag__item" data-id="language|1">粤语</a>

					<a href="javascript:;" class="tag__item" data-id="language|5">英语</a>

					<a href="javascript:;" class="tag__item" data-id="language|4">韩语</a>

					<a href="javascript:;" class="tag__item" data-id="language|3">日语</a>

					<a href="javascript:;" class="tag__item" data-id="language|6">法语</a>

					<a href="javascript:;" class="tag__item" data-id="language|16">西班牙语</a>

				</div>

				<div class="tag__list">
					<h3 class="tag__tit">流派</h3>

					<a href="javascript:;" class="tag__item tag__item--select" data-id="genre|0">全部</a>

					<a href="javascript:;" class="tag__item" data-id="genre|1">流行</a>

					<a href="javascript:;" class="tag__item" data-id="genre|2">古典</a>

					<a href="javascript:;" class="tag__item" data-id="genre|3">爵士</a>

					<a href="javascript:;" class="tag__item" data-id="genre|36">摇滚</a>

					<a href="javascript:;" class="tag__item" data-id="genre|22">电子</a>

					<a href="javascript:;" class="tag__item" data-id="genre|27">拉丁</a>

					<a href="javascript:;" class="tag__item" data-id="genre|21">轻音乐</a>

					<a href="javascript:;" class="tag__item" data-id="genre|39">世界音乐</a>

					<a href="javascript:;" class="tag__item" data-id="genre|34">嘻哈</a>

					<a href="javascript:;" class="tag__item" data-id="genre|37">原声</a>

					<a href="javascript:;" class="tag__item" data-id="genre|19">乡村</a>

					<a href="javascript:;" class="tag__item" data-id="genre|20">舞曲</a>

					<a href="javascript:;" class="tag__item" data-id="genre|33">R&amp;B</a>

					<a href="javascript:;" class="tag__item" data-id="genre|23">民谣</a>

					<a href="javascript:;" class="tag__item" data-id="genre|28">金属</a>

				</div>

				<div class="tag__list">
					<h3 class="tag__tit">价格</h3>

					<a href="javascript:;" class="tag__item tag__item--select" data-id="pay|0">全部</a>

					<a href="javascript:;" class="tag__item" data-id="pay|1">免费</a>

					<a href="javascript:;" class="tag__item" data-id="pay|2">付费</a>

				</div>

				<div class="tag__list">
					<h3 class="tag__tit">筛选</h3>

					<a href="javascript:;" class="tag__item js_sub_tab" data-title="类别" data-key="type" data-gid="3">类别<i class="tag__arrow sprite"></i></a>

					<a href="javascript:;" class="tag__item js_sub_tab" data-title="年代" data-key="year" data-gid="4">年代<i class="tag__arrow sprite"></i></a>

					<a href="javascript:;" class="tag__item js_sub_tab" data-title="唱片公司" data-key="company" data-gid="6">唱片公司<i class="tag__arrow sprite"></i></a>

				</div>

				<div class="popup_tag" style="display:none;" data-gid="3">
					<div class="tag__list">

						<a href="javascript:;" class="tag__item tag__item--select" data-id="type|-1">全部</a>

						<a href="javascript:;" class="tag__item" data-id="type|0">专辑</a>

						<a href="javascript:;" class="tag__item" data-id="type|11">EP</a>

						<a href="javascript:;" class="tag__item" data-id="type|10">Single</a>

						<a href="javascript:;" class="tag__item" data-id="type|1">演唱会</a>

						<a href="javascript:;" class="tag__item" data-id="type|3">动漫</a>

						<a href="javascript:;" class="tag__item" data-id="type|4">游戏</a>

					</div>
				</div>

				<div class="popup_tag" style="display:none;" data-gid="4">
					<div class="tag__list">

						<a href="javascript:;" class="tag__item tag__item--select" data-id="year|1">全部</a>

						<a href="javascript:;" class="tag__item" data-id="year|7">2016</a>

						<a href="javascript:;" class="tag__item" data-id="year|8">2015</a>

						<a href="javascript:;" class="tag__item" data-id="year|9">2014</a>

						<a href="javascript:;" class="tag__item" data-id="year|2">一零年代</a>

						<a href="javascript:;" class="tag__item" data-id="year|3">零零年代</a>

						<a href="javascript:;" class="tag__item" data-id="year|4">九十年代</a>

						<a href="javascript:;" class="tag__item" data-id="year|5">八十年代</a>

						<a href="javascript:;" class="tag__item" data-id="year|6">七十年代</a>

						<a href="javascript:;" class="tag__item" data-id="year|13">六十年代</a>

					</div>
				</div>

				<div class="popup_tag" style="display:none;" data-gid="6">
					<div class="tag__list">

						<a href="javascript:;" class="tag__item tag__item--select" data-id="company|-1">全部</a>

						<a href="javascript:;" class="tag__item" data-id="company|3">华纳唱片</a>

						<a href="javascript:;" class="tag__item" data-id="company|5">索尼音乐</a>

						<a href="javascript:;" class="tag__item" data-id="company|35">环球唱片</a>

						<a href="javascript:;" class="tag__item" data-id="company|2317">杰威尔音乐</a>

						<a href="javascript:;" class="tag__item" data-id="company|8482">麦爱音乐</a>

						<a href="javascript:;" class="tag__item" data-id="company|8416">三胜文化</a>

						<a href="javascript:;" class="tag__item" data-id="company|2">英皇唱片</a>

						<a href="javascript:;" class="tag__item" data-id="company|10">福茂唱片</a>

						<a href="javascript:;" class="tag__item" data-id="company|373">金牌大风</a>

						<a href="javascript:;" class="tag__item" data-id="company|1021">YG</a>

						<a href="javascript:;" class="tag__item" data-id="company|1360">少城时代</a>

						<a href="javascript:;" class="tag__item" data-id="company|20">华谊兄弟</a>

						<a href="javascript:;" class="tag__item" data-id="company|9628">华纳PLG</a>

						<a href="javascript:;" class="tag__item" data-id="company|6958">Cube</a>

						<a href="javascript:;" class="tag__item" data-id="company|1390">Loen</a>

						<a href="javascript:;" class="tag__item" data-id="company|1065">当然娱乐</a>

						<a href="javascript:;" class="tag__item" data-id="company|7913">梦响强音</a>

						<a href="javascript:;" class="tag__item" data-id="company|1020">乐华圆娱</a>

						<a href="javascript:;" class="tag__item" data-id="company|2597">梦响当然</a>

						<a href="javascript:;" class="tag__item" data-id="company|2067">林暐哲音乐</a>

						<a href="javascript:;" class="tag__item" data-id="company|740">和平之月</a>

					</div>
				</div>

			</div>

			<div class="mod_part_detail">
				<div class="part_detail__hd">
					<h2 class="part_detail__tit">全部专辑</h2>
					<div class="part_switch js_sort" aria-label="排列方式">
						<a href="javascript:;" class="part_switch__item part_switch__item--left part_switch__item--select" data-sort="1">最新</a>
						<a href="javascript:;" class="part_switch__item part_switch__item--right" title="最新" data-sort="2">最热</a>
					</div>
				</div>
				<div class="mod_playlist mod_playlist--all">
					<ul class="playlist__list" id="album_list">
						
<!-- 						这里需要遍历专辑 -->
					<c:forEach items="${applicationScope.allAlbumList }" var="d" varStatus="status">
											<li class="playlist__item" data-albummid="003dV5z301kjsI" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
							<div class="playlist__item_box">
								<div class="playlist__cover mod_cover" style="visibility: visible;">
									<a onclick="javascript:playSong('${d.dvdId}','${d.dvdIconSrc}');return false;" href="#" class="js_album" data-stat="y_new.album_lib.album_pic" data-albummid="003dV5z301kjsI"><img src="${d.dvdIconSrc}" data-original="//y.gtimg.cn/music/photo_new/T002R300x300M000003dV5z301kjsI.jpg?max_age=2592000" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" alt="新生" class="playlist__pic" style="display: block; visibility: visible;"><i class="mod_cover__icon_play js_play" data-stat="y_new.album_lib.album_play"></i></a>
								</div>
								<h4 class="playlist__title"><span class="playlist__title_txt"><a href="albumAction!goIntoAlbumDetails.action?dvd.dvdName=${d.dvdName }" class="js_album" data-stat="y_new.album_lib.album_name" data-albummid="003dV5z301kjsI" title="${d.dvdName}">${d.dvdName}</a></span></h4>
								<div class="playlist__author">

									<a href="singerAction!initSingerDetails.action?singer.singerName=${d.singer.singerName }" class="js_singer" data-singermid="003gGlyh37bnFM">${d.singer.singerName}</a>

								</div>
								<div class="playlist__other">
								<% 
								Random random=new Random();
								int yy=random.nextInt(7)+2010;
								int mm=random.nextInt(11)+1;
								int dd=random.nextInt(29)+1;
								out.print(yy+"-"+mm+"-"+dd);
								%>
								</div>
								<a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="003dV5z301kjsI" data-stat="y_new.album_lib.more"><span class="icon_txt">更多</span></a>
							</div>
						</li>
					</c:forEach>



						
					</ul>
				</div>

				<div class="mod_page_nav js_pager"><strong class="current">1</strong>
					<a href="javascript:;" class="js_pageindex" data-index="2" hidefocus="">2</a>
					<a href="javascript:;" class="js_pageindex" data-index="3" hidefocus="">3</a>
					<a href="javascript:;" class="js_pageindex" data-index="4" hidefocus="">4</a><strong class="more">...</strong>
					<a href="javascript:;" class="js_pageindex" data-index="43351" hidefocus="">43351</a>
					<a href="javascript:;" class="next js_pageindex" data-index="2" title="下一页" hidefocus=""><span>&gt;</span></a>
				</div>
			</div>

		</div>

		<div class="footer" role="footer">
			<div class="section_inner">
				<div class="footer_info">

					<div class="footer_download">
						<h3 class="footer_tit">下载QQ音乐客户端</h3>
						<ul class="footer_download_list">
							<li class="footer_download_list__item">
								<a href="//y.qq.com/download/" class="js_footer_down" data-type="pc" data-stat="y_new.footer.download.pc"><i class="icon_qm_pc"><span class="icon_txt">QQ音乐</span></i>PC版</a>
							</li>
							<li class="footer_download_list__item">
								<a href="//y.qq.com/download/" class="js_footer_down" data-type="mac" data-stat="y_new.footer.download.mac"><i class="icon_qm_mac"><span class="icon_txt">QQ音乐</span></i>Mac版</a>
							</li>
							<li class="footer_download_list__item">
								<a href="//y.qq.com/download/" class="js_footer_down" data-type="andriod" data-stat="y_new.footer.download.andriod"><i class="icon_qm_android"><span class="icon_txt">QQ音乐</span></i>Android版</a>
							</li>
							<li class="footer_download_list__item">
								<a href="//y.qq.com/download/" class="js_footer_down" data-type="iphone" data-stat="y_new.footer.download.iphone"><i class="icon_qm_iphone"><span class="icon_txt">QQ音乐</span></i>iPhone版</a>
							</li>
						</ul>
					</div>

					<div class="footer_product">
						<h3 class="footer_tit">特色产品</h3>
						<ul class="footer_product_list">
							<li class="footer_product_list__item footer_product_list__item--pic">
								<a href="http://kg.qq.com/?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.k"><i class="icon_qm_kg"></i>全民K歌</a>
							</li>
							<li class="footer_product_list__item footer_product_list__item--pic">
								<a href="http://y.qq.com/vip/voice_intro/index.html" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.supersound"><i class="icon_qm_ss"></i>Super Sound</a>
							</li>
							<li class="footer_product_list__item footer_product_list__item--pic">
								<a href="http://y.qq.com/y/static/down/qplay.html?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.qplay"><i class="icon_qm_qp"></i>QPlay</a>
							</li>
							<li class="footer_product_list__item">
								<a href="http://y.qq.com/cp/homepage.html#/home?from=yqq" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.cp">QQ音乐原创音乐平台</a>
							</li>
							<li class="footer_product_list__item">
								<a href="//y.qq.com/portal/mv/mv_upload.html" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.ugc">上传视频</a>
							</li>
							<li class="footer_product_list__item">
								<a href="http://y.qq.com/y/static/down/car_introduce.html" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.car_play">车载互联</a>
							</li>
							<li class="footer_product_list__item">
								<a href="http://y.qq.com/yanchu/?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.yanchu">QQ演出</a>
							</li>
						</ul>
					</div>

					<div class="footer_link">
						<h3 class="footer_tit">合作链接</h3>
						<!-- 显示全部 footer_link_list--show -->
						<ul class="footer_link_list">
							<li class="footer_link_list__item">
								<a href="//y.qq.com/portal/company_detail.html?id=297" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">CJ E&amp;M</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://v.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯视频</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://z.qzone.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">手机QQ空间</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://im.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">最新版QQ</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://e.qq.com/index.shtml" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯社交广告</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://guanjia.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">电脑管家</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://browser.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">QQ浏览器</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://huabao.qzone.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">画报</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://act.qzone.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">黄钻活动</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://xing.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">星钻</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://www.weiyun.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯微云</a>
							</li>
							<li class="footer_link_list__item js_last" style="display:none;">
								<a href="http://fm.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">企鹅FM</a>
							</li>
							<li class="footer_link_list__item">
								<a href="javascript:;" class="js_footer_more">更多</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="https://www.qcloud.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="http://buluo.qq.com/ " target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">兴趣部落</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="https://ke.qq.com/?from=100 " target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯课堂</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="http://yunsou.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云搜</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="http://bbs.qcloud.com/ " target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云论坛</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="http://www.znds.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">智能电视网</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="http://www.dangbei.com/ " target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">当贝市场</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="footer_copyright">

					<p>
						<a href="http://www.tencent.com/" rel="nofollow" target="_blank" title="关于腾讯">关于腾讯</a> |
						<a href="http://www.tencent.com/index_e.shtml" rel="nofollow" target="_blank" title="About Tencent">About Tencent</a> |
						<a href="http://www.qq.com/contract.shtml" rel="nofollow" target="_blank" title="服务条款">服务条款</a> |
						<a href="http://y.qq.com/y/static/tips/service_tips.html" rel="nofollow" target="_blank" title="用户服务协议">用户服务协议</a> |
						<a href="http://www.qq.com/privacy.htm" rel="nofollow" target="_blank" title="隐私政策">隐私政策</a> |
						<a href="http://www.tencentmind.com/" rel="nofollow" target="_blank" title="广告服务">广告服务</a> |
						<a href="http://hr.tencent.com/" rel="nofollow" target="_blank" title="腾讯招聘">腾讯招聘</a> |
						<a href="http://service.qq.com/" rel="nofollow" target="_blank" title="客服中心">客服中心</a> |
						<a href="http://www.qq.com/map/" rel="nofollow" target="_blank" title="网站导航">网站导航</a>
					</p>

					<p>Copyright &copy; 1998 -
						<script type="text/javascript">
							document.write(new Date().getFullYear());
						</script>2017 Tencent.
						<a target="_blank" href="http://www.tencent.com/en-us/le/copyrightstatement.shtml" rel="nofollow" title="All Rights Reserved.">All Rights Reserved.</a>
					</p>
					<p>腾讯公司
						<a target="_blank" href="http://www.tencent.com/zh-cn/le/copyrightstatement.shtml" rel="nofollow" title="版权所有">版权所有</a>
						<a target="_blank" href="http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm" rel="nofollow" title="腾讯网络文化经营许可证">腾讯网络文化经营许可证</a>
					</p>
				</div>
			</div>
		</div>


		<a href="javascript:;" class="btn_bottom_top sprite js_btn_top" style="display: block;"><span class="icon_txt">返回顶部</span></a>
		<a href="javascript:;" class="btn_bottom_feedback sprite js_btn_feedback"><span class="icon_txt">意见反馈</span></a>
		<a href="javascript:;" class="btn_bottom_player js_openplayer"><span class="icon_txt">播放器</span></a>
		<div id="divdialog_0"></div><embed type="application/tecent-qqmusichelper-plugin" id="QQMusicHelper" height="30" width="40"></body>

</html>

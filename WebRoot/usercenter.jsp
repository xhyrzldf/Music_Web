<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-cn">

	<head>
		<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta name="keywords" content="音乐,QQ音乐,在线听歌,音乐下载,音乐播放器,音乐网站,MV,巅峰榜,音乐排行榜,翻译歌曲,热门歌曲,经典老歌">
		<meta name="description" content="QQ音乐是腾讯公司推出的一款免费音乐服务，海量音乐在线试听、最流行音乐在线首发、歌词翻译、手机铃声下载、高品质音乐试听、正版音乐下载、免费空间背景音乐设置、MV观看等，是互联网音乐播放和下载的首选">
		<meta name="mobile-agent" content="format==[html5];url=//m.y.qq.com">
		<meta name="applicable-device" content="pc">
		<title>我的音乐</title>
		<c:if test="${empty user }">
		<c:redirect url="notlogin.jsp"></c:redirect>
		</c:if>
		
		<c:if test="${empty userCenterLikeSongs }">
		<c:redirect url="songListAction!initUserCenter.action"></c:redirect>
		</c:if>
		<link rel="canonical" href="https://y.qq.com/portal/profile.html">
		<link rel="stylesheet" href="css/logined/layout0110.css">
		<link rel="stylesheet" href="css/logined/profile.css">
		<link media="all" href="img/index.css" type="text/css" rel="stylesheet">
		<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
		<!-- 最新的 Jquery 文件 -->

		<script>

			function showList(e) {
				event = e || window.event;
				//					alert(event);
				var positionX = event.pageX;
				var positionY = event.pageY;
				var myOffset = new Object();
				myOffset.left = positionX;
				myOffset.top = positionY;
				$("#fav_pop").offset(myOffset);
				$("#fav_pop").css("display", "block");
			}

			$(document).bind('click', function(e) {
				var e = e || window.event; //浏览器兼容性 
				var elem = e.target || e.srcElement;

				while(elem) { //循环判断至跟节点，防止点击的是div子元素 
					if(elem.className && elem.className == 'list_menu__icon_add') {
						$("#fav_pop").css("display", "block");
						return;
					}
					elem = elem.parentNode;
				}
				$('#fav_pop').css('display', 'none'); //点击的不是div或其子元素 
			});

			function createBox() {
				$("#like_box").css("display", "none");
				$("#like_tab").prop("class", "mod_tab__item")
				$("#focus_box").css("display", "none");
				$("#focus_tab").prop("class", "mod_tab__item")
				$("#create_box").css("display", "block");
				$("#create_tab").prop("class", "mod_tab__item mod_tab__current");
			}

			function likeBox() {
				$("#like_box").css("display", "block");
				$("#like_tab").prop("class", "mod_tab__item mod_tab__current")
				$("#focus_box").css("display", "none");
				$("#focus_tab").prop("class", "mod_tab__item")
				$("#create_box").css("display", "none");
				$("#create_tab").prop("class", "mod_tab__item");
			}

			function focusBox() {
				$("#like_box").css("display", "none");
				$("#like_tab").prop("class", "mod_tab__item")
				$("#focus_box").css("display", "block");
				$("#focus_tab").prop("class", "mod_tab__item mod_tab__current")
				$("#create_box").css("display", "none");
				$("#create_tab").prop("class", "mod_tab__item");
			}
			
			function showPic() {
				$("#picList").prop("class","style_switch__item style_switch__item--select");
				$("#textList").prop("class","style_switch__item");
				$(".mod_playlist_text").css("display","none");
				$(".mod_playlist").css("display","block");
			}
			
			function showText() {
				$("#picList").prop("class","style_switch__item");
				$("#textList").prop("class","style_switch__item style_switch__item--select");
				$(".mod_playlist_text").css("display","block");
				$(".mod_playlist").css("display","none");
			}

			function cancelCreateList() {
				$(".mod_popup_mask").css("display", "none");
				$("#divdialog_0").remove();
			}

			function confirmCreateList() {
				$(".mod_popup_mask").css("display", "none");
				$("#divdialog_0").remove();
			}

			function createList() {
				$(".mod_popup_mask").css("display", "block");
				$("body").append("<div id='divdialog_0' class='mod_popup popup_new_list' data-aria='popup' style='position: fixed; z-index: 1000; top: 347.5px; margin: 10px; height: auto; left: 700px;'><div class='popup__hd'><h2 class='popup__tit'>创建新歌单</h2><a href='javascript:;' class='popup__close' title='关闭'><i class='popup__icon_close sprite'></i><i class='icon_txt'>关闭</i></a></div><div class='popup__bd ' id='dialogbox'><label class='form__label'>歌单名</label> <div class='mod_form_txt'> <input type='text' value='' class='form_txt__input' id='new_playlist'><span class='form_txt__tips' id='name_leftnum'>20</span></div></div><div class='popup__ft'><button style='display:;' class='mod_btn upload_btns__item js-button1' onclick='cancelCreateList()'>取消</button><button style='display:;' class='mod_btn_green upload_btns__item js-button2' onclick='confirmCreateList()'>确定</button>");
			}
			
			function playListSong(){
				var songListName=arguments[0];
				var songListIconSrc=arguments[1];
				$.ajax({
					type:"post",
					url:"songListAction!ajaxPlaySongList.action",
					async:true,
					data:{
					"songlist.songListName": songListName,
					"songlist.songListIconSrc": songListIconSrc
					},
					dataType:"json",
					success:function(data){
					top.changeSong(data);
					}
				});
			}
			
			  /*ajax播放单曲 onclick="javascript:playSingleSong('${s.songName}');return false;" href="#"*/
			function playSingleSong(){
				var songName=arguments[0];
				$.ajax({
					type:"post",
					url:"songAction!ajaxSongDetails.action",
					async:true,
					data:{
					"song.songName": songName
					},
					dataType:"json",
					success:function(data){
					top.changeSong(data);
					}
				});
			}
		</script>
	</head>

	<body class="os_mac">

		<!-- 头部 S -->

		<div class="mod_header">
			<div class="section_inner">
				<h1 class="qqmusic_title"><a href="https://y.qq.com/"><img srcset="//y.gtimg.cn/mediastyle/yqq/img/logo@2x.png 2x" src="logo.png" alt="QQ音乐" class="qqmusic_logo"></a></h1>
				<!-- 导航 S -->
				<!-- 
            当前态 & hover 用 top_nav__link--current
            参考Im.qq.com的交互 
        -->
				<ul class="mod_top_nav" role="nav">
					<li class="top_nav__item top_nav__item--room">
						<a href="show.jsp" class="top_nav__link" title="音乐馆">音乐馆<i class="top_nav__txt"></i></a>
					</li>
					<li class="top_nav__item top_nav__item--mine">
						<a href="usercenter.jsp" class="top_nav__link top_nav__link--current" title="我的音乐">我的音乐<i class="top_nav__txt"></i></a>
					</li>
					<li class="top_nav__item top_nav__item--down">
						<a href="https://y.qq.com/download/index.html" class="top_nav__link" title="下载客户端" target="_top">下载客户端<i class="top_nav__txt"></i></a>
					</li>
					<li class="top_nav__item top_nav__item--vip">
						<a href="https://y.qq.com/vipportal/" class="top_nav__link" title="VIP" target="_top">VIP<i class="top_nav__txt"></i></a>
					</li>

				</ul>
				<ul class="mod_top_subnav" style="display: none;">
					<li class="top_subnav__item">
						<a href="show.jsp" class="top_subnav__link">首页</a>
					</li>
					<li class="top_subnav__item">
						<a href="singer.jsp" class="top_subnav__link">歌手</a>
					</li>
					<li class="top_subnav__item">
						<a href="album.jsp" class="top_subnav__link">专辑</a>
					</li>
					<li class="top_subnav__item">
						<a href="topList.jsp" class="top_subnav__link">排行榜</a>
					</li>
					<li class="top_subnav__item">
						<a href="playList.jsp" class="top_subnav__link">分类歌单</a>
					</li>
					<li class="top_subnav__item">
						<a href="https://y.qq.com/portal/mv_lib.html#t6=2" class="top_subnav__link">MV</a>
					</li>
				</ul>
				<!-- 导航 E -->
				<div class="mod_top_search" role="search">
					<div class="mod_search_input">
						<input class="search_input__input" placeholder="歌手" accesskey="s" value="" type="text">
						<button class="search_input__btn"><i class="icon_search"></i><span class="icon_txt">搜索</span></button>
					</div>
					<div class="js_smartbox">
						<div class="mod_search_other" style="">
							<div class="search_hot">
								<dl class="search_hot__list" aria-labelledy="search_hot__tit">
									<dt class="search_hot__tit">热门搜索</dt>

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

					<!-- 未登录 -->


					<!-- 用户信息 -->
					
				</div>
			</div>
		</div>
		<!-- 头部 E -->

		<div class="js_mod_profile_unlogin" style="display: none;">
		</div>

		<div class="mod_profile js_user_data" style="">
			<div class="section_inner">
				<img src="g" onerror="this.src='${user.userIconSrc}';this.onerror=null;" alt="${user.nickName }" class="profile__cover">
				<h1 class="profile__tit">
                <span class="profile__name">${user.nickName }</span>
            <a href="https://y.qq.com/vipportal/" target="_top"></a><a href="https://y.qq.com/vip/fufeibao/index.html" class="js_vip" data-href="//y.qq.com/vip/fufeibao/index.html"></a></h1>
				<ul class="mod_user_statistic">
					<li class="user_statistic__item">
						<a href="javascript:;" class="js_tab" data-tab="focus_singer" data-stat="y_new.profile.header.focus_click"><strong class="user_statistic__number js_num_follow">8</strong><span class="user_statistic__tit">关注</span></a>
					</li>
					<li class="user_statistic__item user_statistic__item--last">
						<a href="javascript:;" class="js_tab" data-tab="fans" data-stat="y_new.profile.header.fans_click"><strong class="user_statistic__number js_num_fans">0</strong><span class="user_statistic__tit">粉丝</span></a>
					</li>
				</ul>

				<button class="btn_lock js_btn_lock" title="主页已公开" data-status="0"><span class="icon_txt">主页已公开</span></button>

			</div>
		</div>

		<div class="main main--profile" style="">
			<div class="mod_tab profile_nav" role="nav" id="nav">
				<a class="mod_tab__item mod_tab__current" href="javascript:likeBox();" id="like_tab" data-tab="like" data-stat="y_new.profile.tab.like">我喜欢</a>
				<a class="mod_tab__item" href="javascript:;" id="buy_tab" data-tab="buy" data-stat="y_new.profile.tab.digital_album" style="display: none;">我的数字专辑</a>
				<a class="mod_tab__item" href="javascript:createBox();" id="create_tab" data-tab="create" data-stat="y_new.profile.tab.create_playlist">我创建的歌单</a>
				<a class="mod_tab__item" href="javascript:focusBox();" id="focus_tab" data-tab="focus" data-stat="y_new.profile.tab.focus">关注</a>
				<!--<a class="mod_tab__item" href="javascript:;" id="fans_tab" data-tab="fans" data-stat="y_new.profile.tab.fans">粉丝</a>
            <a class="mod_tab__item" href="javascript:;" id="uploadmv_tab" data-tab="uploadmv" data-stat="y_new.profile.tab.uploadmv">我上传的视频</a>-->
			</div>

			<div class="js_box" id="like_box" style="display: block;">
				<div class="mod_tab" role="nav">
					<a class="mod_tab__item mod_tab__current" href="javascript:;" data-tab="like_song" data-stat="y_new.profile.like.tab.song">歌曲 33</a>
					<a class="mod_tab__item" href="javascript:;" data-tab="like_playlist" data-stat="y_new.profile.like.tab.playlist">歌单 0</a>
					<a class="mod_tab__item" href="javascript:;" data-tab="like_album" data-stat="y_new.profile.like.tab.album">专辑 0</a>
					<a class="mod_tab__item" href="javascript:;" data-tab="like_mv" data-stat="y_new.profile.like.tab.mv">MV 0</a>
				</div>
				<div class="profile_cont">
					<div class="js_sub" id="like_song_box" style="display: block;">
						<div class="mod_songlist_toolbar">
							<a href="javascript:;" class="mod_btn_green js_all_play" data-stat="y_new.profile.like.song.playall"><i class="mod_btn_green__icon_play"></i>播放全部</a>
							<a href="javascript:;" class="mod_btn js_all_fav" data-stat="y_new.profile.like.song.addall"><i class="mod_btn__icon_add"></i>添加到</a>
							<a href="javascript:;" class="mod_btn js_all_down" data-stat="y_new.profile.like.song.downloadall"><i class="mod_btn__icon_down"></i>下载</a>
							<a href="javascript:;" class="mod_btn js_batch" data-stat="y_new.profile.like.song.batch"><i class="mod_btn__icon_batch"></i>批量操作</a>
						</div>
						<div class="mod_songlist">
							<ul class="songlist__header">
								<li class="songlist__edit songlist__edit--check">
									<input class="songlist__checkbox js_check_all" type="checkbox">
								</li>
								<li class="songlist__header_name">歌曲</li>
								<li class="songlist__header_author">歌手</li>
								<li class="songlist__header_album">专辑</li>
								<li class="songlist__header_time">时长</li>
							</ul>
							<ul class="songlist__list">
					
						<c:forEach items="${userCenterLikeSongs }" var="s" varStatus="status">
						<li mid="680055" ix="${status.index }">
									<div class="songlist__item songlist__item--even ">
										<div class="songlist__edit songlist__edit--check">
											<input class="songlist__checkbox" type="checkbox">
										</div>
										<div class="songlist__songname">
											<span class="songlist__songname_txt"><a href="https://y.qq.com/n/yqq/song/002O1ZfK1pIVK2.html" class="js_song" title="${s.songName}">${s.songName}</a></span>

											<a href="https://y.qq.com/n/yqq/mv/v/k0013pei754.html" class="songlist__icon songlist__icon_mv" target="_top" title="MV"><span class="icon_txt">MV</span></a>

											<div class="mod_list_menu">
												<a onclick="javascript:playSingleSong('${s.songName}');return false;" href="#" class="list_menu__item list_menu__play js_play" title="播放">
													<i class="list_menu__icon_play"></i>
													<span class="icon_txt">播放</span>
												</a>
												<a href="javascript:;" class="list_menu__item list_menu__add js_fav" title="添加到歌单" aria-haspopup="true"  onclick="showList(event)">
													<i class="list_menu__icon_add"></i>
													<span class="icon_txt">添加到歌单</span>
												</a>
												<a href="javascript:;" class="list_menu__item list_menu__down js_down" title="下载" aria-haspopup="true">
													<i class="list_menu__icon_down"></i>
													<span class="icon_txt">下载</span>
												</a>
												<a href="javascript:;" class="list_menu__item list_menu__share js_share" title="分享" aria-haspopup="true">
													<i class="list_menu__icon_share"></i>
													<span class="icon_txt">分享</span>
												</a>
											</div>
										</div>

										<div class="songlist__artist">

											<a href="https://y.qq.com/n/yqq/singer/001fNHEf1SFEFN.html" data-singermid="001fNHEf1SFEFN" data-singerid="13948" title="${s.singer.singerName}" class="singer_name">${s.singer.singerName}</a>

										</div>
										<div class="songlist__album">
											<a data-albummid="000HZzEx0QIMNM" data-albumid="57457" href="https://y.qq.com/n/yqq/album/000HZzEx0QIMNM.html" title="${s.dvd.dvdName}" class="album_name">${s.dvd.dvdName}</a>
										</div>
										<div class="songlist__time">${s.songLastTime}</div>
										<div class="songlist__other">

										</div>
										<a href="javascript:;" class="songlist__delete js_delfav_song" data-id="680055" title="删除"><span class="icon_txt">删除</span></a>
									</div>
								</li>
						
						</c:forEach>




							</ul>

						</div>
						<div class="mod_page_nav js_pager"><strong class="current">1</strong>
							<a href="javascript:;" class="js_pageindex" data-index="2" hidefocus="">2</a>
							<a href="javascript:;" class="next js_pageindex" data-index="2" title="下一页" hidefocus=""><span>&gt;</span></a>
						</div>
					</div>
					<div class="js_sub" style="display: none;" id="like_playlist_box"></div>
					<div class="js_sub" style="display: none;" id="like_album_box"></div>
					<div class="js_sub" style="display: none;" id="like_mv_box"></div>
				</div>
			</div>
			<!-- 歌单 -->
			<div class="js_box profile_cont" id="buy_box" style="display: none;">
			</div>
			<!-- 歌单 -->
			<div class="js_box profile_cont" id="create_box" style="display: none;">
				<div class="playlist_toolbar">

					<button class="mod_btn js_create_new" data-stat="y_new.profile.create_playlist.create_new" onclick="createList()"><i class="mod_btn__icon_new"></i>新建歌单</button>
					<button class="mod_btn js_import" data-stat="y_new.profile.create_playlist.import"><i class="mod_btn__icon_input"></i>导入歌单</button>

					<div class="style_switch" aria-label="排列方式">
						<a href="javascript:;" id="picList" class="style_switch__item" title="上图下文" data-type="mod_playlist" data-tab="create" data-stat="y_new.profile.create_playlist.pic_mod" onclick="showPic()"><i class="icon_style_pic"></i><span class="icon_txt">上图下文</span></a>
						<a href="javascript:;" id="textList" class="style_switch__item style_switch__item--select" title="列表" data-type="mod_playlist_text" data-tab="create" data-stat="y_new.profile.create_playlist.list_mod" onclick="showText()"><i class="icon_style_list"></i><span class="icon_txt">列表</span></a>
					</div>
				</div>

				<div class="mod_playlist_text js_list" id="rua" style="display:;">
					<ul class="playlist__header">
						<li class="playlist__header_name">歌单</li>
						<li class="playlist__header_number">操作人</li>
						<li class="playlist__header_author">创建人</li>
						<li class="playlist__header_other">赞数</li>
					</ul>
					<ul class="playlist__list">

					<c:forEach items="${userCenterSongList }" var="s">
			<li class="playlist__item playlist__item--even " data-disstid="1682694093" data-uin="296796683" data-dirid="13">
							<div class="playlist__cover">

								<a href="https://y.qq.com/n/yqq/playlist/1682694093.html#stat=y_new.profile.create_playlist.click&amp;dirid=13" class="js_playlist" data-disstid="1682694093" data-dirid="13" data-stat="y_new.profile.create_playlist.click">
									<img src="${s.songListIconSrc }" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;" alt="${s.songListName }" class="playlist__pic">
								</a>

							</div>
							<h4 class="playlist__title">
                              <span class="playlist__title_txt">

                                    <a href="https://y.qq.com/n/yqq/playlist/1682694093.html#stat=y_new.profile.create_playlist.click&amp;dirid=13" class="js_playlist" data-stat="y_new.profile.create_playlist.click" data-disstid="1682694093" data-dirid="13" title="${s.songListName }">${s.songListName }</a>

                              </span>
 
                        </h4>
                      <!--  mod_list_menu-->
							  <div class="playlist__number" style="display: block;">
								<a onclick="javascript:playListSong('${s.songListName}','${s.songListIconSrc}');return false;" href="#" class="list_menu__item list_menu__play js_play" data-stat="y_new.profile.create_playlist.play" title="播放">
									<i class="list_menu__icon_play"></i>
									<span class="icon_txt">播放</span>
								</a>
								<a href="javascript:;" class="list_menu__item list_menu__add js_fav" title="添加到歌单" onclick="showList(event)">
									<i class="list_menu__icon_add"></i>
									<span class="icon_txt">添加到歌单</span>
								</a>
								<a href="javascript:;" class="list_menu__item list_menu__down js_down" title="下载">
									<i class="list_menu__icon_down"></i>
									<span class="icon_txt">下载</span>
								</a>
								<a href="javascript:;" class="list_menu__item list_menu__share js_share" title="分享">
									<i class="list_menu__icon_share"></i>
									<span class="icon_txt">分享</span>
								</a>
							</div>
							

							<div class="playlist__author">
								<a title="${user.nickName}">${user.nickName}</a>
							</div>
							<div class="playlist__other">

								<%= new Random().nextInt(1000) %>

							</div>
							<a href="javascript:;" class="playlist__delete js_delcreate_gedan" data-dirid="13" style="display:;"><span class="icon_txt">删除</span></a>
						</li>
					
					
					
					</c:forEach>

					</ul>
				</div>

				<div class="mod_playlist js_list" style="display: none;">
					<ul class="playlist__header">
						<li class="playlist__header_name">歌单</li>
						<li class="playlist__header_number">曲目数</li>
						<li class="playlist__header_author">编辑</li>
						<li class="playlist__header_other">收听</li>
					</ul>
					<ul class="playlist__list">
						<c:forEach items="${userCenterSongList }" var="s">
						<li class="playlist__item" data-disstid="0" data-dirid="205" data-uin="296796683">
							<div class="playlist__item_box">
								<div class="playlist__cover mod_cover">

									<a onclick="javascript:playListSong('${s.songListName}','${s.songListIconSrc}');return false;" href="#">
										<img src="${s.songListIconSrc }" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;" alt="${s.songListName }" class="playlist__pic">
										<i class="mod_cover__icon_play js_play" data-stat="y_new.profile.create_playlist.qzone.play"></i>
									</a>

								</div>
								<h4 class="playlist__title">
					<span class="playlist__title_txt">
					
						<a href="https://y.qq.com/portal/mymusic.html#stat=y_new.profile.create_playlist.qzone.click&amp;dirid=205&amp;hostuin=296796683" title="${s.songListName }">${s.songListName }</a>
					
					</span>
				</h4>
								<div class="playlist__number">
									<%= new Random().nextInt(30) %>首
								</div>
								<div class="playlist__author">
									<a title="当我和世界不一样。">${user.nickName }</a>
								</div>
								<div class="playlist__other">

								</div>

								<a href="javascript:;" class="btn_operate_menu js_playlist_more_dirid" data-type="4" data-stat="y_new.profile.create_playlist.qzone.pic_mod_more" data-id="205"><span class="icon_txt">更多</span></a>

							</div>
						</li>
			</c:forEach>
						

					</ul>
				</div>
			</div>
			<!-- 关注 -->
			<div class="js_box" id="focus_box" style="display: none;">
				<div class="mod_tab" role="nav">
					<a class="mod_tab__item mod_tab__current" href="javascript:;" data-tab="focus_singer" data-stat="y_new.profile.focus.tab.singer">歌手</a>
					<a class="mod_tab__item" href="javascript:;" data-tab="focus_user" data-stat="y_new.profile.focus.tab.user">用户</a>
				</div>
				<div class="profile_cont">
					<a href="javascript:;" class="mod_btn btn_focus_fan js_focus_friends" style="display: none;"><i class="mod_btn__icon_new"></i>关注更多好友</a>
					<div class="js_sub" id="focus_singer_box"></div>
					<div class="js_sub" style="display: none;" id="focus_user_box"></div>
				</div>
			</div>
			<div class="js_box profile_cont" id="fans_box" style="display: none;">
			</div>
			<!-- 上传的MV -->
			<div class="js_box profile_cont" id="uploadmv_box" style="display: none;">
			</div>
		</div>
		<div id="locked" style="display: none;"></div>
		<div id="cgi_none_box" class="" style="display: none;">
			<div class="none_txt">
				<i class="none_txt__symbol"></i>

				<p>系统错误，请
					<a href="javascript:;" onclick="window.location.reload();">刷新</a>重试！</p>

			</div>
			<div class="bg_detail"><i class="bg_detail__pic"></i></div>
		</div>

		<div class="mod_operate_menu" style="position: absolute; display: none; left: 351px; top: 692px;" id="fav_pop">
			<div class="operate_menu__cont">
				<a href="javascript:;" class="operate_menu__link js_addto_playlist" style="display:;">播放队列</a>
				<ul role="menu" class="operate_menu__list operate_menu__top_line operate_menu__bottom_line">

					<li class="operate_menu__item">
						<a href="javascript:;" class="operate_menu__link js_addto_taogelist operate_menu__link--disabled" data-dirid="201" title="我喜欢 "><i class="operate_menu__icon_like"></i>我喜欢 </a>
					</li>
					
					<c:forEach items="${userCenterSongList }" var="s">
						<li class="operate_menu__item">
						<a href="javascript:;" class="operate_menu__link js_addto_taogelist" data-dirid="13" title="${s.songListName} ">${s.songListName}</a>
					</li>
					
					</c:forEach>
				

		

				</ul>
				<a href="javascript:;" class="operate_menu__link js_addto_new" style="display:;"><i class="operate_menu__icon_add"></i>添加到新歌单</a>
			</div>
		</div>

		<div class="footer" role="footer">
			<div class="section_inner">
				<div class="footer_info">

					<div class="footer_download">
						<h3 class="footer_tit">下载QQ音乐客户端</h3>
						<ul class="footer_download_list">
							<li class="footer_download_list__item">
								<a href="https://y.qq.com/download/" class="js_footer_down" data-type="pc" data-stat="y_new.footer.download.pc"><i class="icon_qm_pc"><span class="icon_txt">QQ音乐</span></i>PC版</a>
							</li>
							<li class="footer_download_list__item">
								<a href="https://y.qq.com/download/" class="js_footer_down" data-type="mac" data-stat="y_new.footer.download.mac"><i class="icon_qm_mac"><span class="icon_txt">QQ音乐</span></i>Mac版</a>
							</li>
							<li class="footer_download_list__item">
								<a href="https://y.qq.com/download/" class="js_footer_down" data-type="andriod" data-stat="y_new.footer.download.andriod"><i class="icon_qm_android"><span class="icon_txt">QQ音乐</span></i>Android版</a>
							</li>
							<li class="footer_download_list__item">
								<a href="https://y.qq.com/download/" class="js_footer_down" data-type="iphone" data-stat="y_new.footer.download.iphone"><i class="icon_qm_iphone"><span class="icon_txt">QQ音乐</span></i>iPhone版</a>
							</li>
						</ul>
					</div>

					<div class="footer_product">
						<h3 class="footer_tit">特色产品</h3>
						<ul class="footer_product_list">
							<li class="footer_product_list__item footer_product_list__item--pic">
								<a href="http://kg.qq.com/?pgv_ref=qqmusic.y.topmenu" target="_top" class="js_other_link" data-stat="y_new.footer.other_music.k"><i class="icon_qm_kg"></i>全民K歌</a>
							</li>
							<li class="footer_product_list__item footer_product_list__item--pic">
								<a href="http://y.qq.com/vip/voice_intro/index.html" target="_top" class="js_other_link" data-stat="y_new.footer.other_music.supersound"><i class="icon_qm_ss"></i>Super Sound</a>
							</li>
							<li class="footer_product_list__item footer_product_list__item--pic">
								<a href="http://y.qq.com/y/static/down/qplay.html?pgv_ref=qqmusic.y.topmenu" target="_top" class="js_other_link" data-stat="y_new.footer.other_music.qplay"><i class="icon_qm_qp"></i>QPlay</a>
							</li>
							<li class="footer_product_list__item">
								<a href="http://y.qq.com/cp/homepage.html#/home?from=yqq" target="_top" class="js_other_link" data-stat="y_new.footer.other_music.cp">QQ音乐原创音乐平台</a>
							</li>
							<li class="footer_product_list__item">
								<a href="https://y.qq.com/portal/mv/mv_upload.html" target="_top" class="js_other_link" data-stat="y_new.footer.other_music.ugc">上传视频</a>
							</li>
							<li class="footer_product_list__item">
								<a href="http://y.qq.com/y/static/down/car_introduce.html" target="_top" class="js_other_link" data-stat="y_new.footer.other_music.car_play">车载互联</a>
							</li>
							<li class="footer_product_list__item">
								<a href="http://y.qq.com/yanchu/?pgv_ref=qqmusic.y.topmenu" target="_top" class="js_other_link" data-stat="y_new.footer.other_music.yanchu">QQ演出</a>
							</li>
						</ul>
					</div>

					<div class="footer_link">
						<h3 class="footer_tit">合作链接</h3>
						<!-- 显示全部 footer_link_list--show -->
						<ul class="footer_link_list">
							<li class="footer_link_list__item">
								<a href="https://y.qq.com/portal/company_detail.html?id=297" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">CJ E&amp;M</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://v.qq.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">腾讯视频</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://z.qzone.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">手机QQ空间</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://im.qq.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">最新版QQ</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://e.qq.com/index.shtml" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">腾讯社交广告</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://guanjia.qq.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">电脑管家</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://browser.qq.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">QQ浏览器</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://huabao.qzone.qq.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">画报</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://act.qzone.qq.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">黄钻活动</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://xing.qq.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">星钻</a>
							</li>
							<li class="footer_link_list__item">
								<a href="http://www.weiyun.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">腾讯微云</a>
							</li>
							<li class="footer_link_list__item js_last" style="display: none;">
								<a href="http://fm.qq.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">企鹅FM</a>
							</li>
							<li class="footer_link_list__item">
								<a href="javascript:;" class="js_footer_more">更多</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="https://www.qcloud.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="http://buluo.qq.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">兴趣部落</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="https://ke.qq.com/?from=100" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">腾讯课堂</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="http://yunsou.qq.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云搜</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="http://bbs.qcloud.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云论坛</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="http://www.znds.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">智能电视网</a>
							</li>
							<li class="footer_link_list__item footer_link_list__item--more">
								<a href="http://www.dangbei.com/" target="_top" class="js_other_link" data-stat="y_new.footer.other_link">当贝市场</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="footer_copyright">

					<p>
						<a href="http://www.tencent.com/" rel="nofollow" target="_top" title="关于腾讯">关于腾讯</a> |
						<a href="http://www.tencent.com/index_e.shtml" rel="nofollow" target="_top" title="About Tencent">About Tencent</a> |
						<a href="http://www.qq.com/contract.shtml" rel="nofollow" target="_top" title="服务条款">服务条款</a> |
						<a href="http://y.qq.com/y/static/tips/service_tips.html" rel="nofollow" target="_top" title="用户服务协议">用户服务协议</a> |
						<a href="http://www.qq.com/privacy.htm" rel="nofollow" target="_top" title="隐私政策">隐私政策</a> |
						<a href="http://www.tencentmind.com/" rel="nofollow" target="_top" title="广告服务">广告服务</a> |
						<a href="http://hr.tencent.com/" rel="nofollow" target="_top" title="腾讯招聘">腾讯招聘</a> |
						<a href="http://service.qq.com/" rel="nofollow" target="_top" title="客服中心">客服中心</a> |
						<a href="http://www.qq.com/map/" rel="nofollow" target="_top" title="网站导航">网站导航</a>
					</p>

					<p>Copyright © 1998 - 2017 Tencent.
						<a target="_top" href="http://www.tencent.com/en-us/le/copyrightstatement.shtml" rel="nofollow" title="All Rights Reserved.">All Rights Reserved.</a>
					</p>
					<p>腾讯公司
						<a target="_top" href="http://www.tencent.com/zh-cn/le/copyrightstatement.shtml" rel="nofollow" title="版权所有">版权所有</a>
						<a target="_top" href="http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm" rel="nofollow" title="腾讯网络文化经营许可证">腾讯网络文化经营许可证</a>
					</p>
				</div>
			</div>
		</div>

		<a href="javascript:;" class="btn_bottom_top sprite js_btn_top" style="display: none;"><span class="icon_txt">返回顶部</span></a>
		<a href="javascript:;" class="btn_bottom_feedback sprite js_btn_feedback"><span class="icon_txt">意见反馈</span></a>
		<a href="javascript:;" class="btn_bottom_player js_openplayer"><span class="icon_txt">播放器</span></a>
		<div id="divdialog_0"></div><embed type="application/tecent-qqmusichelper-plugin" id="QQMusicHelper" height="30" width="40">

		<div class="mod_popup_mask" style="display: none;"></div>

	</body>

</html>

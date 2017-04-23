<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html lang="zh-cn"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta name="keywords" content="巅峰榜·热歌,音乐,QQ音乐,在线听歌,音乐下载,音乐播放器,音乐网站,MV,巅峰榜,音乐排行榜,翻译歌曲,热门歌曲,经典老歌">
    <meta name="description" content="QQ音乐是腾讯公司推出的一款免费音乐服务，海量音乐在线试听、最流行音乐在线首发、歌词翻译、手机铃声下载、高品质音乐试听、正版音乐下载、免费空间背景音乐设置、MV观看等，是互联网音乐播放和下载的首选">
    <meta name="mobile-agent" content="format==[html5];url=//m.y.qq.com">
    <meta name="applicable-device" content="pc">
    <title>巅峰榜·热歌 - QQ音乐 - 听我想听的歌!</title>
    <c:if test="${empty songRank }">
    <c:redirect url="songAction!showRankSongs.action"></c:redirect>
    </c:if>
    
    <link rel="canonical" href="//y.qq.com/n/yqq/toplist/26.html">
<script type="text/javascript">
    var _speedMark = new Date();
</script>
<script id="requirenode" async="" src="js/album.js"></script>
    <link rel="stylesheet" href="//y.gtimg.cn/mediastyle/yqq/layout0110.css?max_age=25920000&amp;v=20160830">
    <link rel="stylesheet" href="//y.gtimg.cn/mediastyle/yqq/toplist.css?max_age=25920000"><style type="text/css">.emojicon-m {min-height: 1em !important; min-width: 1em !important; max-height: 1em !important;max-width: 1em !important;vertical-align: middle !important;float: none !important;background-repeat:no-repeat;background-position:center center;	background-size: contain;display: inline-block;}</style><style id="style-1-cropbar-clipper">/* Copyright 2014 Evernote Corporation. All rights reserved. */
.en-markup-crop-options {
    top: 18px !important;
    left: 50% !important;
    margin-left: -100px !important;
    width: 200px !important;
    border: 2px rgba(255,255,255,.38) solid !important;
    border-radius: 4px !important;
}

.en-markup-crop-options div div:first-of-type {
    margin-left: 0px !important;
}
</style>
<script src="//jqmt.qq.com/cdn_dianjiliu.js?a=0.8083283345347086"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
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
		    <a href="album.jsp" class="top_subnav__link">专辑</a>
		</li>
		<li class="top_subnav__item">
		    <a href="topList.jsp" class="top_subnav__link top_subnav__link--current">排行榜</a>
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
                <div class="js_smartbox"><div class="mod_search_other" style="">
            <div class="search_hot">
                <dl class="search_hot__list" aria-labelledy="search_hot__tit">
                    <dt class="search_hot__tit">热门搜索</dt>
                    <dd>
						
                        <a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="DJ">
                            <span class="search_hot__number">1</span>
                            <span class="search_hot__name">DJ</span>
                            <span class="search_hot__listen">18.7万</span>
                        </a>
						
                        <a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="刚好遇见你">
                            <span class="search_hot__number">2</span>
                            <span class="search_hot__name">刚好遇见你</span>
                            <span class="search_hot__listen">11万</span>
                        </a>
						
                        <a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="我要你">
                            <span class="search_hot__number">3</span>
                            <span class="search_hot__name">我要你</span>
                            <span class="search_hot__listen">10.7万</span>
                        </a>
						
                        <a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="逃">
                            <span class="search_hot__number">4</span>
                            <span class="search_hot__name">逃</span>
                            <span class="search_hot__listen">10.2万</span>
                        </a>
						
                        <a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="因为遇见你">
                            <span class="search_hot__number">5</span>
                            <span class="search_hot__name">因为遇见你</span>
                            <span class="search_hot__listen">8.1万</span>
                        </a>
						
                    </dd>
                
            </dl></div>

            <div class="search_history">
                <dl class="search_history__list">
                    <dt class="search_history__tit">搜索历史<a href="javascript:;" class="search_history__clear js_smartbox_delete_all"><i class="icon_history_clear"></i><span class="icon_txt">清空</span></a></dt>
		
                    <dd class="search_history__item">
                        <a href="javascript:;" class="search_history__link js_smartbox_search js_left" data-name="西元前">西元前</a>
                        <a href="javascript:;" class="search_history__delete js_smartbox_delete" data-name="西元前" title="删除"><i class="search_history__icon_delete"></i><span class="icon_txt">删除</span></a>
                    </dd>
	        
                    <dd class="search_history__item">
                        <a href="javascript:;" class="search_history__link js_smartbox_search js_left" data-name="歌手">歌手</a>
                        <a href="javascript:;" class="search_history__delete js_smartbox_delete" data-name="歌手" title="删除"><i class="search_history__icon_delete"></i><span class="icon_txt">删除</span></a>
                    </dd>
	        
                    <dd class="search_history__item">
                        <a href="javascript:;" class="search_history__link js_smartbox_search js_left" data-name="刚好遇见你">刚好遇见你</a>
                        <a href="javascript:;" class="search_history__delete js_smartbox_delete" data-name="刚好遇见你" title="删除"><i class="search_history__icon_delete"></i><span class="icon_txt">删除</span></a>
                    </dd>
	        
                    <dd class="search_history__item">
                        <a href="javascript:;" class="search_history__link js_smartbox_search js_left" data-name="你就不要想起我">你就不要想起我</a>
                        <a href="javascript:;" class="search_history__delete js_smartbox_delete" data-name="你就不要想起我" title="删除"><i class="search_history__icon_delete"></i><span class="icon_txt">删除</span></a>
                    </dd>
	        
                </dl>
            </div></div></div></div>
        <div class="header__opt">

               
       <!-- 未登录 -->

		<!-- 用户信息 -->
            </div>
        </div>
    </div>
    <!-- 头部 E -->

<div class="main">
   
        <div class="toplist_nav">
            <dl class="toplist_nav__list">
                <dt class="toplist_nav__tit">QQ音乐巅峰榜</dt>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/4.html#stat=y_new.toplist.menu.4" class="toplist_nav__link">巅峰榜·流行指数</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/26.html#stat=y_new.toplist.menu.26" class="toplist_nav__link toplist_nav__link--current">巅峰榜·热歌</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/33.html#stat=y_new.toplist.menu.33" class="toplist_nav__link">巅峰榜·广汽三菱欧蓝德·歌手</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/27.html#stat=y_new.toplist.menu.27" class="toplist_nav__link">巅峰榜·新歌</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/28.html#stat=y_new.toplist.menu.28" class="toplist_nav__link">巅峰榜·网络歌曲</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/5.html#stat=y_new.toplist.menu.5" class="toplist_nav__link">巅峰榜·内地</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/6.html#stat=y_new.toplist.menu.6" class="toplist_nav__link">巅峰榜·港台</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/3.html#stat=y_new.toplist.menu.3" class="toplist_nav__link">巅峰榜·欧美</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/17.html#stat=y_new.toplist.menu.17" class="toplist_nav__link">巅峰榜·日本</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/32.html#stat=y_new.toplist.menu.32" class="toplist_nav__link">巅峰榜·音乐人</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/36.html#stat=y_new.toplist.menu.36" class="toplist_nav__link">巅峰榜·K歌金曲</a></dd>
		
		
		<dd class="toplist_nav__item"><a href="//y.qq.com/portal/mv_toplist.html#stat=y_new.toplist.menu.mv_toplist" class="toplist_nav__link">巅峰榜·MV</a></dd>
		
            </dl>

            <dl class="toplist_nav__list">
                <dt class="toplist_nav__tit">全球榜</dt>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/169.html#stat=y_new.toplist.menu.169" class="toplist_nav__link">vivo 手机 高品质音乐榜</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/108.html#stat=y_new.toplist.menu.108" class="toplist_nav__link">美国公告牌榜</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/123.html#stat=y_new.toplist.menu.123" class="toplist_nav__link">美国iTunes榜</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/107.html#stat=y_new.toplist.menu.107" class="toplist_nav__link">英国UK榜</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/105.html#stat=y_new.toplist.menu.105" class="toplist_nav__link">日本公信榜</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/113.html#stat=y_new.toplist.menu.113" class="toplist_nav__link">香港电台榜</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/114.html#stat=y_new.toplist.menu.114" class="toplist_nav__link">香港商台榜</a></dd>
		
                <dd class="toplist_nav__item"><a href="https://y.qq.com/n/yqq/toplist/117.html#stat=y_new.toplist.menu.117" class="toplist_nav__link">台湾幽浮榜</a></dd>
		
		
            </dl>
</div>

	
        <div class="mod_toplist">
            <div class="toplist__hd">
                <h1 class="toplist__tit">巅峰榜·热歌</h1>
                <span class="toplist_switch">
                    <a href="javascript:;" class="toplist_switch__btn js_prev_week" style=""><i class="toplist_switch__arrow_prev sprite"></i><i class="icon_txt">上一期</i></a>
                    <span class="toplist_switch__data js_chosed_week">3.16 - 3.22</span>
                    <a href="javascript:;" class="toplist_switch__btn js_next_week toplist_switch__btn--disable" style=""><i class="toplist_switch__arrow_next sprite"></i><i class="icon_txt">下一期</i></a>
                </span>
                <a href="javascript:;" class="toplist__rule js_desc" data-left="-650" data-top="-78" data-target="popup_data_detail" data-stat="y_new.toplist.rule">榜单规则</a>
            </div>
            <div class="mod_songlist_toolbar">
                <a href="//y.qq.com/portal/player.html" class="mod_btn_green js_all_play" data-stat="y_new.toplist.playall"><i class="mod_btn_green__icon_play"></i>播放全部</a>
                <a href="javascript:;" class="mod_btn js_all_fav" data-stat="y_new.toplist.addall"><i class="mod_btn__icon_add"></i>添加到</a>
                <a href="javascript:;" class="mod_btn js_all_down" data-stat="y_new.toplist.downloadall"><i class="mod_btn__icon_down"></i>下载</a>
                <a href="javascript:;" class="mod_btn js_batch" data-stat="y_new.toplist.batch"><i class="mod_btn__icon_batch"></i>批量操作</a>
            </div>

            <div class="mod_songlist">
                <ul class="songlist__header">
                    <li class="songlist__edit">
                        <input class="songlist__checkbox js_check_all" type="checkbox">
                    </li>
                    <li class="songlist__header_name">歌曲</li>
                    <li class="songlist__header_author">歌手</li>
                    <li class="songlist__header_time">时长</li>
                </ul>

                <ul class="songlist__list">
                
    
    <c:forEach items="${songRank }" var="s" varStatus="status">
    	<li mid="200380820" ix="${status.index }">
		<div class="songlist__item" onmouseover="this.className=(this.className+' songlist__item--hover')" onmouseout="this.className=this.className.replace(/ songlist__item--hover/, '')">
			<div class="songlist__edit songlist__edit--check">
			    <input class="songlist__checkbox" type="checkbox">
			</div> 
			
			<div class="songlist__number  songlist__number--top">${status.count }</div>
			
		
		    <div class="songlist__rank"><i class="icon_rank_keep"></i></div>
		
		    <div class="songlist__songname">
			<span class="songlist__songname_txt" style="visibility: visible;">
			    <a href="https://y.qq.com/n/yqq/album/0011IIJE3XYf9L.html" class="songlist__cover album_name" data-albummid="0011IIJE3XYf9L" data-albumid="1853998"><img onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" src="${s.dvd.dvdIconSrc }" data-original="//y.gtimg.cn/music/photo_new/T002R90x90M0000011IIJE3XYf9L.jpg?max_age=2592000" alt="${s.dvd.dvdName }" class="songlist__pic" style="display: inline; visibility: visible;"></a>
			    <a href="https://y.qq.com/n/yqq/song/001Nl0W80sBSwJ.html" class="js_song" title="${s.songName }">${s.songName }</a>
			</span>
			    
				<i class="songlist__icon songlist__icon_exclusive" title="独家"></i>
			    
			     
				<a href="https://y.qq.com/n/yqq/mv/v/p0022w4yvpo.html" class="songlist__icon songlist__icon_mv" target="_blank" title="MV"><span class="icon_txt">MV</span></a>
			     
			<div class="mod_list_menu">
				<a onclick="javascript:playSingleSong('${s.songName}');return false;" href="#" class="list_menu__item list_menu__play js_play" title="播放">
				    <i class="list_menu__icon_play"></i>
				    <span class="icon_txt">播放</span>
				</a>
				<a href="javascript:;" class="list_menu__item list_menu__add js_fav" title="添加到歌单" aria-haspopup="true" data-target="menu_add">
				    <i class="list_menu__icon_add"></i>
				    <span class="icon_txt">添加到歌单</span>
				</a>
				<a href="javascript:;" class="list_menu__item list_menu__down js_down" title="下载" aria-haspopup="true" data-target="menu_down">
				    <i class="list_menu__icon_down"></i>
				    <span class="icon_txt">下载</span>
				</a>
				<a href="javascript:;" class="list_menu__item list_menu__share js_share" title="分享" aria-haspopup="true" data-aria="menu_share">
				    <i class="list_menu__icon_share"></i>
				    <span class="icon_txt">分享</span>
				</a>
			</div>
		    </div>
		    <div class="songlist__artist">
			
			
			<a href="https://y.qq.com/n/yqq/singer/003tMm0y0TuewY.html" data-singermid="003tMm0y0TuewY" data-singerid="11608" title="${s.singer.singerName }" class="singer_name">${s.singer.singerName }</a>
			
		
			
		    </div>
		    <div class="songlist__time">${s.songLastTime }</div>
		    <div class="songlist__other">
			
		    </div>
		</div>
	</li>
    
    
    
    </c:forEach>


</ul>
            </div>


        </div>
        
	<!-- 专辑简介 -->
	<div class="popup_data_detail" id="popup_data_detail" data-aria="popup" style="display:none;z-index:10000000000;">
	    <div class="popup_data_detail__cont">
		<h3 class="popup_data_detail__tit">榜单规则</h3>
		<p>QQ音乐巅峰榜·热歌根据用户收听行为自动生成，反映QQ音乐一周内最热的歌曲排行。<br><br>更新时间：周四更新<br>排名数量：300首 </p>
	    </div>
	    <i class="popup_data_detail__arrow"></i>
	</div>
    <div class="mod_page_nav js_pager"><strong class="current">1</strong><a href="javascript:;" class="js_pageindex" data-index="2" hidefocus="">2</a><a href="javascript:;" class="js_pageindex" data-index="3" hidefocus="">3</a><a href="javascript:;" class="js_pageindex" data-index="4" hidefocus="">4</a><strong class="more">...</strong><a href="javascript:;" class="js_pageindex" data-index="10" hidefocus="">10</a><a href="javascript:;" class="next js_pageindex" data-index="2" title="下一页" hidefocus=""><span>&gt;</span></a></div></div>
    


	    <div class="footer" role="footer">
    <div class="section_inner">
        <div class="footer_info">

            <div class="footer_download">
                <h3 class="footer_tit">下载QQ音乐客户端</h3>
                <ul class="footer_download_list">
                    <li class="footer_download_list__item"><a href="//y.qq.com/download/" class="js_footer_down" data-type="pc" data-stat="y_new.footer.download.pc"><i class="icon_qm_pc"><span class="icon_txt">QQ音乐</span></i>PC版</a></li>
                    <li class="footer_download_list__item"><a href="//y.qq.com/download/" class="js_footer_down" data-type="mac" data-stat="y_new.footer.download.mac"><i class="icon_qm_mac"><span class="icon_txt">QQ音乐</span></i>Mac版</a></li>
                    <li class="footer_download_list__item"><a href="//y.qq.com/download/" class="js_footer_down" data-type="andriod" data-stat="y_new.footer.download.andriod"><i class="icon_qm_android"><span class="icon_txt">QQ音乐</span></i>Android版</a></li>
                    <li class="footer_download_list__item"><a href="//y.qq.com/download/" class="js_footer_down" data-type="iphone" data-stat="y_new.footer.download.iphone"><i class="icon_qm_iphone"><span class="icon_txt">QQ音乐</span></i>iPhone版</a></li>
                </ul>
            </div>

            <div class="footer_product">
                <h3 class="footer_tit">特色产品</h3>
                <ul class="footer_product_list">
                    <li class="footer_product_list__item footer_product_list__item--pic"><a href="http://kg.qq.com/?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.k"><i class="icon_qm_kg"></i>全民K歌</a></li>
                    <li class="footer_product_list__item footer_product_list__item--pic"><a href="http://y.qq.com/vip/voice_intro/index.html" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.supersound"><i class="icon_qm_ss"></i>Super Sound</a></li>
                    <li class="footer_product_list__item footer_product_list__item--pic"><a href="http://y.qq.com/y/static/down/qplay.html?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.qplay"><i class="icon_qm_qp"></i>QPlay</a></li>
                    <li class="footer_product_list__item"><a href="http://y.qq.com/cp/homepage.html#/home?from=yqq" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.cp">QQ音乐原创音乐平台</a></li>                   
					<li class="footer_product_list__item"><a href="//y.qq.com/portal/mv/mv_upload.html" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.ugc">上传视频</a></li>
                    <li class="footer_product_list__item"><a href="http://y.qq.com/y/static/down/car_introduce.html" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.car_play">车载互联</a></li>
                    <li class="footer_product_list__item"><a href="http://y.qq.com/yanchu/?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.yanchu">QQ演出</a></li>
                </ul>
            </div>

            <div class="footer_link">
                <h3 class="footer_tit">合作链接</h3>
                <!-- 显示全部 footer_link_list--show -->
                <ul class="footer_link_list">
                    <li class="footer_link_list__item"><a href="//y.qq.com/portal/company_detail.html?id=297" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">CJ E&amp;M</a></li>
                    <li class="footer_link_list__item"><a href="http://v.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯视频</a></li>
                    <li class="footer_link_list__item"><a href="http://z.qzone.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">手机QQ空间</a></li>
                    <li class="footer_link_list__item"><a href="http://im.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">最新版QQ</a></li>
                    <li class="footer_link_list__item"><a href="http://e.qq.com/index.shtml" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯社交广告</a></li>
                    <li class="footer_link_list__item"><a href="http://guanjia.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">电脑管家</a></li>
                    <li class="footer_link_list__item"><a href="http://browser.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">QQ浏览器</a></li>
                    <li class="footer_link_list__item"><a href="http://huabao.qzone.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">画报</a></li>
                    <li class="footer_link_list__item"><a href="http://act.qzone.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">黄钻活动</a></li>
                    <li class="footer_link_list__item"><a href="http://xing.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">星钻</a></li>
                    <li class="footer_link_list__item"><a href="http://www.weiyun.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯微云</a></li>
                    <li class="footer_link_list__item js_last" style="display:none;"><a href="http://fm.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">企鹅FM</a></li>
                    <li class="footer_link_list__item"><a href="javascript:;" class="js_footer_more">更多</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="https://www.qcloud.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="http://buluo.qq.com/ " target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">兴趣部落</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="https://ke.qq.com/?from=100 " target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯课堂</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="http://yunsou.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云搜</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="http://bbs.qcloud.com/ " target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云论坛</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="http://www.znds.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">智能电视网</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="http://www.dangbei.com/ " target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">当贝市场</a></li>
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

            <p>Copyright &copy; 1998 - <script type="text/javascript">document.write(new Date().getFullYear());</script>2017 Tencent. <a target="_blank" href="http://www.tencent.com/en-us/le/copyrightstatement.shtml" rel="nofollow" title="All Rights Reserved.">All Rights Reserved.</a></p>
	<p>腾讯公司 <a target="_blank" href="http://www.tencent.com/zh-cn/le/copyrightstatement.shtml" rel="nofollow" title="版权所有">版权所有</a> <a target="_blank" href="http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm" rel="nofollow" title="腾讯网络文化经营许可证">腾讯网络文化经营许可证</a></p>
        </div>
    </div>
</div>




<a href="javascript:;" class="btn_bottom_top sprite js_btn_top" style="display: none;"><span class="icon_txt">返回顶部</span></a><a href="javascript:;" class="btn_bottom_feedback sprite js_btn_feedback"><span class="icon_txt">意见反馈</span></a><a href="javascript:;" class="btn_bottom_player js_openplayer"><span class="icon_txt">播放器</span></a><div id="divdialog_0"></div><embed type="application/tecent-qqmusichelper-plugin" id="QQMusicHelper" height="30" width="40"></body></html>

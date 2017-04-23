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
    <meta name="keywords" content="周杰伦,音乐,QQ音乐,在线听歌,音乐下载,音乐播放器,音乐网站,MV,巅峰榜,音乐排行榜,翻译歌曲,热门歌曲,经典老歌">
    <meta name="description" content="QQ音乐是腾讯公司推出的一款免费音乐服务，海量音乐在线试听、最流行音乐在线首发、歌词翻译、手机铃声下载、高品质音乐试听、正版音乐下载、免费空间背景音乐设置、MV观看等，是互联网音乐播放和下载的首选">
    <meta name="mobile-agent" content="format==[html5];url=//m.y.qq.com">
    <meta name="applicable-device" content="pc">
    <title>周杰伦 - QQ音乐 - 听我想听的歌!</title>
    <link rel="canonical" href="//y.qq.com/n/yqq/singer/0025NhlN2yWrP4.html">
<script type="text/javascript">
    var _speedMark = new Date();
</script>
          
<script id="requirenode" async="" src="js/album.js"></script>
    <link rel="stylesheet" href="//y.gtimg.cn/mediastyle/yqq/layout0110.css?max_age=25920000&amp;v=20160830">
    <link rel="stylesheet" href="//y.gtimg.cn/mediastyle/yqq/singer_detail.css?max_age=25920000">
<style type="text/css">.emojicon-m {min-height: 1em !important; min-width: 1em !important; max-height: 1em !important;max-width: 1em !important;vertical-align: middle !important;float: none !important;background-repeat:no-repeat;background-position:center center;	background-size: contain;display: inline-block;}</style><style id="style-1-cropbar-clipper">/* Copyright 2014 Evernote Corporation. All rights reserved. */
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
                        <input class="search_input__input" aria-label="请输入搜索内容" placeholder="张靓颖" accesskey="s" type="text">
                        <button class="search_input__btn"><i class="icon_search"></i><span class="icon_txt">搜索</span></button>
                    </div>
                <div class="js_smartbox"><div class="mod_search_other" style="">
            <div class="search_hot">
                <dl class="search_hot__list" aria-labelledy="search_hot__tit">
                    <dt class="search_hot__tit">热门搜索</dt>
                    <dd>
						
                        <a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="五月天">
                            <span class="search_hot__number">1</span>
                            <span class="search_hot__name">五月天</span>
                            <span class="search_hot__listen">16.2万</span>
                        </a>
						
                        <a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="皮皮虾我们走">
                            <span class="search_hot__number">2</span>
                            <span class="search_hot__name">皮皮虾我们走</span>
                            <span class="search_hot__listen">15.8万</span>
                        </a>
						
                        <a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="许嵩">
                            <span class="search_hot__number">3</span>
                            <span class="search_hot__name">许嵩</span>
                            <span class="search_hot__listen">11.2万</span>
                        </a>
						
                        <a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="庄心妍">
                            <span class="search_hot__number">4</span>
                            <span class="search_hot__name">庄心妍</span>
                            <span class="search_hot__listen">10.3万</span>
                        </a>
						
                        <a href="javascript:;" class="search_hot__link js_smartbox_search js_left" data-name="男孩">
                            <span class="search_hot__number">5</span>
                            <span class="search_hot__name">男孩</span>
                            <span class="search_hot__listen">10.1万</span>
                        </a>
						
                    </dd>
                
            </dl></div>

            <div class="search_history">
                <dl class="search_history__list">
                    <dt class="search_history__tit">搜索历史<a href="javascript:;" class="search_history__clear js_smartbox_delete_all"><i class="icon_history_clear"></i><span class="icon_txt">清空</span></a></dt>
		
                    <dd class="search_history__item">
                        <a href="javascript:;" class="search_history__link js_smartbox_search js_left" data-name="朴树">朴树</a>
                        <a href="javascript:;" class="search_history__delete js_smartbox_delete" data-name="朴树" title="删除"><i class="search_history__icon_delete"></i><span class="icon_txt">删除</span></a>
                    </dd>
	        
                    <dd class="search_history__item">
                        <a href="javascript:;" class="search_history__link js_smartbox_search js_left" data-name="周杰伦">周杰伦</a>
                        <a href="javascript:;" class="search_history__delete js_smartbox_delete" data-name="周杰伦" title="删除"><i class="search_history__icon_delete"></i><span class="icon_txt">删除</span></a>
                    </dd>
	        
                    <dd class="search_history__item">
                        <a href="javascript:;" class="search_history__link js_smartbox_search js_left" data-name="苏打绿">苏打绿</a>
                        <a href="javascript:;" class="search_history__delete js_smartbox_delete" data-name="苏打绿" title="删除"><i class="search_history__icon_delete"></i><span class="icon_txt">删除</span></a>
                    </dd>
	        
                    <dd class="search_history__item">
                        <a href="javascript:;" class="search_history__link js_smartbox_search js_left" data-name="rihanna">rihanna</a>
                        <a href="javascript:;" class="search_history__delete js_smartbox_delete" data-name="rihanna" title="删除"><i class="search_history__icon_delete"></i><span class="icon_txt">删除</span></a>
                    </dd>
	        
                    <dd class="search_history__item">
                        <a href="javascript:;" class="search_history__link js_smartbox_search js_left" data-name="南征北战">南征北战</a>
                        <a href="javascript:;" class="search_history__delete js_smartbox_delete" data-name="南征北战" title="删除"><i class="search_history__icon_delete"></i><span class="icon_txt">删除</span></a>
                    </dd>
	        
                </dl>
            </div></div></div></div>
        <div class="header__opt">

               
                <!-- 未登录 -->

            </div>
        </div>
    </div>
    <!-- 头部 E -->

	
<div class="main">
        <div class="mod_data">
            <span class="data__cover">
                <a class="js_goto_tab js_none_index" data-stat="y_new.singer.thistab.singer_pic" data-tab="index" href="//y.qq.com/n/yqq/singer/0025NhlN2yWrP4.html" style="display:none;"><img src="${singerDetails.singerIconSrc }" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000';this.onerror=null;" alt="${singerDetails.singerName }" class="data__photo"></a>
		<img src="${singerDetails.singerIconSrc }" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000';this.onerror=null;" alt="singerDetails" class="data__photo js_index">
            </span>
            <div class="data__cont">
                <div class="data__name">
                    <h1 class="data__name_txt js_none_index" style="display:none;"><a class="js_goto_tab" data-stat="y_new.singer.thistab.singer_name" title="周杰伦" data-tab="index" href="//y.qq.com/n/yqq/singer/0025NhlN2yWrP4.html">${singerDetails.singerName }</a></h1>
		    <h1 class="data__name_txt js_index" title="${singerDetails.singerName }"> ${singerDetails.singerName }</h1>
                </div>

                <div class="data__desc" id="singer_desc">
                    <div class="data__desc_txt" id="short_desc">
${singerDetails.singerDes }






</div>
                    <a href="javascript:;" class="js_desc" data-left="0" data-stat="y_new.singer.header.more_info" data-top="0" data-target="popup_data_detail" style="">[更多]</a>
                </div>

                <ul class="mod_data_statistic">
		
                    <li class="data_statistic__item">
                        <a href="//y.qq.com/n/yqq/singer/0025NhlN2yWrP4.html#tab=song&amp;" class="js_goto_tab" data-stat="y_new.singer.header.song_tab" data-tab="song"><span class="data_statistic__tit">单曲</span><strong class="data_statistic__number">341</strong></a>
                    </li>
		
		
                    <li class="data_statistic__item">
                        <a href="//y.qq.com/n/yqq/singer/0025NhlN2yWrP4.html#tab=album&amp;" class="js_goto_tab" data-stat="y_new.singer.header.album_tab" data-tab="album"><span class="data_statistic__tit">专辑</span><strong class="data_statistic__number">30</strong></a>
                    </li>
		
		
                    <li class="data_statistic__item data_statistic__item--last">
                        <a href="//y.qq.com/n/yqq/singer/0025NhlN2yWrP4.html#tab=mv&amp;" class="js_goto_tab" data-stat="y_new.singer.header.mv_tab" data-tab="mv"><span class="data_statistic__tit">MV</span><strong class="data_statistic__number">555</strong></a>
                    </li>
		
                </ul>
                
                <div class="data__actions" role="toolbar">
			
                    <a href="//y.qq.com/portal/player.html" class="mod_btn_green js_singer_radio"><i class="mod_btn_green__icon_play"></i>播放歌手热门歌曲</a>
                    <a href="javascript:;" class="mod_btn js_follow"><i class="mod_btn__icon_yes" data-status="2"></i>已关注 984.8万</a>
		    
                </div>
            </div>
        </div>

	<!--首页 begin-->
	<div class="js_tab" id="index_tab">
    
    <div class="mod_part">
            <div class="part__hd">
                <h2 class="part__tit">热门歌曲</h2> 
		
                <a href="//y.qq.com/n/yqq/singer/0025NhlN2yWrP4.html#tab=song&amp;" class="part__more js_goto_tab" data-stat="y_new.singer.index.song_all" data-tab="song">全部<i class="icon_part_arrow sprite"></i></a>
		
            </div>

            <div class="mod_songlist">
                <ul class="songlist__header">
                    <li class="songlist__edit songlist__edit--check">
                        <input class="songlist__checkbox" type="checkbox">
                    </li>
                    <li class="songlist__header_name">歌曲</li>
                    <li class="songlist__header_album">专辑</li>
                    <li class="songlist__header_time">时长</li>
                </ul>

                <ul class="songlist__list">

	<c:forEach items="${singleSingerSongs }" var="s" varStatus="status">
		<li mid="108756223" ix="${status.index }">
	    <div class="songlist__item" onmouseover="this.className=(this.className+' songlist__item--hover')" onmouseout="this.className=this.className.replace(/ songlist__item--hover/, '')">
		<div class="songlist__edit songlist__edit--check">
		    <input class="songlist__checkbox" type="checkbox">
		</div> 
		
		<div class="songlist__number">${status.count }</div>
		
		<div class="songlist__songname">
		    <span class="songlist__songname_txt"><a href="https://y.qq.com/n/yqq/song/002KZ58u4DHUMf.html" class="js_song" title="${s.songName }">${s.songName }</a></span>
					    
						<i class="songlist__icon songlist__icon_exclusive" title="独家"></i>
					    
					     
						<a href="https://y.qq.com/n/yqq/mv/v/d0021319xxj.html" class="songlist__icon songlist__icon_mv" target="_blank" title="MV"><span class="icon_txt">MV</span></a>
					     
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
		<div class="songlist__album">
			<a href="albumAction!goIntoAlbumDetails.action?dvd.dvdName=${s.dvd.dvdName }" data-albummid="001NPMUu1BjDQU" data-albumid="1632294" title="${s.dvd.dvdName }" class="album_name">${s.dvd.dvdName }</a>
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
    
    
        <div class="mod_part">
            <div class="part__hd">
                <h2 class="part__tit">专辑</h2>
		
                <a href="//y.qq.com/n/yqq/singer/0025NhlN2yWrP4.html#tab=album&amp;" class="part__more js_goto_tab" data-stat="y_new.singer.index.album_all" data-tab="album">全部<i class="icon_part_arrow sprite"></i></a>
		
            </div>
            <div class="mod_playlist">
                <ul class="playlist__list" id="albumlist">
                    <li class="playlist__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="003RMaRI1iFoYd" data-albumid="1458791">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="https://y.qq.com/n/yqq/album/003RMaRI1iFoYd.html" class="js_album" data-stat="y_new.singer.index.album_pic" data-albummid="003RMaRI1iFoYd" data-albumid="1458791"><img src="//y.gtimg.cn/music/photo_new/T002R300x300M000003RMaRI1iFoYd.jpg?max_age=2592000" alt="周杰伦的床边故事" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__icon_play js_play" data-stat="y_new.singer.index.album_play"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="https://y.qq.com/n/yqq/album/003RMaRI1iFoYd.html" title="周杰伦的床边故事" class="js_album" data-stat="y_new.singer.index.album_name" data-albummid="003RMaRI1iFoYd" data-albumid="1458791">周杰伦的床边故事</a></span></h4>
                            <div class="playlist__other">
                                2016-06-24
                            </div>
                            <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="003RMaRI1iFoYd"><span class="icon_txt">更多</span></a>
                        </div>
                    </li>

                    <li class="playlist__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="004c8Md02WHHju" data-albumid="1366240">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="https://y.qq.com/n/yqq/album/004c8Md02WHHju.html" class="js_album" data-stat="y_new.singer.index.album_pic" data-albummid="004c8Md02WHHju" data-albumid="1366240"><img src="//y.gtimg.cn/music/photo_new/T002R300x300M000004c8Md02WHHju.jpg?max_age=2592000" alt="周杰伦魔天伦世界巡回演唱会" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__icon_play js_play" data-stat="y_new.singer.index.album_play"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="https://y.qq.com/n/yqq/album/004c8Md02WHHju.html" title="周杰伦魔天伦世界巡回演唱会" class="js_album" data-stat="y_new.singer.index.album_name" data-albummid="004c8Md02WHHju" data-albumid="1366240">周杰伦魔天伦世界巡回演唱会</a></span></h4>
                            <div class="playlist__other">
                                2016-05-10
                            </div>
                            <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="004c8Md02WHHju"><span class="icon_txt">更多</span></a>
                        </div>
                    </li>

                    <li class="playlist__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="001uJFiE0tbGGa" data-albumid="1306793">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="https://y.qq.com/n/yqq/album/001uJFiE0tbGGa.html" class="js_album" data-stat="y_new.singer.index.album_pic" data-albummid="001uJFiE0tbGGa" data-albumid="1306793"><img src="//y.gtimg.cn/music/photo_new/T002R300x300M000001uJFiE0tbGGa.jpg?max_age=2592000" alt="英雄" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__icon_play js_play" data-stat="y_new.singer.index.album_play"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="https://y.qq.com/n/yqq/album/001uJFiE0tbGGa.html" title="英雄" class="js_album" data-stat="y_new.singer.index.album_name" data-albummid="001uJFiE0tbGGa" data-albumid="1306793">英雄</a></span></h4>
                            <div class="playlist__other">
                                2016-03-24
                            </div>
                            <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="001uJFiE0tbGGa"><span class="icon_txt">更多</span></a>
                        </div>
                    </li>

                    <li class="playlist__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="001V8fw21OdEnP" data-albumid="1268858">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="https://y.qq.com/n/yqq/album/001V8fw21OdEnP.html" class="js_album" data-stat="y_new.singer.index.album_pic" data-albummid="001V8fw21OdEnP" data-albumid="1268858"><img src="//y.gtimg.cn/music/photo_new/T002R300x300M000001V8fw21OdEnP.jpg?max_age=2592000" alt="Try" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__icon_play js_play" data-stat="y_new.singer.index.album_play"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="https://y.qq.com/n/yqq/album/001V8fw21OdEnP.html" title="Try" class="js_album" data-stat="y_new.singer.index.album_name" data-albummid="001V8fw21OdEnP" data-albumid="1268858">Try</a></span></h4>
                            <div class="playlist__other">
                                2016-01-06
                            </div>
                            <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="001V8fw21OdEnP"><span class="icon_txt">更多</span></a>
                        </div>
                    </li>

                    <li class="playlist__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="001uqejs3d6EID" data-albumid="852856">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="https://y.qq.com/n/yqq/album/001uqejs3d6EID.html" class="js_album" data-stat="y_new.singer.index.album_pic" data-albummid="001uqejs3d6EID" data-albumid="852856"><img src="//y.gtimg.cn/music/photo_new/T002R300x300M000001uqejs3d6EID.jpg?max_age=2592000" alt="哎呦，不错哦" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__icon_play js_play" data-stat="y_new.singer.index.album_play"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="https://y.qq.com/n/yqq/album/001uqejs3d6EID.html" title="哎呦，不错哦" class="js_album" data-stat="y_new.singer.index.album_name" data-albummid="001uqejs3d6EID" data-albumid="852856">哎呦，不错哦</a></span></h4>
                            <div class="playlist__other">
                                2014-12-26
                            </div>
                            <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="001uqejs3d6EID"><span class="icon_txt">更多</span></a>
                        </div>
                    </li>
</ul>
            </div>
        </div>
    
    
    
        <div class="mod_part">
            <div class="part__hd">
                <h2 class="part__tit">MV</h2>
		
                <a href="//y.qq.com/n/yqq/singer/0025NhlN2yWrP4.html#tab=mv&amp;" class="part__more js_goto_tab" data-stat="y_new.singer.index.mv_all" data-tab="mv">全部<i class="icon_part_arrow sprite"></i></a>
		
            </div>
            <div class="mod_mv">
                <ul class="mv_list__list" id="mvlist">
                            <li class="mv_list__item" data-vid="b0020d8wsqm" data-id="735295">
                                <div class="mv_list__item_box">
                                    <a href="https://y.qq.com/n/yqq/mv/v/b0020d8wsqm.html#stat=y_new.singer.index.mv_play" class="mv_list__cover mod_cover js_mv" data-stat="y_new.singer.index.mv_play" data-vid="b0020d8wsqm" data-id="735295" hidefocus="true">
                                        <img class="mv_list__pic" src="//shp.qpic.cn/qqvideo_ori/0/b0020d8wsqm_360_204/0" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;" alt="前世情人">
                                        <i class="mod_cover__icon_play"></i>
                                    </a>
                                    <h3 class="mv_list__title"><a href="https://y.qq.com/n/yqq/mv/v/b0020d8wsqm.html#stat=y_new.singer.index.mv_name" class="js_mv" data-stat="y_new.singer.index.mv_name" data-vid="b0020d8wsqm" data-id="735295" title="前世情人">前世情人</a></h3>
				    <div class="mv_list__info"><span class="mv_list__listen"><i class="mv_list__listen_icon sprite"></i>2731.4万</span></div>
				    
                                </div>
                            </li>
			
                            <li class="mv_list__item" data-vid="u00222le4ox" data-id="1053277">
                                <div class="mv_list__item_box">
                                    <a href="https://y.qq.com/n/yqq/mv/v/u00222le4ox.html#stat=y_new.singer.index.mv_play" class="mv_list__cover mod_cover js_mv" data-stat="y_new.singer.index.mv_play" data-vid="u00222le4ox" data-id="1053277" hidefocus="true">
                                        <img class="mv_list__pic" src="//shp.qpic.cn/qqvideo_ori/0/u00222le4ox_360_204/0" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;" alt="告白气球">
                                        <i class="mod_cover__icon_play"></i>
                                    </a>
                                    <h3 class="mv_list__title"><a href="https://y.qq.com/n/yqq/mv/v/u00222le4ox.html#stat=y_new.singer.index.mv_name" class="js_mv" data-stat="y_new.singer.index.mv_name" data-vid="u00222le4ox" data-id="1053277" title="告白气球">告白气球</a></h3>
				    <div class="mv_list__info"><span class="mv_list__listen"><i class="mv_list__listen_icon sprite"></i>1422.9万</span></div>
				    
                                </div>
                            </li>
			
                            <li class="mv_list__item" data-vid="m00119xeo83" data-id="177522">
                                <div class="mv_list__item_box">
                                    <a href="https://y.qq.com/n/yqq/mv/v/m00119xeo83.html#stat=y_new.singer.index.mv_play" class="mv_list__cover mod_cover js_mv" data-stat="y_new.singer.index.mv_play" data-vid="m00119xeo83" data-id="177522" hidefocus="true">
                                        <img class="mv_list__pic" src="//shp.qpic.cn/qqvideo_ori/0/m00119xeo83_360_204/0" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;" alt="红尘客栈">
                                        <i class="mod_cover__icon_play"></i>
                                    </a>
                                    <h3 class="mv_list__title"><a href="https://y.qq.com/n/yqq/mv/v/m00119xeo83.html#stat=y_new.singer.index.mv_name" class="js_mv" data-stat="y_new.singer.index.mv_name" data-vid="m00119xeo83" data-id="177522" title="红尘客栈">红尘客栈</a></h3>
				    <div class="mv_list__info"><span class="mv_list__listen"><i class="mv_list__listen_icon sprite"></i>1272.5万</span></div>
				    
                                </div>
                            </li>
			
                            <li class="mv_list__item" data-vid="o0011hremh8" data-id="179634">
                                <div class="mv_list__item_box">
                                    <a href="https://y.qq.com/n/yqq/mv/v/o0011hremh8.html#stat=y_new.singer.index.mv_play" class="mv_list__cover mod_cover js_mv" data-stat="y_new.singer.index.mv_play" data-vid="o0011hremh8" data-id="179634" hidefocus="true">
                                        <img class="mv_list__pic" src="//shp.qpic.cn/qqvideo_ori/0/o0011hremh8_360_204/0" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;" alt="公公偏头痛">
                                        <i class="mod_cover__icon_play"></i>
                                    </a>
                                    <h3 class="mv_list__title"><a href="https://y.qq.com/n/yqq/mv/v/o0011hremh8.html#stat=y_new.singer.index.mv_name" class="js_mv" data-stat="y_new.singer.index.mv_name" data-vid="o0011hremh8" data-id="179634" title="公公偏头痛">公公偏头痛</a></h3>
				    <div class="mv_list__info"><span class="mv_list__listen"><i class="mv_list__listen_icon sprite"></i>1190.0万</span></div>
				    
                                </div>
                            </li>
			
                            <li class="mv_list__item" data-vid="d0020okmb5a" data-id="752467">
                                <div class="mv_list__item_box">
                                    <a href="https://y.qq.com/n/yqq/mv/v/d0020okmb5a.html#stat=y_new.singer.index.mv_play" class="mv_list__cover mod_cover js_mv" data-stat="y_new.singer.index.mv_play" data-vid="d0020okmb5a" data-id="752467" hidefocus="true">
                                        <img class="mv_list__pic" src="//shp.qpic.cn/qqvideo_ori/0/d0020okmb5a_360_204/0" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;" alt="不该 (with aMEI)">
                                        <i class="mod_cover__icon_play"></i>
                                    </a>
                                    <h3 class="mv_list__title"><a href="https://y.qq.com/n/yqq/mv/v/d0020okmb5a.html#stat=y_new.singer.index.mv_name" class="js_mv" data-stat="y_new.singer.index.mv_name" data-vid="d0020okmb5a" data-id="752467" title="不该 (with aMEI)">不该 (with aMEI)</a></h3>
				    <div class="mv_list__info"><span class="mv_list__listen"><i class="mv_list__listen_icon sprite"></i>1144.8万</span></div>
				    
                                </div>
                            </li>
			</ul>
            </div>
        </div>
    
    
        <div class="mod_part" id="similar" style="">
            <div class="part__hd">
                <h2 class="part__tit">相似歌手</h2>
            </div>
            <div class="mod_singer_list">
                <ul class="singer_list__list">	
                    <li class="singer_list__item">
                        <div class="singer_list__item_box">
                            <a href="https://y.qq.com/n/yqq/singer/000ZVS6E1f6f0d.html#stat=y_new.singer.index.same_singers" class="singer_list__cover js_singer" data-stat="y_new.singer.index.same_singers" data-mid="000ZVS6E1f6f0d" data-id="4658" title="杨丞琳" hidefocus="true">
                                <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000';this.onerror=null;" src="//y.gtimg.cn/music/photo_new/T001R150x150M000000ZVS6E1f6f0d.jpg?max_age=2592000" alt="杨丞琳">
                            </a>
                            <h3 class="singer_list__title"><a href="https://y.qq.com/n/yqq/singer/000ZVS6E1f6f0d.html#stat=y_new.singer.index.same_singers" class="js_singer" data-stat="y_new.singer.index.same_singers" data-mid="000ZVS6E1f6f0d" data-id="4658" title="杨丞琳">杨丞琳</a></h3>
                        </div>
                    </li>
	
                    <li class="singer_list__item">
                        <div class="singer_list__item_box">
                            <a href="https://y.qq.com/n/yqq/singer/003vyG9q2klWs4.html#stat=y_new.singer.index.same_singers" class="singer_list__cover js_singer" data-stat="y_new.singer.index.same_singers" data-mid="003vyG9q2klWs4" data-id="4351" title="范玮琪" hidefocus="true">
                                <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000';this.onerror=null;" src="//y.gtimg.cn/music/photo_new/T001R150x150M000003vyG9q2klWs4.jpg?max_age=2592000" alt="范玮琪">
                            </a>
                            <h3 class="singer_list__title"><a href="https://y.qq.com/n/yqq/singer/003vyG9q2klWs4.html#stat=y_new.singer.index.same_singers" class="js_singer" data-stat="y_new.singer.index.same_singers" data-mid="003vyG9q2klWs4" data-id="4351" title="范玮琪">范玮琪</a></h3>
                        </div>
                    </li>
	
                    <li class="singer_list__item">
                        <div class="singer_list__item_box">
                            <a href="https://y.qq.com/n/yqq/singer/004GPm8B362txY.html#stat=y_new.singer.index.same_singers" class="singer_list__cover js_singer" data-stat="y_new.singer.index.same_singers" data-mid="004GPm8B362txY" data-id="146" title="谢霆锋" hidefocus="true">
                                <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000';this.onerror=null;" src="//y.gtimg.cn/music/photo_new/T001R150x150M000004GPm8B362txY.jpg?max_age=2592000" alt="谢霆锋">
                            </a>
                            <h3 class="singer_list__title"><a href="https://y.qq.com/n/yqq/singer/004GPm8B362txY.html#stat=y_new.singer.index.same_singers" class="js_singer" data-stat="y_new.singer.index.same_singers" data-mid="004GPm8B362txY" data-id="146" title="谢霆锋">谢霆锋</a></h3>
                        </div>
                    </li>
	
                    <li class="singer_list__item">
                        <div class="singer_list__item_box">
                            <a href="https://y.qq.com/n/yqq/singer/002cENGP2BtEVR.html#stat=y_new.singer.index.same_singers" class="singer_list__cover js_singer" data-stat="y_new.singer.index.same_singers" data-mid="002cENGP2BtEVR" data-id="62" title="任贤齐" hidefocus="true">
                                <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000';this.onerror=null;" src="//y.gtimg.cn/music/photo_new/T001R150x150M000002cENGP2BtEVR.jpg?max_age=2592000" alt="任贤齐">
                            </a>
                            <h3 class="singer_list__title"><a href="https://y.qq.com/n/yqq/singer/002cENGP2BtEVR.html#stat=y_new.singer.index.same_singers" class="js_singer" data-stat="y_new.singer.index.same_singers" data-mid="002cENGP2BtEVR" data-id="62" title="任贤齐">任贤齐</a></h3>
                        </div>
                    </li>
	
                    <li class="singer_list__item">
                        <div class="singer_list__item_box">
                            <a href="https://y.qq.com/n/yqq/singer/000GDDuQ3sGQiT.html#stat=y_new.singer.index.same_singers" class="singer_list__cover js_singer" data-stat="y_new.singer.index.same_singers" data-mid="000GDDuQ3sGQiT" data-id="264" title="王菲" hidefocus="true">
                                <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000';this.onerror=null;" src="//y.gtimg.cn/music/photo_new/T001R150x150M000000GDDuQ3sGQiT.jpg?max_age=2592000" alt="王菲">
                            </a>
                            <h3 class="singer_list__title"><a href="https://y.qq.com/n/yqq/singer/000GDDuQ3sGQiT.html#stat=y_new.singer.index.same_singers" class="js_singer" data-stat="y_new.singer.index.same_singers" data-mid="000GDDuQ3sGQiT" data-id="264" title="王菲">王菲</a></h3>
                        </div>
                    </li>
</ul>
            </div>
        </div>
	</div>
	<!--首页 end-->
	
        <!-- 单曲tab begin -->
        <div class="mod_part_detail js_tab" id="song_tab" style="display:none;">
            <div class="part_detail__hd">
                <h2 class="part_detail__tit">单曲 341</h2>
            </div>
	    
	<div class="none_txt" style="display:none;">
		<i class="none_txt__symbol"></i>
		<p>该歌手还没有发表过单曲</p>
	</div>
	   <div class="js_content">
		    <div class="mod_songlist_toolbar">
			<a href="//y.qq.com/portal/player.html" class="mod_btn js_all_play" data-stat="y_new.singer.song.playall"><i class="mod_btn__icon_play"></i>播放全部</a>
			<a href="javascript:;" class="mod_btn js_all_fav" data-stat="y_new.singer.song.addall"><i class="mod_btn__icon_add"></i>添加到</a>
			<a href="javascript:;" class="mod_btn js_all_down" data-stat="y_new.singer.song.downloadall"><i class="mod_btn__icon_down"></i>下载</a>
			<a href="javascript:;" class="mod_btn js_batch" data-stat="y_new.singer.song.batch"><i class="mod_btn__icon_batch"></i>批量操作</a>
		    </div>

		    <div class="mod_songlist">
			<ul class="songlist__header">
			    <li class="songlist__edit songlist__edit--check">
				<input class="songlist__checkbox js_check_all" type="checkbox">
			    </li>
			    <li class="songlist__header_name">歌曲</li>
			    <li class="songlist__header_album">专辑</li>
			    <li class="songlist__header_time">时长</li>
			</ul>

			<ul class="songlist__list" id="song_box">
			</ul>
		    </div>
	    </div>
        </div>
        <!-- 单曲tab end -->
	
	<!-- 专辑tab begin -->
        <div class="mod_part_detail js_tab" id="album_tab" style="display:none;">
            <div class="part_detail__hd">
                <h2 class="part_detail__tit">专辑 30</h2>
            </div>
	<div class="none_txt" style="display:none;">
		<i class="none_txt__symbol"></i>
		<p>该歌手还没有发表过专辑</p>
	</div>
            <div class="mod_playlist js_content">
                <ul class="playlist__list" id="album_box">
                </ul>
            </div>
        </div>
        <!-- 专辑tab end -->
	
	<!-- MV tab begin -->
	
        <div class="mod_part_detail js_tab" id="mv_tab" style="display:none;">
            <div class="part_detail__hd">
                <h2 class="part_detail__tit">MV 555</h2>
            </div>
	<div class="none_txt" style="display:none;">
		<i class="none_txt__symbol"></i>
		<p>该歌手还没有发表过MV</p>
	</div>
            <div class="mod_mv js_content">
                <ul class="mv_list__list" id="mv_box">
                </ul>
            </div>
        </div>
        <!-- MV tab end -->

        <!-- 专辑简介 -->
        <div class="popup_data_detail" id="popup_data_detail" data-aria="popup" style="z-index: 2147483647; display: none;">
            <div class="popup_data_detail__cont"><h3 class="popup_data_detail__tit">歌手简介</h3>

<p>外文名：Jay Chou</p>

<p>国籍：中国</p>

<p>出生地：台湾省新北市</p>

<p>职业：音乐人、制作人、导演、企业家等</p>

<p>代表作品：《龙卷风》、《菊花台》、《青花瓷》、《晴天》</p>

<p>简介：周杰伦（Jay Chou），1979年1月18日出生于台湾省新北市，华语流行男歌手、演员、词曲创作人、MV及电影导演、编剧及制作人。2000年被吴宗宪发掘，发行首张个人专辑《Jay》。2001年发行专辑《范特西》。2002年在中国、新加坡、马来西亚、美国等地举办首场个人世界巡回演唱会。</p><p>2003年登上美国《时代周刊》亚洲版封面人物。</p><p>周杰伦的音乐融合中西方元素，风格多变，四次获得世界音乐大奖最畅销亚洲艺人。凭借专辑《Jay》、《范特西》、《叶惠美》及《跨时代》四次获得金曲奖"最佳国语专辑"奖，并凭借《魔杰座》、《跨时代》获得第20届和第22届金曲奖“最佳国语男歌手”奖；2014年获QQ音乐年度盛典“港台最受欢迎男歌手”及压轴大奖“最佳全能艺人”。</p><p>2015年担任《中国好声音 第四季》导师。</p><p>2005年开始涉足影视，以电影《头文字D》获第42届台湾电影金马奖及第25届香港电影金像奖“最佳新人”奖。</p><p>2007年自立门户，成立JVR（杰威尔）有限公司，自编自导自演的电影《不能说的秘密》获得第44届台湾电影金马奖“年度台湾杰出电影”奖。2009年入选美国CNN亚洲极具影响力人物。2011年以电影《青蜂侠》跻身好莱坞进军国际。2013年自编自导自演第二部电影《天台爱情》取得了不俗的票房与口碑。2014年加盟好莱坞电影《惊天魔盗团2》。</p><p>娱乐圈外，周杰伦在2011年跨界担任华硕（ASUS）笔电外观设计师并入股香港文化传信集团。2012在中国内地开设真爱范特西连锁KTV。</p><p>除了力拼自己的事业，周杰伦还热心公益慈善活动，多次向内地灾区捐款并与众多艺人募款新建希望小学。</p><p>2016年5月，周杰伦发行演唱会专辑《周杰伦魔天伦世界巡回演唱会》。</p>

<p>从艺历程：1997年9月，在自己不知情的情况下，别人帮周杰伦报名参加台湾《超级新人王》娱乐节目，意外获得亚军。以非常奇怪的歌曲参赛，因为害羞，请了朋友演唱，自己伴奏，朋友唱得很烂。吴宗宪从裁判的肩后看了一眼乐谱，大为惊叹。非常地复杂、不是一般的音乐人能够编曲弹奏出来的。当时自己创立阿尔发音乐的吴宗宪，表演结束后走到后台找周杰伦，把他签了下来。</p><p>1998年，咻比嘟哗餐厅驻唱。</p><p>1999年12月，吴宗宪与周杰伦约定十天时间，如果能写出50首歌，帮他从中选出10首出唱片。周杰伦马上创作，十天时间，周杰伦拿出了五十首歌，每一首都写得漂漂亮亮，谱得工工整整。</p><p>2000年11月，以专辑《JAY》出道。</p><p>2001年 ，发行专辑《范特西》，逐步奠定周杰伦华语乐坛领军地位。</p><p>2002年2月，周杰伦在新加坡、马来西亚举办首场个人演唱会。</p><p>2002年4月，个人欧洲版EP－《双截棍（欧版EP）》在欧洲发行。</p><p>2003年7月，全亚洲超过50家电台同步首播《叶惠美》主打歌《以父之名》定7月16日为“周杰伦日”，全亚洲收听率达到8亿人。</p><p>2003年 荣登美国《时代》周刊亚洲版封面人物，该杂志赞许他为“新一代的亚洲音乐天王”。周杰伦是继王菲、张惠妹之后，第3位出现在著名的《时代》杂志封面的华人歌手，也是唯一的一位华人男歌手。</p><p>2004年，根据世界最权威的国际唱片业协会(IFPI)数据，周杰伦唱片年度销量世界排名42，成为21世纪唯一进世界前50名的华人歌手。周杰伦也首次获得世界音乐大奖大中华区最畅销艺人。</p><p>2006年5月18日，周杰伦蜡像亮相香港杜莎夫人蜡像馆。</p><p>2007年，周杰伦在上海八万人体育场开唱，全场爆满。创下史上全世界艺人在挑战该体育场演唱会上的最高纪录。</p><p>2007年，周杰伦完成“THEONE”、“无与伦比”两次世界巡回演唱会，先后在美国康州、内华达州、加拿大、日本东京、新加坡、马来西亚、泰国、香港、台湾、大陆各地区举办多场次个人演唱会。</p><p>2007年4月，杰威尔音乐公司成立。</p><p>2008年，继艺人王力宏、张惠妹、金城武、F4后，成为了美国新闻网第5位CNNTalkAsia采访的对象。</p><p>2008年5·12汶川地震，周杰伦捐款总额超过4200万人民币，全台湾艺人最多，并将个人演唱会改为赈灾演唱会，亲自弹奏《蜗牛》等励志歌曲，高喊“汶川加油！”</p><p>2008年，歌曲《青花瓷》歌词涉及山东、江苏两地高考成为首位歌词出现在高考中的流行歌。之前周杰伦歌词《蜗牛》《上海1943》《听妈妈的话》已被写进中小学教科书中。</p><p>2008年，美国《FastCompany》杂志评选“全球百大创意人”(The100MostCreativePeopleinBusiness)，他与LadyGaga、jay-z成为“唯三”入榜歌手，同时也是唯一亚洲歌手。</p><p> 2008年11月，凭借《我很忙》专辑获得每年在摩洛哥举办的“世界音乐大奖”所颁发的“最高销量歌手（大中华区）”，已连获三届(2006年,2007年,2008年) 打破歌神张学友二连冠的纪录；加上2004年，周杰伦已先后获得四次世界音乐大奖。</p><p>2008年，韩国中央电视台KBS1TV在中秋假日，播出周杰伦自导自演的影片《不能说的秘密》，二度在韩国掀起狂热。之前这部电影已在韩国各大影院上演，在韩国大受欢迎，丝毫不输给韩国本土同期上映的其他影片。</p><p>2008年，在日本武道馆连开两场演唱会，成为继邓丽君、王菲之后第三位在武道馆开唱的华人歌手，也是唯一华人男歌手，演唱会上演唱的中国风歌曲《千里之外》《霍元甲》受到日本fans的强烈欢迎。</p><p>2009年，美国CNN评选亚洲最有影响力的25位人物，周杰伦入围并被形容为 “非凡艺人”。</p><p>2009年7月，周杰伦澳洲巡演，悉尼演唱会票房空降美国公告牌（Billboard）第二，力压世界R＆B天后碧昂斯，成为当年全球单场演唱会票房收入第二的好成绩，也打破了华人在澳洲开唱票房最高纪录。</p><p>2009年，周杰伦完成第三次“2007&mdash;2009世界巡回演唱会”，已先后在美国洛杉矶、拉斯维加斯、康涅狄格州、加拿大多伦多、温哥华、澳大利亚、日本东京、新加坡、马来西亚、泰国、香港、澳门、台湾、大陆各地区举办多场个人演唱会。</p><p>2010年，美国古柏第奴(Cupertino)市长黄少雄，为纪念周杰伦对华人音乐的贡献， 将订本世纪第一个十年最后一天为古柏蒂奴市的“周杰伦日”。</p><p>2010年，周杰伦全球歌曲下载量排名世界第三，仅次于LadyGaga和迈克尔·杰克逊。</p><p>2010年12月，国际小行星命名中心批准，正式将编号为257248的小行星命名为周杰伦星。这颗小行星是由两岸天文爱好者于2009年合作发现的。周杰伦创作了以这颗星为题材的歌曲《爱的飞行日记》。</p><p>2011年，周杰伦以《青蜂侠》进军好莱坞，美国知名电影网站“screencrave”评选出十大最值得期待的新秀演员。将以《青蜂侠》进军海外市场的周杰伦，成为西方媒体眼中的“潜力股”，不仅顺利跻身十强，还成为榜单上唯一一名亚洲演员代表。</p><p>2011年，周杰伦与NBA篮球巨星科比代言雪碧广告，周杰伦创作主题曲《天地一斗》与科比合拍MV，于2011年2月21日 在美国加州洛杉矶首发。歌曲的下载收入将全部捐赠给中国希望工程（已筹得超过200万善款）。</p><p>2012年，周杰伦亲自前往他所捐助的湖南省汨罗市智峰乡希望小学考察善款落实情况，与孩子们互动，亲自弹奏《稻香》励志歌曲，和同学们一起打篮球。</p><p>2012年，周杰伦在新加坡F1（世界一级方程式锦标赛）赛车道开唱，成为首位应F1官方邀请的华人歌手。</p><p>2012年5月，周杰伦以各项指标的绝对领先，登上福布斯中国名人榜第一位。</p><p>2013年5月17日 “魔天伦”世界巡回演唱会在上海奔驰文化中心启动。6月1日周杰伦配音《十万个冷笑话》第9、10集太乙真人；7月11日，周杰伦信主后首部自导自演的新片《天台》首映。周导所属的台北新生命小组教会Jesus Fashion舞团于7月10日 在《天台》首映会上演“天台歌武秀”，吸引媒体与民众注意。该片也受大陆名导张艺谋好评。</p><p>2014年12月10日，专辑《哎呦，不错哦》于iTunes与实体唱片同步预购。</p><p>2015年，加盟第四季《中国好声音》担任导师。</p><p>2016年1月6日，与派伟俊合唱《功夫熊猫3》电影全球主题曲。</p><p>2016年5月，周杰伦发行演唱会专辑《周杰伦魔天伦世界巡回演唱会》。</p>

<p>荣誉记录：【音乐奖项】 </p><p>        2016         第3届QQ音乐年度盛典    QQ音乐年度巅峰人气歌手   （获奖）</p><p>        2016         第3届QQ音乐年度盛典    年度最具影响力演唱会   （获奖）</p><p>        2016         第3届QQ音乐年度盛典    年度音乐全能艺人   （获奖）</p><p>	2015         第19届全球华语榜中榜   华语乐坛跨时代实力创作人    （获奖）    </p><p>        2015         第2届QQ音乐年度盛典    最佳全能艺人    （获奖）    </p><p>        2015         第2届QQ音乐年度盛典    年度最畅销数字专辑  （获奖） </p><p>        2015         第19届全球华语榜中榜    亚洲影响力最受欢迎全能艺人    （获奖）       </p><p>        2014   	第一届   QQ音乐年度盛典港台最受欢迎男歌手   （获奖）</p><p>	2014   	第八届   无线音乐盛典咪咕汇年度最佳人气王   周杰伦   （获奖）</p><p>	2014   	第一届   QQ音乐年度盛典最佳影视原声带   《天台》电影原声带   （获奖）</p><p>	2014   	第一届   QQ音乐年度盛典最佳全能艺人   （获奖）</p><p>	2014   	第36届   香港十大中文金曲   优秀流行国语歌曲奖（银奖）  《红尘客栈》   （获奖）</p><p>	2014   	第八届   无线音乐盛典咪咕汇年度最畅销十大金曲奖   《红尘客栈》   （获奖）</p><p>	2013   	第7届   中国移动无线音乐咪咕汇 年度最佳歌手   十二新作   （获奖）</p><p>	2013   	第7届   中国移动无线音乐咪咕汇 年度最畅销专辑 十二新作  （获奖）</p><p>	2012   	第8届   中国金唱片奖 数字音乐演员   （获奖）</p><p>	2012   	HITO流行音乐奖    年度华语歌曲    水手怕水    （获奖）  ）</p><p>	2012   	百度音乐10年盛典最佳歌手 最佳传唱力歌手 十年领袖   （获奖）</p><p>	2012   	第11届雪碧中国原创音乐流行榜优秀合唱歌曲   天地一斗   （获奖）</p><p>	2012   	第11届雪碧中国原创音乐流行榜 港台地区歌曲   惊叹号   （获奖）</p><p>	2012   	HITO最受欢迎全球华语歌手   （获奖）</p><p>	2012   	第11届雪碧中国原创音乐流行榜优秀专辑   惊叹号   （获奖）</p><p>	2011   	Music Radio中国TOP排行榜 港台地区年度最佳歌手   （获奖）</p><p>	2011   	第17届   Channel V第17届全球华语榜中榜 12530无线音乐年度奖   （获奖）</p><p>	2011   	北京流行音乐中歌榜 年度最佳歌手   （获奖）</p><p>	2011   	兔年春晚我最喜爱的春节联欢晚会评选 歌舞类三等奖   兰亭序   （获奖）</p><p>	2011   	第22届   台湾金曲奖 年度最佳国语歌手 年度最佳国语专辑   跨时代   （获奖）</p><p>	2011   	加拿大、美国电台 推崇奖   （获奖）</p><p>	2011   	新加坡E乐大赏 E乐最佳歌手 E乐最佳作词   雨下一整晚   （获奖）</p><p>	2011   	中华音乐人交流协会 年度10大优良专辑、年度10大优良歌曲   跨时代,阿爸   （获奖）</p><p>	2011   	香港IFPI 国语流行音乐最受欢迎音像   跨时代   （获奖）</p><p>	2011   	雪碧中国原创音乐流行榜 港台地区歌曲   超人不会飞   （获奖）</p><p>	2011   	全球流行音乐金榜 年度最佳专辑   跨时代   （获奖）</p><p>	2011   	第5届   中国移动无线音乐咪咕汇 人气歌手 畅销歌曲   烟花易冷   （获奖）</p><p>	2010   	第16届   Channel V第16届全球华语榜中榜 12530无线音乐年度奖   （获奖）</p><p>	2010   	第10届   全球华语歌曲排行榜 年度20大歌曲   超人不会飞   （获奖）</p><p>	2010   	北京流行音乐中歌榜 港台地区年度最佳专辑   （获奖）</p><p>	2010   	雪碧中国原创音乐流行榜 港台地区歌曲   说好的幸福呢   （获奖）</p><p>	2010   	音乐飙榜 年度最佳专辑 华语年度歌曲   超人不会飞   （获奖）</p><p>	2010   	新加坡金曲奖 年度专辑   跨时代   （获奖）</p><p>	2009   	第7届   Music Radio中国TOP排行榜 中国TOP30歌曲   （获奖）</p><p>	2009   	第4届   KKBOX数位音乐风云榜年度20大华语歌曲冠军   说好的幸福呢   （获奖）</p><p>	2009   	北京流行音乐中歌榜 年度最受欢迎歌手 年度最佳创作歌手 年度最佳制作人   魔杰座)   （获奖）</p><p>	2009   	雪碧榜中国原创音乐流行榜 港台地区歌曲   稻香   （获奖）</p><p>	2009   	中华音乐人交流协会 年度10大专辑   魔杰座   （获奖）</p><p>	2009   	中华音乐人交流协会年度10大单曲   （获奖）</p><p>	2009   	港台地区优秀专辑   魔杰座   （获奖）</p><p>	2008   	HITO流行音乐奖 HITO创作歌手 HITO亚洲传媒歌手 HITO年度10大歌曲   不能说的秘密)   （获奖）</p><p>	2008   	MTV百大歌曲排行榜 百大歌曲前10强   不能说的秘密   （获奖）</p><p>2008   	雪碧中国原创音乐流行榜 港台地区歌曲   菊花台   （获奖）</p><p>	2008   	第2届   中国移动无线音乐咪咕汇 年度最高销量歌手 年度畅销季度歌曲   迷迭香   （获奖）</p><p>	2008   	第19届   台湾金曲奖 最佳歌曲   我很忙   （获奖）</p><p>	2008   	第3届   KKBOX数位音乐风云榜 年度风云歌手 年度最佳男歌手 年度风云10大歌曲   不能说的秘密   （获奖）</p><p>	2008   	第6届   Music Radio中国TOP排行榜 年度最佳唱片 年度畅销歌手 年度最佳创作歌手   （获奖）</p><p>	2007   	中华音乐人交流协会 年度10大优良专辑   依然范特西   （获奖）</p><p>	2007   	第44届   台湾金马奖 年度台湾杰出电影   不能说的秘密   （获奖）</p><p>	2007   	第18届   台湾金曲奖 最佳制作人   霍元甲   （获奖）</p><p>	2007   	第26届   香港金像奖 最佳原创电影歌曲   菊花台   （获奖）</p><p>	2007   	第7届   蒙牛酸酸乳音乐风云榜 最佳歌曲   千里之外   （获奖）</p><p>	2007   	第10届   上海电影节 魅力中国最受欢迎华人影星   （获奖）</p><p>	2006   	香港IFPI 10大销量国语唱片   11月的萧邦   （获奖）</p><p>	2006   	第12届   Channel V第12届全球华语榜中榜 最佳歌手 最受欢迎歌手 最佳创作歌手 最受欢迎音乐录影带   （获奖）</p><p>	2006   	第8届   CCTV MTV音乐盛典 亚太地区杰出艺人奖   （获奖）</p><p>	2006   	第25届   香港金像奖 最佳新人   头文字D   （获奖）</p><p>	2006   	第1届   华众曲宠TVBS华语金曲榜 最佳专辑   11月的萧邦   （获奖）</p><p>	2006   	第1届   KKBOX线上音乐风云榜 年度10大歌曲   夜曲   （获奖）</p><p>	2006   	第6届   事音乐风云榜 三地连颁华语地区最佳歌手 三地连颁华语地区最佳专辑   11月的萧邦   （获奖）</p><p>	2006   	中华音乐人交流协会 年度10大优良专辑   11月的萧邦   （获奖）</p><p>	2006   	HITO流行音乐奖 最受欢迎歌手 HITO10大华语歌曲   夜曲   （获奖）</p><p>	2005   	第16届   台湾金曲奖   （获奖）</p><p>	2005   	第12届   中国歌曲排行榜 年度最受欢迎歌手 年度最受欢迎歌曲   七里香   （获奖）</p><p>	2005   	中华音乐人交流协会 年度10大优良专辑   七里香   （获奖）</p><p>2005   	第12届   东方风云榜颁奖盛典 华语乐坛最受欢迎歌手   （获奖）</p><p>	2005   	ETFM联播网公主与战士票选活动 娱乐圈最佳战士代表   （获奖）</p><p>	2005   	第11届   10大电视广告 最受欢迎明星电视广告   （获奖）</p><p>	2005   	MTV亚洲音乐奖 港台地区最受欢迎歌手   （获奖）</p><p>	2005   	香港IFPI 10大销量国语唱片   七里香   （获奖）</p><p>	2005   	HITO流行音乐奖 HITO最佳歌手 HITO10大最爱DJ专辑 HITO创作歌手   七里香   （获奖）</p><p>	2005   	第5届   全球华语歌曲排行榜 港台地区杰出艺人 年度25大歌曲   七里香   （获奖）</p><p>	2005   	中华音乐人年度10大专辑和单曲 年度10大专辑   七里香   （获奖）</p><p>	2005   	第3届   Music Radio中国TOP排行榜 年度歌曲   七里香   （获奖）</p><p>	2005   	上海F1赛车场 中国赛车运动推广贡献奖   （获奖）</p><p>	2005   	Channel V第11届全球华语榜中榜 最佳歌手 最受欢迎歌手 最佳歌曲   七里香   （获奖）</p><p>	2005   	新城劲爆颁奖典礼新城劲爆创作专辑   11月的萧邦   （获奖）</p><p>	2005   	香港电台10大中文金曲 10大歌曲   七里香   （获奖）</p><p>	2005   	MTV华语地区 年度10大男女歌手   （获奖）</p><p>	2005   	第5届   百事音乐风云榜 港台地区最受欢迎歌手 港台地区10大歌曲   （获奖）</p><p>	2004   	第15届   台湾金曲奖 最佳流行音乐演唱专辑   叶惠美   （获奖）</p><p>	2004   	第11届   届中国歌曲排行榜 港台地区最受欢迎歌手 港台地区最受欢迎歌曲   东风破   （获奖）</p><p>	2004   	MusicIn中国TOP排行榜 台港地区年度歌曲   东风破   （获奖）</p><p>	2004   	第3届   日本MTV音乐录影带奖 入围最佳BUZZASIA港台艺人   （获奖）</p><p>	2004   	第4届   全球华语歌曲排行榜 最受欢迎歌手 最受欢迎创作歌手   （获奖）</p><p>	2004   	莱卡Channel Young风尚颁奖典礼 风尚音乐成就奖   （获奖）</p><p>	2004   	第4届   华语音乐传媒奖 10大国语唱片   叶惠美   （获奖）</p><p>2004   	第4届   百事音乐风云榜 港台地区最受欢迎歌手 港台地区最佳制作人 港台地区最佳专辑   叶惠美)   （获奖）</p><p>	2004   	幽浮劲碟排行榜 《七里香》销量、播歌、票选总成绩冠军   七里香   （获奖）</p><p>	2004   	第10届   0大电视广告 最受欢迎明星电视广告   One 2 Free   （获奖）</p><p>	2004   	新城国语力颁奖典礼 新城国语力亚洲创作歌手   （获奖）</p><p>	2004   	HITO流行音乐奖 HITO亚洲传媒推荐专辑 HITO华语歌曲 HITO最受欢迎歌手 HITO歌手   （获奖）</p><p>	2004   	新加坡金曲奖 最受欢迎歌手 最佳专辑制作人   叶惠美   （获奖）</p><p>	2004   	香港商业电台叱咤乐坛流行榜 叱咤乐坛制作人金奖   （获奖）</p><p>	2004   	MTV亚洲音乐奖 港台地区最受欢迎歌手   （获奖）</p><p>	2004   	中华音乐人交流协会 10大优良专辑   叶惠美   （获奖）</p><p>	2004   	香港IFPI 10大销量国语唱片   叶惠美、寻找周杰伦EP   （获奖）</p><p>	2004   	香港TVB8 最佳作曲   七里香   （获奖）</p><p>	2003   	MTV音乐电台 港台地区最佳歌手   （获奖）</p><p>	2003   	第3届   中国音乐风云榜暨10大金曲颁奖典礼 年度风云人物 最佳制作人   （获奖）</p><p>	2003   	第3届   华语流行音乐传媒奖   （获奖）</p><p>	2003   	第9届   Channel V第9届全球华语音乐榜中榜 最佳创作歌手   （获奖）</p><p>	2003   	香港商业电台叱咤乐坛流行榜 叱咤乐坛制作人银奖   （获奖）</p><p>	2003   	第9届   10大电视广告 最受欢迎明星电视广告   （获奖）</p><p>	2003   	HITO流行音乐奖 HITO歌手 HITO华语歌曲   暗号   （获奖）</p><p>	2003   	MuchIn中国TOP排行榜 年度最佳专辑 年度最佳创作10大金曲   （获奖）</p><p>	2003   	第3届   全球华语歌曲排行榜 最受欢迎歌手   （获奖）</p><p>2003   	新城电台颁奖典礼 亚洲创作歌手 亚洲歌手   （获奖）</p><p>	2003   	香港IFPI 10大销量国语唱片   八度空间   （获奖）</p><p>	2003   	香港10大劲歌金曲 最受欢迎华语歌曲金奖   （获奖）</p><p>	2003   	第2届   MTV亚洲音乐颁奖典礼 港台地区最受欢迎歌手   （获奖）</p><p>	2003   	G-Music风云榜白金音乐奖 白金专辑   八度空间   （获奖）</p><p>	2003   	第14届   台湾金曲奖   （获奖）</p><p>	2003   	新加坡金曲奖 年度畅销歌手   （获奖）</p><p>	2003   	香港电台10大中文金曲 年度最高销量歌手   （获奖）</p><p>	2002   	第13届   台湾金曲奖 最佳流行音乐演唱专辑:   范特西   （获奖）</p><p>	2002   	第8届   Channel V第8届全球华语音乐榜中榜 TOP 20 Hits   （获奖）</p><p>	2002   	第2届   全球华语歌曲排行榜 最佳专辑 最佳制作人 最佳创作歌手   （获奖）</p><p>	2002   	第2届   MTV封神榜音乐奖台北流行音乐节 20大人气歌手   （获奖）</p><p>	2002   	第1届   MTV日本音乐录影带奖   （获奖）</p><p>	2002   	新加坡金曲奖 亚太地区最受推崇歌手 年度最佳畅销专辑   （获奖）</p><p>	2002   	香港商业电台叱咤乐坛流行榜 叱咤乐坛生力军歌手金奖   （获奖）</p><p>	2002   	香港电台10大中文金曲 最有前途新人金奖   （获奖）</p><p>	2002   	香港10大劲歌金曲 最受欢迎华语歌曲金奖   开不了口   （获奖）</p><p>	2002   	新城劲爆颁奖典礼 新城劲爆华语歌曲   星晴   （获奖）</p><p>	2002   	中华音乐人交流协会 年度十大专辑   范特西   （获奖）</p><p>	2002   	香港IFPI 10大销量国语唱片   （获奖）</p><p>	2002   	马来西亚金曲奖 10大歌曲   爱在西元前   （获奖）</p><p>	2002   	香港TVB8 最佳作曲   开不了口   （获奖）</p><p>	2001   	第12届   台湾金曲奖 最佳流行音乐演唱专辑   Jay   （获奖）</p><p>	2001   	第1届   MTV风神榜音乐奖台北流行音乐节 10大人气歌手 新加坡金曲 最佳新人   （获奖）</p><p>	2001   	第1届   全球华语歌曲排行榜 港台地区歌曲   星晴   （获奖）</p><p>	2001   	第1届   金曲红人颁奖典礼 10大华语歌曲   黑色幽默   （获奖）</p><p>	2001   	中华音乐人交流协会 年度10大歌曲   香港TVB8 年度歌曲   星晴   （获奖）</p><p>【电影奖项】</p><p>	2013   	第56届   亚太影展最佳原创电影音乐   天台爱情   （获奖）</p><p>	2011   	第20届   美国MTV电影奖最佳新人奖提名   青蜂侠   （提名）</p><p>        2011         第48届台湾电影金马奖    最佳原创电影歌曲    阿爸（阿爸）    （提名）    </p><p>	2010   	第3届   《手机报电影爱好者》金π奖 读者最喜爱的男演员   （获奖）</p><p>	2008   	第45届   台湾电影金马奖最佳原创电影歌曲提名   周大侠   （获奖）</p><p>        2008         第27届香港电影金像奖    最佳亚洲电影    不能说的秘密    （提名）    </p><p>        2008         第29届大众电影百花奖    最佳男配角    满城尽带黄金甲    （提名）    </p><p>	2007   	第26届   香港电影金像奖入围最佳男配角   满城尽带黄金甲   （提名）</p><p>        2007         第16届上海影评人奖    最佳男演员    满城尽带黄金甲     （获奖）    </p><p>        2007         第26届香港电影金像奖    最佳原创电影歌曲    菊花台（满城尽带黄金甲）   （获奖）    </p><p>	2007         第26届香港电影金像奖    最佳原创电影歌曲    霍元甲（霍元甲）    （提名）    </p><p>        2007   	第44届   台湾电影金马奖杰出电影   不能说的秘密   （获奖）</p><p>	2007   	第44届   台湾电影金马奖最佳视觉   不能说的秘密   （获奖）</p><p>	2007   	第44届   台湾电影金马奖最佳原创电影歌曲   不能说的秘密   （获奖）</p><p>	2006         第25届香港电影金像奖    最佳原创电影歌曲    漂移（头文字D）    （提名）    </p><p>        2006         第42届台湾电影金马奖    最佳原创电影歌曲    漂移（头文字D）    （提名）    </p><p>        2006   	第42届   台湾电影金马奖最佳新人   头文字D   （获奖）</p><p>	2006   	第25届   香港电影金像奖最佳新人   头文字D   （获奖）</p>
</div>
            <i class="popup_data_detail__arrow"></i>
        </div>
    </div> 

    <!-- 跟头图保持一致 -->
    <div class="bg_detail"><i class="bg_detail__pic" style="background-image:url(//y.gtimg.cn/music/photo_new/T001R300x300M0000025NhlN2yWrP4.jpg?max_age=2592000);"></i></div>
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


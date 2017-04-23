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
    <meta name="keywords" content="音乐,QQ音乐,在线听歌,音乐下载,音乐播放器,音乐网站,MV,巅峰榜,音乐排行榜,翻译歌曲,热门歌曲,经典老歌">
    <meta name="description" content="QQ音乐是腾讯公司推出的一款免费音乐服务，海量音乐在线试听、最流行音乐在线首发、歌词翻译、手机铃声下载、高品质音乐试听、正版音乐下载、免费空间背景音乐设置、MV观看等，是互联网音乐播放和下载的首选">
    <meta name="mobile-agent" content="format==[html5];url=http://m.y.qq.com">
    <meta name="applicable-device" content="pc">
    <title>QQ音乐 - 分类歌单</title>
    <link rel="canonical" href="//y.qq.com/portal/playlist.html">
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
    var _speedMark = new Date();
	/*ajax播放歌单里的歌 onclick="javascript:playListSong('${s.songListName}','${s.songListIconSrc}');return false;" href="#"*/
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
</script>
<script id="requirenode" async="" src="js/album.js"></script>

    <link rel="stylesheet" href="//y.gtimg.cn/mediastyle/yqq/layout0110.css?max_age=25920000&amp;v=20160803">
    <link rel="stylesheet" href="//y.gtimg.cn/mediastyle/yqq/playlist.css?max_age=2592000">
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
</style></head>
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
		    <a href="playList.jsp" class="top_subnav__link top_subnav__link--current">分类歌单</a>
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

               

		<!-- 用户信息 -->

        </div>
    </div>
    </div>
    <!-- 头部 E -->

	<div class="mod_loading" id="before_page" style="display: none;"><i class="icon_txt">加载中</i></div>
	 <div class="mod_banner_push" id="p_header" style="display:none;"></div>
    <div class="main" style="">    

        <!-- 标签筛选 -->
        <div class="mod_playlist_tag" id="taglist">
	<div class="js_normal" style="display: none;">

            <div class="playlist_tag__list playlist_tag__list--lang">
                <h3 class="playlist_tag__tit c_tx_thin">语种</h3>
		
                <i class="playlist_tag__line"></i>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="165">国语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="167">英语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="168">韩语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="166">粤语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="169">日语</a></li>
		
		    
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_more_tag">更多<i class="playlist_tag__arrow"></i></a></li>
		    
                </ul>
            </div>
	    
            <div class="popup_tag" style="display:none;">
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="170">小语种</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="203">闽南语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="204">法语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="205">拉丁语</a></li>
		
                </ul>
            </div>
	    

            <div class="playlist_tag__list ">
                <h3 class="playlist_tag__tit c_tx_thin">流派</h3>
		
                <i class="playlist_tag__line"></i>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="6">流行</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="15">轻音乐</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="11">摇滚</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="28">民谣</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="8">R&amp;B</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="153">嘻哈</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="24">电子</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="27">古典</a></li>
		
		    
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_more_tag">更多<i class="playlist_tag__arrow"></i></a></li>
		    
                </ul>
            </div>
	    
            <div class="popup_tag" style="display:none;">
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="18">乡村</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="22">蓝调</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="21">爵士</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="164">新世纪</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="25">拉丁</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="218">后摇</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="219">中国传统</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="220">世界音乐</a></li>
		
                </ul>
            </div>
	    

            <div class="playlist_tag__list ">
                <h3 class="playlist_tag__tit c_tx_thin">主题</h3>
		
                <i class="playlist_tag__line"></i>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="39">ACG</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="136">经典</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="146">网络歌曲</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="133">影视</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="141">KTV热歌</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="131">儿歌</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="145">中国风</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="194">古风</a></li>
		
		    
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_more_tag">更多<i class="playlist_tag__arrow"></i></a></li>
		    
                </ul>
            </div>
	    
            <div class="popup_tag" style="display:none;">
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="148">情歌</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="196">城市</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="197">现场音乐</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="199">背景音乐</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="200">佛教音乐</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="201">UP主</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="202">乐器</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="14">DJ</a></li>
		
                </ul>
            </div>
	    

            <div class="playlist_tag__list ">
                <h3 class="playlist_tag__tit c_tx_thin">心情</h3>
		
                <i class="playlist_tag__line"></i>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="52">伤感</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="122">安静</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="117">快乐</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="116">治愈</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="125">励志</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="59">甜蜜</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="55">寂寞</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="126">宣泄</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="68">思念</a></li>
		
		    
                </ul>
            </div>
	    

            <div class="playlist_tag__list ">
                <h3 class="playlist_tag__tit c_tx_thin">场景</h3>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="78">睡前</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="102">夜店</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="101">学习</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="99">运动</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="85">开车</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="76">约会</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="94">工作</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="81">旅行</a></li>
		
		    
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_more_tag">更多<i class="playlist_tag__arrow"></i></a></li>
		    
                </ul>
            </div>
	    
            <div class="popup_tag" style="display:none;">
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="103">派对</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="222">婚礼</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="223">咖啡馆</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="224">跳舞</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="16">校园</a></li>
		
                </ul>
            </div>
	    

	</div>
	<div class="js_1024" style="">

            <div class="playlist_tag__list playlist_tag__list--lang">
                <h3 class="playlist_tag__tit c_tx_thin">语种</h3>
		
                <i class="playlist_tag__line"></i>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="165">国语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="167">英语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="168">韩语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="166">粤语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="169">日语</a></li>
		
		    
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_more_tag">更多<i class="playlist_tag__arrow"></i></a></li>
		    
                </ul>
            </div>
	    
            <div class="popup_tag" style="display:none;">
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="170">小语种</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="203">闽南语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="204">法语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="205">拉丁语</a></li>
		
                </ul>
            </div>
	    

            <div class="playlist_tag__list ">
                <h3 class="playlist_tag__tit c_tx_thin">流派</h3>
		
                <i class="playlist_tag__line"></i>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="6">流行</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="15">轻音乐</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="11">摇滚</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="28">民谣</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="8">R&amp;B</a></li>
		
		    
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_more_tag">更多<i class="playlist_tag__arrow"></i></a></li>
		    
                </ul>
            </div>
	    
            <div class="popup_tag" style="display:none;">
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="153">嘻哈</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="24">电子</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="27">古典</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="18">乡村</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="22">蓝调</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="21">爵士</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="164">新世纪</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="25">拉丁</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="218">后摇</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="219">中国传统</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="220">世界音乐</a></li>
		
                </ul>
            </div>
	    

            <div class="playlist_tag__list ">
                <h3 class="playlist_tag__tit c_tx_thin">主题</h3>
		
                <i class="playlist_tag__line"></i>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="39">ACG</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="136">经典</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="146">网络歌曲</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="133">影视</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="141">KTV热歌</a></li>
		
		    
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_more_tag">更多<i class="playlist_tag__arrow"></i></a></li>
		    
                </ul>
            </div>
	    
            <div class="popup_tag" style="display:none;">
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="131">儿歌</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="145">中国风</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="194">古风</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="148">情歌</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="196">城市</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="197">现场音乐</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="199">背景音乐</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="200">佛教音乐</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="201">UP主</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="202">乐器</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="14">DJ</a></li>
		
                </ul>
            </div>
	    

            <div class="playlist_tag__list ">
                <h3 class="playlist_tag__tit c_tx_thin">心情</h3>
		
                <i class="playlist_tag__line"></i>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="52">伤感</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="122">安静</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="117">快乐</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="116">治愈</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="125">励志</a></li>
		
		    
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_more_tag">更多<i class="playlist_tag__arrow"></i></a></li>
		    
                </ul>
            </div>
	    
            <div class="popup_tag" style="display:none;">
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="59">甜蜜</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="55">寂寞</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="126">宣泄</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="68">思念</a></li>
		
                </ul>
            </div>
	    

            <div class="playlist_tag__list ">
                <h3 class="playlist_tag__tit c_tx_thin">场景</h3>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="78">睡前</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="102">夜店</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="101">学习</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="99">运动</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="85">开车</a></li>
		
		    
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_more_tag">更多<i class="playlist_tag__arrow"></i></a></li>
		    
                </ul>
            </div>
	    
            <div class="popup_tag" style="display:none;">
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="76">约会</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="94">工作</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="81">旅行</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="103">派对</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="222">婚礼</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="223">咖啡馆</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="224">跳舞</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="16">校园</a></li>
		
                </ul>
            </div>
	    
</div></div>
            
        <div class="mod_part_detail">
            <div class="part_detail__hd">
                <h2 class="part_detail__tit">全部歌单</h2>
                <div class="part_switch" id="sortbox" aria-label="排列方式"><a href="javascript:;" class="part_switch__item js_sort part_switch__item--left part_switch__item--select" title="推荐" data-sort="5">推荐</a><a href="javascript:;" class="part_switch__item part_switch__item--right js_sort" title="最新" data-sort="2">最新</a></div>
            </div>
            <div class="mod_playlist mod_playlist--all">
                <ul class="playlist__list" id="playlist_box">
			
<!-- 			这里需要遍历所有的歌单 -->
			<c:forEach items="${applicationScope.songlistsList }" var="s">
					    <li class="playlist__item" data-disstid="2045183587" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
                                <div class="playlist__item_box">
                                <div class="playlist__cover mod_cover"><a onclick="javascript:playListSong('${s.songListName}','${s.songListIconSrc}');return false;" href="#" class="js_playlist" title="${s.songListName}" data-disstid="2045183587" data-stat="y_new.playlist.pic_click"><img src="${s.songListIconSrc }" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;" alt="${s.songListName }" class="playlist__pic"><i class="mod_cover__icon_play js_play" data-stat="y_new.playlist.pic_play"></i></a></div>
                                <h4 class="playlist__title"><span class="playlist__title_txt"><a href="songListAction!initplayListDetails.action?songlist.songListName=${s.songListName }" class="js_playlist" data-stat="y_new.playlist.dissname" data-disstid="2045183587" title=" ${s.songListName }"> ${s.songListName}</a></span></h4>
                               <div class="playlist__author">
					<a href="//y.qq.com/portal/profile.html?uin=1695805340#stat=y_new.playlist.creater" class="js_user" data-uin="1695805340" data-stat="y_new.playlist.creater" title="${s.user.nickName }">${s.user.nickName }</a>
					
			       </div>
			       <div class="playlist__other">
					播放量： <%=new java.util.Random().nextInt(30) %>.<%=new java.util.Random().nextInt(9) %>万
			       </div>
                            <a href="javascript:;" class="btn_operate_menu js_playlist_more" data-type="3" data-id="2045183587" data-stat="y_new.playlist.pic_mod_more"><span class="icon_txt">更多</span></a>
				</div>
               </li>	
			
			</c:forEach>

			</ul>
            </div>
            

        <div class="mod_page_nav js_pager"><strong class="current">1</strong><a href="javascript:;" class="js_pageindex" data-index="2" hidefocus="">2</a><a href="javascript:;" class="js_pageindex" data-index="3" hidefocus="">3</a><a href="javascript:;" class="js_pageindex" data-index="4" hidefocus="">4</a><strong class="more">...</strong><a href="javascript:;" class="js_pageindex" data-index="563" hidefocus="">563</a><a href="javascript:;" class="next js_pageindex" data-index="2" title="下一页" hidefocus=""><span>&gt;</span></a></div></div>

        
    </div>

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


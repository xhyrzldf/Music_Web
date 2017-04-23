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
    <meta name="keywords" content="回家路上，让欧美小调陪伴你,音乐,QQ音乐,在线听歌,音乐下载,音乐播放器,音乐网站,MV,巅峰榜,音乐排行榜,翻译歌曲,热门歌曲,经典老歌">
    <meta name="description" content="QQ音乐是腾讯公司推出的一款免费音乐服务，海量音乐在线试听、最流行音乐在线首发、歌词翻译、手机铃声下载、高品质音乐试听、正版音乐下载、免费空间背景音乐设置、MV观看等，是互联网音乐播放和下载的首选">
    <meta name="mobile-agent" content="format==[html5];url=//m.y.qq.com">
    <meta name="applicable-device" content="pc">
    <title>回家路上，让欧美小调陪伴你 - QQ音乐 - 听我想听的歌!</title>
    <link rel="canonical" href="//y.qq.com/n/yqq/playlist/855472110.html">
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript">
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
<script type="text/javascript">
    var _speedMark = new Date();
</script>
<script id="requirenode" async="" src="js/album.js"></script>
    <link rel="stylesheet" href="//y.gtimg.cn/mediastyle/yqq/layout0110.css?max_age=25920000&amp;v=20160830">
    <link rel="stylesheet" href="//y.gtimg.cn/mediastyle/yqq/playlist_detail.css?max_age=25920000">
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
</style><script src="//jqmt.qq.com/cdn_dianjiliu.js?a=0.2712775629909223"></script></head>
<body class="os_mac">
   <!-- 头部 S -->

<div class="mod_header">
    <div class="section_inner">
        <h1 class="qqmusic_title"><a href="//y.qq.com"><img srcset="//y.gtimg.cn/mediastyle/yqq/img/logo@2x.png 2x" src="//y.gtimg.cn/mediastyle/yqq/img/logo.png" alt="QQ音乐" class="qqmusic_logo"></a></h1>
        <!-- 导航 S -->
        <ul class="mod_top_nav" role="nav">
            <li class="top_nav__item top_nav__item--room">
                <a href="//y.qq.com" class="top_nav__link top_nav__link--current" title="音乐馆">音乐馆<i class="top_nav__txt"></i></a>
            </li>
            <li class="top_nav__item top_nav__item--mine">
                <a href="/portal/profile.html" class="top_nav__link" title="我的音乐">我的音乐<i class="top_nav__txt"></i></a>
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
		    <a href="//y.qq.com" class="top_subnav__link">首页</a>
		</li>
		<li class="top_subnav__item">
		    <a href="/portal/singer_list.html" class="top_subnav__link">歌手</a>
		</li>
		<li class="top_subnav__item">
		    <a href="/portal/album_lib.html" class="top_subnav__link">专辑</a>
		</li>
		<li class="top_subnav__item">
		    <a href="/n/yqq/toplist/4.html" class="top_subnav__link">排行榜</a>
		</li>
		<li class="top_subnav__item">
		    <a href="/portal/playlist.html" class="top_subnav__link">分类歌单</a>
		</li>
		<li class="top_subnav__item">
		    <a href="/portal/mv_lib.html#t6=2" class="top_subnav__link">MV</a>
		</li>
	    </ul>
        <!-- 导航 E -->
                <div class="mod_top_search" role="search">
                    <div class="mod_search_input">
                        <input class="search_input__input" aria-label="请输入搜索内容" placeholder="高能少年团" accesskey="s" type="text">
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

            </div>
        </div>
    </div>
    <!-- 头部 E -->


    <div class="main">

        <div class="mod_data" itemscope="" itemtype="http://schema.org/MusicRecording">
            <!-- 自建歌单用a标签 -->
	    
            <span class="data__cover" id="logo">
                <img src="${playListDetails.songListIconSrc }" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="${playListDetails.songListName }" class="data__photo">
            </span>
            <a href="javascript:;" class="data__cover js_edit" id="edit_logo" data-target="popup_upload_cover" onclick="resetImg();statistics.pgvClickStat('y_new.gedan.header.edit_logo');" style="display:none;">
                <img src="${playListDetails.songListIconSrc }" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="${playListDetails.songListName }" class="data__photo">
                <i class="data__cover_edit sprite"></i>
            </a>
            <div class="data__cont">
                <div class="data__name js_box" data-type="p_title">
                    <h1 class="data__name_txt" title="${playListDetails.songListName }" id="p_name_show">${playListDetails.songListName }</h1><a href="javascript:;" class="btn_edit sprite js_edit" style="display:none;"><i class="icon_txt">编辑</i></a>
                    <div class="mod_form_txt js_edit_box" style="display:none;">
                        <input value="${playListDetails.songListName }" class="form_txt__input" id="p_name" type="text"><span class="form_txt__tips" id="name_leftnum">0</span>
                    </div>
                </div>
                <div class="data__singer">
                    <i class="icon_singer"></i><a href="javascript:;" title="听听看" data-uin="2783670800" class="data__singer_txt js_user" data-stat="y_new.gedan.header.nickname" itemprop="byArtist">听听看</a>
                </div>
                <ul class="data__info">
                    <li class="data_info__item js_box" data-type="p_tags" style="display:;">
                        <div class="data_tag_box">
                            标签：<span id="choosebox1"><a href="javascript:;" class="data_info__tags js_jump" data-id="85">开车</a></span><a href="javascript:;" class="btn_edit sprite js_edit" style="display:none;"><i class="icon_txt">编辑</i></a>
                        </div>
                        <div class="data_tag_edit js_edit_box" style="display:none;">
                            <div class="mod_form_txt">
                                <div class="tag_edit_box" id="choosebox2"><span class="tag_edit__tags">开车<a href="javascript:;" class="tag_edit__delete sprite js_del_tag" data-tname="开车"><i class="icon_txt">删除</i></a></span></div>
                                <span class="form_txt__tips" id="leaveNum">2</span>
                            </div>
                            <div class="tag_edit_select" aria-label="标签选择框" id="taglist">
			
				
				<dl class="tag_edit_select__list">
                                    <dt class="tag_edit_select__tit">语种</dt>			
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="165" data-name="国语" title="国语">国语</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="167" data-name="英语" title="英语">英语</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="168" data-name="韩语" title="韩语">韩语</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="166" data-name="粤语" title="粤语">粤语</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="169" data-name="日语" title="日语">日语</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="170" data-name="小语种" title="小语种">小语种</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="203" data-name="闽南语" title="闽南语">闽南语</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="204" data-name="法语" title="法语">法语</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="205" data-name="拉丁语" title="拉丁语">拉丁语</a></dd>
						
					
				</dl>
				
			
				
				<dl class="tag_edit_select__list">
                                    <dt class="tag_edit_select__tit">流派</dt>			
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="6" data-name="流行" title="流行">流行</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="15" data-name="轻音乐" title="轻音乐">轻音乐</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="11" data-name="摇滚" title="摇滚">摇滚</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="28" data-name="民谣" title="民谣">民谣</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="8" data-name="R&amp;B" title="R&amp;B">R&amp;B</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="153" data-name="嘻哈" title="嘻哈">嘻哈</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="24" data-name="电子" title="电子">电子</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="27" data-name="古典" title="古典">古典</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="18" data-name="乡村" title="乡村">乡村</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="22" data-name="蓝调" title="蓝调">蓝调</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="21" data-name="爵士" title="爵士">爵士</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="164" data-name="新世纪" title="新世纪">新世纪</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="25" data-name="拉丁" title="拉丁">拉丁</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="218" data-name="后摇" title="后摇">后摇</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="219" data-name="中国传统" title="中国传统">中国传统</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="220" data-name="世界音乐" title="世界音乐">世界音乐</a></dd>
						
					
				</dl>
				
			
				
				<dl class="tag_edit_select__list">
                                    <dt class="tag_edit_select__tit">心情</dt>			
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="52" data-name="伤感" title="伤感">伤感</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="122" data-name="安静" title="安静">安静</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="117" data-name="快乐" title="快乐">快乐</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="116" data-name="治愈" title="治愈">治愈</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="125" data-name="励志" title="励志">励志</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="59" data-name="甜蜜" title="甜蜜">甜蜜</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="55" data-name="寂寞" title="寂寞">寂寞</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="126" data-name="宣泄" title="宣泄">宣泄</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="68" data-name="思念" title="思念">思念</a></dd>
						
					
				</dl>
				
			
				
				<dl class="tag_edit_select__list">
                                    <dt class="tag_edit_select__tit">场景</dt>			
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="78" data-name="睡前" title="睡前">睡前</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="102" data-name="夜店" title="夜店">夜店</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="101" data-name="学习" title="学习">学习</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="99" data-name="运动" title="运动">运动</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="85" data-name="开车" title="开车">开车</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="76" data-name="约会" title="约会">约会</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="94" data-name="工作" title="工作">工作</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="81" data-name="旅行" title="旅行">旅行</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="103" data-name="派对" title="派对">派对</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="222" data-name="婚礼" title="婚礼">婚礼</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="223" data-name="咖啡馆" title="咖啡馆">咖啡馆</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="224" data-name="跳舞" title="跳舞">跳舞</a></dd>
						
					
						
						<dd class="tag_edit_select__item"><a href="javascript:;" class="js_tag" hidefocus="true" data-id="16" data-name="校园" title="校园">校园</a></dd>
						
					
				</dl>
				
			</div>
                        </div>
                    </li>
                    <!--li class="data_info__item">创建时间：2017-02-10</li-->
                    <li class="data_info__item">播放量：<%= new Random().nextInt(20) %>.<%= new Random().nextInt(9) %>万</li>
                </ul>
                
                <div class="data__actions" role="toolbar">
                    <a onclick="javascript:playListSong('${playListDetails.songListName}','${playListDetails.songListIconSrc }');return false;" href="#" class="mod_btn_green js_all_play" data-stat="y_new.gedan.header.playall"><i class="mod_btn_green__icon_play"></i>播放全部</a>
                    <a href="javascript:;" class="mod_btn js_fav_taoge" data-stat="y_new.gedan.header.love" data-status="0"><i class="mod_btn__icon_like"></i>收藏</a>
                    <a href="javascript:;" class="mod_btn js_more" data-stat="y_new.gedan.header.more" data-id="855472110"><i class="mod_btn__icon_menu"></i>更多</a>
                </div>
            </div>
        </div>

        <div class="detail_layout">
            <div class="detail_layout__main">
		
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
	
<!-- 	这里要遍历歌单里的所有歌曲 -->
	<c:forEach items="${singlePlayListSongs }" var="s" varStatus="status">
		<li mid="7204629" ix="${status.index }">
	
	    <div class="songlist__item" onmouseover="this.className=(this.className+' songlist__item--hover')" onmouseout="this.className=this.className.replace(/ songlist__item--hover/, '')">
		<div class="songlist__edit songlist__edit--check">
		    <input class="songlist__checkbox" type="checkbox">
		</div>
		<div class="songlist__number">${status.count }</div>
		<div class="songlist__songname">
		    <span class="songlist__songname_txt"><a href="https://y.qq.com/n/yqq/song/003ejllH2ScwGJ.html" class="js_song" title="${s.songName }">${s.songName }</a></span>
		    
			<i class="songlist__icon songlist__icon_exclusive" title="独家"></i>
		    
		     
			<a href="https://y.qq.com/n/yqq/mv/v/f0011jte1za.html" class="songlist__icon songlist__icon_mv" target="_blank" title="MV"><span class="icon_txt">MV</span></a>
		     
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
			
			
			<a href="https://y.qq.com/n/yqq/singer/000JXWJ73mfqSc.html" data-singermid="000JXWJ73mfqSc" data-singerid="10025" title="Marina And The Diamonds" class="singer_name">${s.singer.singerName}</a>
			
		</div>
		<div class="songlist__album">
		    <a href="https://y.qq.com/n/yqq/album/001R6qFI2mtqBv.html" title="Electra Heart" class="album_name" data-albummid="001R6qFI2mtqBv" data-albumid="657065">${s.dvd.dvdName }</a>
		</div>
		<div class="songlist__time">${s.songLastTime }</div>
		<div class="songlist__other">
			
		</div>
                <a href="javascript:;" class="songlist__delete js_delete" style="display:none;" title="删除"><span class="icon_txt">删除</span></a>
	    </div>
	</li>
	
	</c:forEach>


</ul>
                </div>
                <div class="mod_songlist_toolbar mod_songlist_toolbar--edit js_foot_batch" style="display:none;">
                    <div class="songlist__edit songlist__edit--check" style="display:none;">
                        <input class="songlist__checkbox js_check_all" type="checkbox">
                    </div>
                    <a href="javascript:;" class="mod_btn js_all_play" data-stat="y_new.gedan.songlist.playall"><i class="mod_btn__icon_play"></i>播放全部</a>
                    <a href="javascript:;" class="mod_btn js_all_fav"><i class="mod_btn__icon_add"></i>添加到</a>
                    <a href="javascript:;" class="mod_btn js_all_down"><i class="mod_btn__icon_down"></i>下载</a>
		    <a href="javascript:;" class="mod_btn js_all_delete" style="display:none;"><i class="mod_btn__icon_delete"></i>删除</a>
                    <a href="javascript:;" class="mod_btn js_batch"><i class="mod_btn__icon_batch"></i>批量操作</a>
                </div>
		
            </div>
            <div class="detail_layout__other">
                <div class="mod_about js_box" id="album_desc" style="display:;">
		    <h3 class="about__tit">简介</h3>
                    <div class="about__cont">
                    <p>无论你是在旅行还是下班路上，就收藏一些好听的欧美小调打发时光吧。这张歌单涵盖的曲风较广，相信一定有歌曲能满足你。有了这些好听的歌儿，回家路途再也不漫长啦。</p>
                    </div>
                    <a href="javascript:;" class="about__more" data-stat="y_new.gedan.moreinfo" data-left="0" data-top="-187" data-target="popup_data_detail" style="display: none;">[更多]</a>
		    <a href="javascript:;" class="btn_edit js_edit" style="display:none;"><i class="icon_txt">编辑</i></a>
		    <div class="mod_form_textarea js_edit_box" style="display:none;">
                        <div class="form_textarea__box">
                            <textarea class="form_textarea__input" rows="4" id="album_intro" placeholder="每张歌单都有你的感情、经历和故事，倾诉一下吧！">无论你是在旅行还是下班路上，就收藏一些好听的欧美小调打发时光吧。这张歌单涵盖的曲风较广，相信一定有歌曲能满足你。有了这些好听的歌儿，回家路途再也不漫长啦。</textarea>
                        </div>
                        <div class="form_textarea__tips" id="introNumTips">剩余1923字</div>
                    </div>
                </div>

                <div class="other_part" id="similaralbum" style="">
                    <h3 class="other_part__tit">相似歌单</h3>
                    <div class="mod_playlist">
                        <ul class="playlist__list">
    <li class="playlist__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="3527803349">
	<div class="playlist__item_box">
	    <div class="playlist__cover mod_cover"><a href="https://y.qq.com/n/yqq/playlist/3527803349.html#stat=y_new.gedan.otheralbum.click" data-disstid="3527803349" data-stat="y_new.gedan.otheralbum.click" class="js_playlist"><img src="http://p.qpic.cn/music_cover/D6Bo0jZzmCsE3tje1oZYPjTlUlqEcIEW9iavsmgOjPicBGmFlTibT8fkA/600?n=1&amp;max_age=2592000" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="打开车窗和音乐，感受不一样的心情" class="playlist__pic"><i class="mod_cover__icon_play js_play" data-stat="y_new.gedan.otheralbum.play"></i></a></div>
	    <h4 class="playlist__title"><span class="playlist__title_txt"><a href="https://y.qq.com/n/yqq/playlist/3527803349.html#stat=y_new.gedan.otheralbum.click" data-disstid="3527803349" data-stat="y_new.gedan.otheralbum.click" class="js_playlist" title="打开车窗和音乐，感受不一样的心情">打开车窗和音乐，感受不一样的心情</a></span></h4>
	    <div class="playlist__author">
		
		    <a href="//y.qq.com/portal/profile.html?uin=2916165509" class="js_user" data-uin="2916165509" title="远方的梦">远方的梦</a>
		
	    </div>
	</div>
    </li>

    <li class="playlist__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="1692803427">
	<div class="playlist__item_box">
	    <div class="playlist__cover mod_cover"><a href="https://y.qq.com/n/yqq/playlist/1692803427.html#stat=y_new.gedan.otheralbum.click" data-disstid="1692803427" data-stat="y_new.gedan.otheralbum.click" class="js_playlist"><img src="http://y.gtimg.cn/music/photo_new/T005R600x600M0000015r2DY1nMCv3.jpg?n=1&amp;max_age=2592000" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="听歌只看心情，不随波逐流" class="playlist__pic"><i class="mod_cover__icon_play js_play" data-stat="y_new.gedan.otheralbum.play"></i></a></div>
	    <h4 class="playlist__title"><span class="playlist__title_txt"><a href="https://y.qq.com/n/yqq/playlist/1692803427.html#stat=y_new.gedan.otheralbum.click" data-disstid="1692803427" data-stat="y_new.gedan.otheralbum.click" class="js_playlist" title="听歌只看心情，不随波逐流">听歌只看心情，不随波逐流</a></span></h4>
	    <div class="playlist__author">
		
		    <a href="//y.qq.com/portal/profile.html?uin=2786689143" class="js_user" data-uin="2786689143" title="颜笑">颜笑</a>
		
	    </div>
	</div>
    </li>

    <li class="playlist__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="1137967713">
	<div class="playlist__item_box">
	    <div class="playlist__cover mod_cover"><a href="https://y.qq.com/n/yqq/playlist/1137967713.html#stat=y_new.gedan.otheralbum.click" data-disstid="1137967713" data-stat="y_new.gedan.otheralbum.click" class="js_playlist"><img src="http://p.qpic.cn/music_cover/pQxXiaSgEN4AF8PjEuPnuSCQ2E0icuHyxH7hibglAzibn6Fw8cIEE6sKBQ/600?n=1&amp;max_age=2592000" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="开车必备！值得循环的欧美单曲" class="playlist__pic"><i class="mod_cover__icon_play js_play" data-stat="y_new.gedan.otheralbum.play"></i></a></div>
	    <h4 class="playlist__title"><span class="playlist__title_txt"><a href="https://y.qq.com/n/yqq/playlist/1137967713.html#stat=y_new.gedan.otheralbum.click" data-disstid="1137967713" data-stat="y_new.gedan.otheralbum.click" class="js_playlist" title="开车必备！值得循环的欧美单曲">开车必备！值得循环的欧美单曲</a></span></h4>
	    <div class="playlist__author">
		
		    <a href="//y.qq.com/portal/profile.html?uin=2968270451" class="js_user" data-uin="2968270451" title="清心">清心</a>
		
	    </div>
	</div>
    </li>

    <li class="playlist__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="1745623119">
	<div class="playlist__item_box">
	    <div class="playlist__cover mod_cover"><a href="https://y.qq.com/n/yqq/playlist/1745623119.html#stat=y_new.gedan.otheralbum.click" data-disstid="1745623119" data-stat="y_new.gedan.otheralbum.click" class="js_playlist"><img src="http://p.qpic.cn/music_cover/4oh54jo6icKL2masBFQdXDmMd2o6ecetTfykCvMibhTcVOBahIhqcKag/600?n=1&amp;max_age=2592000" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="阳光动感活力 | 一家人自驾篇" class="playlist__pic"><i class="mod_cover__icon_play js_play" data-stat="y_new.gedan.otheralbum.play"></i></a></div>
	    <h4 class="playlist__title"><span class="playlist__title_txt"><a href="https://y.qq.com/n/yqq/playlist/1745623119.html#stat=y_new.gedan.otheralbum.click" data-disstid="1745623119" data-stat="y_new.gedan.otheralbum.click" class="js_playlist" title="阳光动感活力 | 一家人自驾篇">阳光动感活力 | 一家人自驾篇</a></span></h4>
	    <div class="playlist__author">
		
		    <a href="//y.qq.com/portal/profile.html?uin=3483264403" class="js_user" data-uin="3483264403" title="鱼遇海">鱼遇海</a>
		
	    </div>
	</div>
    </li>

    <li class="playlist__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="1732192082">
	<div class="playlist__item_box">
	    <div class="playlist__cover mod_cover"><a href="https://y.qq.com/n/yqq/playlist/1732192082.html#stat=y_new.gedan.otheralbum.click" data-disstid="1732192082" data-stat="y_new.gedan.otheralbum.click" class="js_playlist"><img src="http://p.qpic.cn/music_cover/WjhDFKViaqCmEFjlUV8ZPVwic9NZjFiafVmIBJmYdNhicJssNLPXqKs7MA/600?n=1&amp;max_age=2592000" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="驾车听听英文歌里的速度与激情" class="playlist__pic"><i class="mod_cover__icon_play js_play" data-stat="y_new.gedan.otheralbum.play"></i></a></div>
	    <h4 class="playlist__title"><span class="playlist__title_txt"><a href="https://y.qq.com/n/yqq/playlist/1732192082.html#stat=y_new.gedan.otheralbum.click" data-disstid="1732192082" data-stat="y_new.gedan.otheralbum.click" class="js_playlist" title="驾车听听英文歌里的速度与激情">驾车听听英文歌里的速度与激情</a></span></h4>
	    <div class="playlist__author">
		
		    <a href="//y.qq.com/portal/profile.html?uin=3050906793" class="js_user" data-uin="3050906793" title="我就是爱音乐">我就是爱音乐</a>
		
	    </div>
	</div>
    </li>

    <li class="playlist__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="1079465630">
	<div class="playlist__item_box">
	    <div class="playlist__cover mod_cover"><a href="https://y.qq.com/n/yqq/playlist/1079465630.html#stat=y_new.gedan.otheralbum.click" data-disstid="1079465630" data-stat="y_new.gedan.otheralbum.click" class="js_playlist"><img src="http://y.gtimg.cn/music/photo_new/T005R640x640M000000jVtXf1wNMtv.jpg?n=1&amp;max_age=2592000" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="倾听每座城市的心跳！" class="playlist__pic"><i class="mod_cover__icon_play js_play" data-stat="y_new.gedan.otheralbum.play"></i></a></div>
	    <h4 class="playlist__title"><span class="playlist__title_txt"><a href="https://y.qq.com/n/yqq/playlist/1079465630.html#stat=y_new.gedan.otheralbum.click" data-disstid="1079465630" data-stat="y_new.gedan.otheralbum.click" class="js_playlist" title="倾听每座城市的心跳！">倾听每座城市的心跳！</a></span></h4>
	    <div class="playlist__author">
		
		    <a href="//y.qq.com/portal/profile.html?uin=2830715241" class="js_user" data-uin="2830715241" title="發呆、">發呆、</a>
		
	    </div>
	</div>
    </li>
</ul>
                    </div>
                </div>

            </div>
		<!-- 专辑简介 -->
		<div class="popup_data_detail" id="popup_data_detail" data-aria="popup" style="display:none;z-index:1000000;">
		    <div class="popup_data_detail__cont">
			<h3 class="popup_data_detail__tit">简介</h3>
			<p>无论你是在旅行还是下班路上，就收藏一些好听的欧美小调打发时光吧。这张歌单涵盖的曲风较广，相信一定有歌曲能满足你。有了这些好听的歌儿，回家路途再也不漫长啦。</p>
		    </div>
		    <i class="popup_data_detail__arrow"></i>
		</div>
        </div>

    </div> 

   


    <!-- 跟头图保持一致 -->
    <div class="bg_detail"><i class="bg_detail__pic" style="background-image: url(&quot;https://p.qpic.cn/music_cover/PW5V5hCPicL8uJB8k0HAnw4yyslr9jwSuicwTTwgrGtFcKauKMEuKSoA/300?n=1&quot;);"></i></div>
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


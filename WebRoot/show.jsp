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
  <c:if test="${empty dList }">
  <c:redirect url="indexAction!initIndexInfo.action"></c:redirect>
  </c:if>
  <link rel="icon" href="favicons/1.png">
  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/index.css">
 <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  <script type="text/javascript">
  /*ajax播放专辑里的歌 onclick="javascript:playSong('${d.dvdId}','${d.dvdIconSrc}');return false;" href="#"*/
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
</head>
<body>

  <header class="header">
    <div class="header-container">
      <div class="header-top">
        <a href="#" class="logo"></a>
        <nav class="header-nav">
          <ul>
            <li><a href="show.jsp" class="header-nav__cur">音乐馆</a></li>
            <li><a href="usercenter.jsp">我的音乐</a></li>
            <li><a href="#">下载客户端</a></li>
            <li><a href="#">VIP</a></li>
          </ul>
        </nav>
        <div class="header-search">
          <input type="text" class="text" placeholder="here...">
          <div class="btn"><i class="icon-sprite"></i></div>
          <div class="result">
<!--           这里要遍历5项排最靠前的  -->
			<c:forEach items="${applicationScope.top5Song }" var="s" varStatus="status">
			   <a onclick="javascript:playSingleSong('${s.songName}');return false;" href="#" class="result-item">
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
        <c:if test="${empty user }">
         <a href="notlogin.jsp" class="open-green">点击登录</a>
        </c:if>
         <c:if test="${not empty user }">
         <a href="usercenter.jsp" class="open-green">个人中心</a>
        </c:if>
         
        </div>
      </div>
      <ul class="header-subNav">
        <li><a href="show.jsp" class="subNav-cur">首页</a></li>
        <li><a href="singer.jsp">歌手</a></li>
        <li><a href="album.jsp">专辑</a></li>
        <li><a href="topList.jsp">排行榜</a></li>
        <li><a href="playList.jsp">分类歌单</a></li>
        <li><a href="#">MV</a></li>
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
<!--         遍历12次 -->
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

  <!-- 精彩推荐 -->
  <div class="main" id="recommend">
    <div class="main-inner">
      <div class="main-title">
        <h2 class="title"><i></i></h2>
        <span class="line line-left"></span>
        <span class="line line-right"></span>
      </div>
      <div class="carousel">
        <div class="carousel-slider">
          <a href="#" class="item item-pic1"><img src="images/cont/carousel_img1.jpg" alt="#"></a>
          <a href="#" class="item item-pic2"><img src="images/cont/carousel_img2.jpg" alt="#"></a>
          <a href="#" class="item item-pic3"><img src="images/cont/carousel_img3.jpg" alt="#"></a>
          <a href="#" class="item item-pic4"><img src="images/cont/carousel_img4.jpg" alt="#"></a>
          <a href="#" class="item item-pic5"><img src="images/cont/carousel_img5.jpg" alt="#"></a>
          <a href="#" class="item item-pic6"><img src="images/cont/carousel_img6.jpg" alt="#"></a>
        </div>
        <div class="slider-btns">
          <span class="cur"><i></i></span>
          <span><i></i></span>
          <span><i></i></span>
          <span><i></i></span>
          <span><i></i></span>
          <span><i></i></span>
        </div>
      </div>
    </div>
    <div class="main-operate">
      <a href="#" class="slider-prev"><i class="icon-sprite"></i></a>
      <a href="#" class="slider-next"><i class="icon-sprite"></i></a>
    </div>
  </div>

  <!-- 排行榜 -->
  <div class="main" id="rank">
    <div class="main-inner">
      <div class="main-title">
        <h2 class="title"><i></i></h2>
        <span class="line line-left"></span>
        <span class="line line-right"></span>
      </div>
      <a href="#" class="readAll">全部<i class="icon-sprite"></i></a>
      <ul class="rank-list">
        <li class="rank-list__item rank-list__1">
          <span class="rank-bg"></span>
          <span class="mask"></span>
          <i class="icon-play" ></i>
          <div class="title">
            <i></i>
            <h3>流行指数</h3>
          </div>
          <i class="line"></i>
          <ul class="song-list">
          
<!--           这里遍历4项 -->
			<c:forEach items="${applicationScope.top4Song1 }" var="s" varStatus="status">
			    <li class="song-list__item">
              <a onclick="javascript:playSingleSong('${s.songName}');return false;" href="#" ><span >${status.count}</span>${s.songName }</a>
              <span>${s.singer.singerName}</span>
            </li>
			</c:forEach>

        
            
          </ul>
        </li>
        <li class="rank-list__item rank-list__2">
          <span class="rank-bg"></span>
          <span class="mask"></span>
          <i class="icon-play"></i>
          <div class="title">
            <i></i>
            <h3>热歌</h3>
          </div>
          <i class="line"></i>
          <ul class="song-list">
          
<!--           这里li遍历4项 -->

        	<c:forEach items="${applicationScope.top4Song2 }" var="s" varStatus="status">
			    <li class="song-list__item">
              <a onclick="javascript:playSingleSong('${s.songName}');return false;" href="#"><span>${status.count}</span>${s.songName }</a>
              <span>${s.singer.singerName}</span>
            </li>
			</c:forEach>
            

          </ul>
        </li>
        <li class="rank-list__item rank-list__3">
          <span class="rank-bg"></span>
          <span class="mask"></span>
          <i class="icon-play"></i>
          <div class="title">
            <i></i>
            <h3>新歌</h3>
          </div>
          <i class="line"></i>
          <ul class="song-list">
<!--           这里li遍历4项 -->
	<c:forEach items="${applicationScope.top4Song3 }" var="s" varStatus="status">
			    <li class="song-list__item">
              <a onclick="javascript:playSingleSong('${s.songName}');return false;" href="#"><span>${status.count}</span>${s.songName }</a>
              <span>${s.singer.singerName}</span>
            </li>
			</c:forEach>
            
            
          </ul>
        </li>
        <li class="rank-list__item rank-list__4">
          <span class="rank-bg"></span>
          <span class="mask"></span>
          <i class="icon-play"></i>
          <div class="title">
            <i></i>
            <h3>港台</h3>
          </div>
          <i class="line"></i>
          <ul class="song-list">
<!--           这里遍历4项 -->
			<c:forEach items="${applicationScope.top4Song4 }" var="s" varStatus="status">
			    <li class="song-list__item">
              <a onclick="javascript:playSingleSong('${s.songName}');return false;" href="#"><span>${status.count}</span>${s.songName } (Live)</a>
              <span>${s.singer.singerName}</span>
            </li>
			</c:forEach>

          </ul>
          
        </li>
      </ul>
    </div>
  </div>

  <!-- 热门歌单 -->
  <div class="main" id="hotSong">
    <div class="main-inner">
      <div class="main-title">
        <h2 class="title"><i></i></h2>
        <span class="line line-left"></span>
        <span class="line line-right"></span>
      </div>
      <div class="main-slider">
        <ul class="slider-wrapper">
<!--         这里li需要遍历12项 -->
		<c:forEach items="${applicationScope.songlistsList }" var="s">
		     <li>
            <a onclick="javascript:playListSong('${s.songListName}','${s.songListIconSrc}');return false;" href="#" class="img">
              <img src="${s.songListIconSrc }" alt="#">
              <span class="mask"></span>
              <i class="icon-play"></i>
            </a>
            <div class="info">
              <div class="title">
                <!-- <a href="#">那个静默的阳光午后</a> -->
                <a  href="songListAction!initplayListDetails.action?songlist.songListName=${s.songListName }" title="${s.songListName }">${s.songListName }</a>
                <i class="icon-sprite"></i>
              </div>
              <a href="#" class="author">播放量：<%= new Random().nextInt(200) %>.<%= new Random().nextInt(9) %>万</a>
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


  <!-- MV -->
  <div class="main" id="mv">
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
        <a href="javascript:;" class="item">港台</a>
        <a href="javascript:;" class="item">韩国</a>
        <a href="javascript:;" class="item">日本</a>
      </div>
      <ul class="mv-list tab-cont">
        <li class="item">
          <a href="#" class="img"><img src="images/cont/mv_img1.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">Let Me Love You</a>
            <a href="#" class="author">刘惜君</a>
            <span class="play-total"><i class="icon-sprite"></i>18.8万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/cont/mv_img2.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">It's love</a>
            <a href="#" class="author">张碧晨</a>
            <span class="play-total"><i class="icon-sprite"></i>36万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/cont/mv_img3.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">为你写诗</a>
            <a href="#" class="author">吴克群</a>
            <span class="play-total"><i class="icon-sprite"></i>50万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/cont/mv_img4.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">我管你</a>
            <a href="#" class="author">华晨宇</a>
            <span class="play-total"><i class="icon-sprite"></i>36.6万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/cont/mv_img5.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">Bye Bye (短版)</a>
            <a href="#" class="author">Apink</a>
            <span class="play-total"><i class="icon-sprite"></i>3.8万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/cont/mv_img6.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">救我</a>
            <a href="#" class="author">马吟吟</a>
            <span class="play-total"><i class="icon-sprite"></i>18.8万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/cont/mv_img7.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">鹿晗《Venture》特别映像“H”篇之《敢Roleplay》</a>
            <a href="#" class="author">鹿晗</a>
            <span class="play-total"><i class="icon-sprite"></i>2.8万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/cont/mv_img8.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">Good Life</a>
            <a href="#" class="author">G-EAZY</a>
            <span class="play-total"><i class="icon-sprite"></i>13.2万</span>
          </div>
        </li>
      </ul>
    </div>
  </div>

  <!-- footer -->
  <footer class="footer">
    <div class="footer-inner">
      <div class="footer-info">
        <div class="footer-info__download">
          <h3>下载KK音乐客户端</h3>
          <ul class="list">
            <li><a href="#">
              <i class="footer-icon icon-pc"></i>
              PC版
            </a></li>
            <li><a href="#">
              <i class="footer-icon icon-mac"></i>
              Mac版
            </a></li>
            <li><a href="#">
              <i class="footer-icon icon-android"></i>
              Android版
            </a></li>
            <li><a href="#">
              <i class="footer-icon icon-iphone"></i>
              iPhone版
            </a></li>
          </ul>
        </div>
        <div class="footer-info__product">
          <h3>特色产品</h3>
          <ul class="list">
            <li class="hasPic"><a href="#">
              <i class="footer-icon icon-kg"></i>
              全民K歌
            </a></li>
            <li class="hasPic"><a href="#">
              <i class="footer-icon icon-ss"></i>
              全民K歌
            </a></li>
            <li class="hasPic"><a href="#">
              <i class="footer-icon icon-qp"></i>
              全民K歌
            </a></li>
            <li><a href="#">KK音乐原创音乐平台</a></li>
            <li><a href="#">上传视频</a></li>
            <li><a href="#">上传视频</a></li>
            <li><a href="#">上传视频</a></li>
          </ul>
        </div>
        <div class="footer-info__link">
          <h3>特色产品</h3>
          <ul class="list">
            <li><a href="#">CJ E M</a></li>
            <li><a href="#">我们视频</a></li>
            <li><a href="#">手机KK空间</a></li>
            <li><a href="#">CJ E M</a></li>
            <li><a href="#">我们视频</a></li>
            <li><a href="#">手机KK空间</a></li>
            <li><a href="#">CJ E M</a></li>
            <li><a href="#">我们视频</a></li>
            <li><a href="#">手机KK空间</a></li>
            <li><a href="#">CJ E M</a></li>
            <li><a href="#">我们视频</a></li>
            <li><a href="#">手机KK空间</a></li>
          </ul>
        </div>
      </div>
      <div class="footer-copyright">
        <p><a href="#">关于我们</a><span>|</span><a href="#">关于我们</a><span>|</span><a href="#">关于我们</a><span>|</span><a href="#">关于我们</a><span>|</span><a href="#">关于我们</a><span>|</span><a href="#">关于我们</a><span>|</span><a href="#">关于我们</a><span>|</span><a href="#">关于我们</a></p>
        <p>Copyright © 1998 - 2017 kk. All Rights Reserved.</p>
        <p>我们公司 版权所有 我们网络文化经营许可证</p>
      </div>
    </div>
  </footer>


  <!-- 分享到 -->
  <ul class="slider-share">
    <li><a href="#">
      <i class="icon-sprite icon-add"></i>
      添加到
      <i class="icon-sprite icon-arrow"></i>
    </a></li>
    <li><a href="#">
      <i class="icon-sprite icon-share"></i>
      分享
      <i class="icon-sprite icon-arrow"></i>
    </a></li>
    <li><a href="#">
      <i class="icon-sprite icon-download"></i>
      下载
    </a></li>
  </ul>


  <script src="js/script.js"></script>

</body>
</html>

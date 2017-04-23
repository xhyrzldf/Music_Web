package com.jhdx.control.action;

import java.util.List;

import com.jhdx.model.entity.Singer;
import com.jhdx.model.entity.Singertype;
import com.jhdx.model.entity.Song;
import com.jhdx.model.service.SingerService;
import com.jhdx.model.service.SingerTypeService;
import com.jhdx.model.service.SongService;
import com.jhdx.wheels.SessionWheel;

public class SingerAction extends SessionWheel{
private Singer singer;
private SingerService singerService;
private SingerTypeService singerTypeService;
private SongService songService;
public SongService getSongService() {
	return songService;
}

public void setSongService(SongService songService) {
	this.songService = songService;
}

private static int PAGESIZE=10;
private static int currentPage=1;
private static int totalPage;
private static int dataSize;

//初始化总页数
//{
//dataSize=singerService.countAllSingerService();
//totalPage=((dataSize-1)/PAGESIZE)+1;
//}

/**
 * 初始化歌手页面相关信息,包括歌手类型,歌手分页,和所有歌手三个,这里只处理歌手类型和所有歌手,然后跳转到歌手分页的action里
 * @return
 */
public String initAllSinger() {
	List<Singertype> tList=singerTypeService.showAllSingerTypeService();
	List<Singer> allSingerList=singerService.showAllSingerService();
	getSession().put("allSingerType", tList);
	getSession().put("allSingers", allSingerList);

	return "page";
}

/**
 * 载入当前的页码和每页显示数,分页显示歌手数据
 * @return
 */
public String showSingerByPage(){
	dataSize=singerService.countAllSingerService();
	totalPage=((dataSize-1)/PAGESIZE)+1;
	getSession().put("totalPage", totalPage);
	List<Singer> sList=singerService.showSingerByPageService(currentPage, PAGESIZE);
	getSession().put("singerPage", sList);
	getSession().put("currentPage", currentPage);
	return "success";
}
/**
 * 显示上一页歌手数据
 * @return
 */
public String previousPage(){
	if (currentPage <= 1) {
		currentPage=1;
	}else {
		currentPage--;
	}
	return "page";
}
/**
 * 显示下一页歌手数据
 * @return
 */
public String nextPage(){
	if (currentPage>=totalPage) {
		currentPage=totalPage;
	}else {
		currentPage++;
	}
	return "page";
}
/**
 * 根据歌手名称初始化歌手信息以及查询出该歌手的所有歌曲
 * @return
 */
public String initSingerDetails(){
	System.out.println(singer.getSingerName());
	singer=singerService.showSingerSongsByNameDao(singer.getSingerName());
	List<Song> sList=songService.showSingerAllSongsService(singer.getSingerId());
	getSession().put("singerDetails", singer);
	getSession().put("singleSingerSongs", sList);
	return "singerDetails";
}
public SingerService getSingerService() {
	return singerService;
}

public void setSingerService(SingerService singerService) {
	this.singerService = singerService;
}
public SingerTypeService getSingerTypeService() {
	return singerTypeService;
}
public void setSingerTypeService(SingerTypeService singerTypeService) {
	this.singerTypeService = singerTypeService;
}

public  int getPAGESIZE() {
	return PAGESIZE;
}

public  void setPAGESIZE(int pAGESIZE) {
	PAGESIZE = pAGESIZE;
}

public  int getCurrentPage() {
	return currentPage;
}

public  void setCurrentPage(int currentPage) {
	SingerAction.currentPage = currentPage;
}

public  int getTotalPage() {
	return totalPage;
}

public  void setTotalPage(int totalPage) {
	SingerAction.totalPage = totalPage;
}

public  int getDataSize() {
	return dataSize;
}

public  void setDataSize(int dataSize) {
	SingerAction.dataSize = dataSize;
}

public Singer getSinger() {
	return singer;
}

public void setSinger(Singer singer) {
	this.singer = singer;
}


}

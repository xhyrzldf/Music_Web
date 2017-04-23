package com.jhdx.control.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.jhdx.model.entity.Dvd;
import com.jhdx.model.entity.PlayList;
import com.jhdx.model.entity.Song;
import com.jhdx.model.service.AlbumService;
import com.jhdx.wheels.ApplicationWheel;
import com.jhdx.wheels.SessionWheel;

public class AlbumAction extends SessionWheel{
private AlbumService albumService;
private Dvd dvd;
private PlayList pList;
private List<PlayList> dataList;

/**
 * 用于ajax用户点击播放专辑的方法,首先根据专辑id查询出专辑里的歌曲,接着讲歌曲封装成一个集合返回前台
 * @return
 */
public String ajaxPlayAlbum(){
	List<Song> sList=albumService.getSongsInDvdsService(dvd.getDvdId());
	dataList=new ArrayList<PlayList>();
	for (Song song : sList) {
		pList=new PlayList();//先将歌曲查出来接着重新封装成一个播放列表类,用于前台播放
		pList.setTitle(song.getSongName());
		pList.setArtist(song.getSinger().getSingerName());
		pList.setMp3(song.getSongSrc());
		pList.setCover(dvd.getDvdIconSrc());
		dataList.add(pList);
	}
	return "success";
}
/**
 * 用户点击专辑名进入专辑页面的一些处理,向session存放当前专辑信息以及当前专辑里歌曲信息
 * @return
 */
public String goIntoAlbumDetails(){
	System.out.println(dvd.getDvdName());
	dvd=albumService.getDvdDetailsByNameService(dvd.getDvdName());
	getSession().put("albumDetails", dvd);
	List<Song> sList=albumService.getSongsInDvdsService(dvd.getDvdId());
	getSession().put("albumDetailsSongs", sList);
	return "albumDetatils";
}
/**
 * 初始化所有专辑,用于显示所有专辑页面
 * @return
 */
public String InitAlbum(){
	List<Dvd> dList=albumService.getAllDvdService();
	Map<String, Object> applicationMap=ApplicationWheel.getApplication();
	applicationMap.put("allAlbumList", dList);
	return "allAlbum";
}

public AlbumService getAlbumService() {
	return albumService;
}

public void setAlbumService(AlbumService albumService) {
	this.albumService = albumService;
}

public Dvd getDvd() {
	return dvd;
}

public void setDvd(Dvd dvd) {
	this.dvd = dvd;
}


public PlayList getpList() {
	return pList;
}


public void setpList(PlayList pList) {
	this.pList = pList;
}


public List<PlayList> getDataList() {
	return dataList;
}


public void setDataList(List<PlayList> dataList) {
	this.dataList = dataList;
}



}

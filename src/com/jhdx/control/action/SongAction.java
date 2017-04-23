package com.jhdx.control.action;

import java.util.ArrayList;
import java.util.List;

import com.jhdx.model.entity.PlayList;
import com.jhdx.model.entity.Song;
import com.jhdx.model.service.SongService;
import com.jhdx.wheels.SessionWheel;

public class SongAction extends SessionWheel{
private SongService songService;
private Song song;
private PlayList pList;
private List<PlayList> dataList;

public String ajaxSongDetails(){
	song=songService.getSongDetailsBySongNameService(song);
	dataList=new ArrayList<PlayList>();
		pList=new PlayList();//先将歌曲查出来接着重新封装成一个播放列表类,用于前台播放
		pList.setTitle(song.getSongName());
		pList.setArtist(song.getSinger().getSingerName());
		pList.setMp3(song.getSongSrc());
		pList.setCover(song.getDvd().getDvdIconSrc());
		dataList.add(pList);
		return "success";
}

/**
 * 用于歌曲排行榜显示音乐
 * @return
 */
public String showRankSongs(){
	List<Song> sList=songService.top4IndexRankService(0, 29);
	getSession().put("songRank", sList);
	return "songRank";
}
public SongService getSongService() {
	return songService;
}

public void setSongService(SongService songService) {
	this.songService = songService;
}
public Song getSong() {
	return song;
}
public void setSong(Song song) {
	this.song = song;
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

package com.jhdx.control.action;

import java.util.ArrayList;
import java.util.List;

import com.jhdx.model.entity.PlayList;
import com.jhdx.model.entity.Song;
import com.jhdx.model.entity.Songlist;
import com.jhdx.model.entity.User;
import com.jhdx.model.service.SongListService;
import com.jhdx.model.service.SongService;
import com.jhdx.wheels.SessionWheel;

public class SongListAction extends SessionWheel{
private Songlist songlist;
private SongListService songListService;
private SongService songService;
private PlayList pList;
private List<PlayList> dataList;
public SongListService getSongListService() {
	return songListService;
}
public void setSongListService(SongListService songListService) {
	this.songListService = songListService;
}
public SongService getSongService() {
	return songService;
}
public void setSongService(SongService songService) {
	this.songService = songService;
}
/**
 * 初始化个人中心,初始化用户的个人歌单,以及显示我喜欢歌单里的歌曲
 * @return
 */
public String initUserCenter(){
	User user=(User) getSession().get("user");
	List<Songlist> songlists=songListService.allLikeSongListService(user.getUserId());//个人所有歌单
	List<Song> sList=songService.showUserLikeSongsService(user.getUserId(), "我喜欢");
	getSession().put("userCenterSongList", songlists);
	getSession().put("userCenterLikeSongs", sList);
	return "success";
}

	
public String ajaxPlaySongList(){
	List<Song> sList=songService.showSongListSongsService(songlist.getSongListName());
	dataList=new ArrayList<PlayList>();
	for (Song song : sList) {
		pList=new PlayList();//先将歌曲查出来接着重新封装成一个播放列表类,用于前台播放
		pList.setTitle(song.getSongName());
		pList.setArtist(song.getSinger().getSingerName());
		pList.setMp3(song.getSongSrc());
		pList.setCover(songlist.getSongListIconSrc());
		dataList.add(pList);
	}
	return "playSongList";
}

/**
 * 根据歌单名称初始化歌单信息以及查询出该歌单的所有歌曲
 * @return
 */
public String initplayListDetails(){
	System.out.println(songlist.getSongListName());
	songlist=songListService.showPlayListSongsByNameService(songlist.getSongListName());
	List<Song> sList=songService.showSongListSongsService(songlist.getSongListName());
	getSession().put("playListDetails", songlist);
	getSession().put("singlePlayListSongs", sList);
	return "playListDetails";
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
public Songlist getSonglist() {
	return songlist;
}
public void setSonglist(Songlist songlist) {
	this.songlist = songlist;
}
}

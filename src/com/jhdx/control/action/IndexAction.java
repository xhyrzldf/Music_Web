package com.jhdx.control.action;

import java.util.List;
import java.util.Map;

import com.jhdx.model.entity.Dvd;
import com.jhdx.model.entity.Song;
import com.jhdx.model.entity.Songlist;
import com.jhdx.model.service.AlbumService;
import com.jhdx.model.service.SongListService;
import com.jhdx.model.service.SongService;
import com.jhdx.wheels.ApplicationWheel;
import com.jhdx.wheels.SessionWheel;

/**
 * 用于首页,数据存放在application里
 * @author Administrator
 *
 */
public class IndexAction extends SessionWheel{
private AlbumService albumService;
private SongService songService;
private SongListService songListService;

/**
 * 初始化主页信息,主要是查询一些集合放到session里
 * @return
 */
public String initIndexInfo(){
	List<Dvd> dList=albumService.getFirst12DvdsService();
	List<Song> top5SongList=songService.top5HotSongsService();
	List<Song> top4SongList1=songService.top4IndexRankService(4, 4);
	List<Song> top4SongList2=songService.top4IndexRankService(8, 4);
	List<Song> top4SongList3=songService.top4IndexRankService(12, 4);
	List<Song> top4SongList4=songService.top4IndexRankService(16, 4);
	List<Songlist> songlistsList=songListService.allSongListService();
	Map<String, Object> applicationMap=ApplicationWheel.getApplication();
	applicationMap.put("dList", dList);
	applicationMap.put("top5Song", top5SongList);
	applicationMap.put("top4Song1", top4SongList1);
	applicationMap.put("top4Song2", top4SongList2);
	applicationMap.put("top4Song3", top4SongList3);
	applicationMap.put("top4Song4", top4SongList4);
	applicationMap.put("songlistsList", songlistsList);
	return "success";
}

public AlbumService getAlbumService() {
	return albumService;
}

public void setAlbumService(AlbumService albumService) {
	this.albumService = albumService;
}

public SongService getSongService() {
	return songService;
}

public void setSongService(SongService songService) {
	this.songService = songService;
}

public SongListService getSongListService() {
	return songListService;
}

public void setSongListService(SongListService songListService) {
	this.songListService = songListService;
}
}

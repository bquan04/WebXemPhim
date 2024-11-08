package com.poly.ps24083.dao;

import java.util.Date;
import java.util.List;

import com.poly.ps24083.enity.Video;

public interface FavoriteDao {
	
	// video người dung thich
	 List<Video> findAllVideoOfUserFavorited(Integer usid,boolean active);
	
	// title video nguoi dung thich 
	 List<Video> findTitleVideoOfUserFavorited(Integer usid,String titleVideo);
	
	//video like trong khoảng thoi gian
	 List<Video> findVideoInRangeOfUserFavorited(Integer usid,Date min ,Date max);
	
	// video yeu thích theo thang
	 List<Video> findVideoInMonths(Integer usid,Integer[] months);
	
}

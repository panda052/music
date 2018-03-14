package com.music.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Songs entity. @author MyEclipse Persistence Tools
 */

public class Songs implements java.io.Serializable {

	// Fields

	private Integer songid;
	private String songname;
	private Double price;
	private String filepath;
	private String album;
	private String language;
	private String lyrics;
	private Integer singer;
	private Set orders = new HashSet(0);
	private Set orders_1 = new HashSet(0);
	private Set orders_2 = new HashSet(0);
	private Set orders_3 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Songs() {
	}

	/** minimal constructor */
	public Songs(String filepath) {
		this.filepath = filepath;
	}

	/** full constructor */
	public Songs(String songname, Double price, String filepath, String album,
			String language, String lyrics, Integer singer, Set orders,
			Set orders_1, Set orders_2, Set orders_3) {
		this.songname = songname;
		this.price = price;
		this.filepath = filepath;
		this.album = album;
		this.language = language;
		this.lyrics = lyrics;
		this.singer = singer;
		this.orders = orders;
		this.orders_1 = orders_1;
		this.orders_2 = orders_2;
		this.orders_3 = orders_3;
	}

	// Property accessors

	public Integer getSongid() {
		return this.songid;
	}

	public void setSongid(Integer songid) {
		this.songid = songid;
	}

	public String getSongname() {
		return this.songname;
	}

	public void setSongname(String songname) {
		this.songname = songname;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public String getAlbum() {
		return this.album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getLanguage() {
		return this.language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getLyrics() {
		return this.lyrics;
	}

	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}

	public Integer getSinger() {
		return this.singer;
	}

	public void setSinger(Integer singer) {
		this.singer = singer;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

	public Set getOrders_1() {
		return this.orders_1;
	}

	public void setOrders_1(Set orders_1) {
		this.orders_1 = orders_1;
	}

	public Set getOrders_2() {
		return this.orders_2;
	}

	public void setOrders_2(Set orders_2) {
		this.orders_2 = orders_2;
	}

	public Set getOrders_3() {
		return this.orders_3;
	}

	public void setOrders_3(Set orders_3) {
		this.orders_3 = orders_3;
	}

}
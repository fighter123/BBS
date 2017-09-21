package com.webapp.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

/**
 * TbMedia entity. @author MyEclipse Persistence Tools
 */

public class TbMedia implements java.io.Serializable
{

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final GenerationType IDENTITY = null;
	private Integer id;
	private String title;
	private String src;
	private String picture;
	private String descript;
	private String uptime;

	// Constructors

	/** default constructor */
	public TbMedia()
	{
	}

	/** minimal constructor */
	public TbMedia(Integer id, String title, String src, String picture)
	{
		this.id = id;
		this.title = title;
		this.src = src;
		this.picture = picture;
	}

	/** full constructor */
	public TbMedia(Integer id, String title, String src, String picture,
			String descript, String uptime)
	{
		this.id = id;
		this.title = title;
		this.src = src;
		this.picture = picture;
		this.descript = descript;
		this.uptime = uptime;
	}

	// Property accessors

	public Integer getId()
	{
		return this.id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public String getTitle()
	{
		return this.title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getSrc()
	{
		return this.src;
	}

	public void setSrc(String src)
	{
		this.src = src;
	}

	public String getPicture()
	{
		return this.picture;
	}

	public void setPicture(String picture)
	{
		this.picture = picture;
	}

	public String getDescript()
	{
		return this.descript;
	}

	public void setDescript(String descript)
	{
		this.descript = descript;
	}

	public String getUptime()
	{
		return this.uptime;
	}

	public void setUptime(String uptime)
	{
		this.uptime = uptime;
	}

}
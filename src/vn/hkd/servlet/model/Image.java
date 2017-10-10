package vn.hkd.servlet.model;

import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionEvent;

public class Image implements HttpSessionBindingListener, HttpSessionActivationListener {
	private String name;
	private int width;
	private int height;
	
	public Image() {
		super();
	}
	public Image(String name, int width, int height) {
		super();
		this.name = name;
		this.width = width;
		this.height = height;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	
	//Bắt sự kiện
	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		event.getSession().getServletContext().log("Image in the Session" + getName());
	}
	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		event.getSession().getServletContext().log("Image out the Session");
	}
	@Override
	public void sessionDidActivate(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void sessionWillPassivate(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	
}

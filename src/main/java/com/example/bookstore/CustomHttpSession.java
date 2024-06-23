package com.example.bookstore;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

public class CustomHttpSession implements HttpSession {

	private final String id;
	private final Map<String, Object> attributes = new HashMap<>();
	private final long creationTime;
	private long lastAccessedTime;

	public CustomHttpSession() {
		this.id = "";
		this.creationTime = System.currentTimeMillis();
		this.lastAccessedTime = this.creationTime;
	}

	@Override
	public long getCreationTime() {
		return creationTime;
	}

	@Override
	public String getId() {
		return id;
	}

	@Override
	public long getLastAccessedTime() {
		return lastAccessedTime;
	}

	@Override
	public ServletContext getServletContext() {
		return null; // Trả về null hoặc đối tượng ServletContext thực tế
	}

	@Override
	public void setMaxInactiveInterval(int interval) {
		// Xử lý nếu cần thiết
	}

	@Override
	public int getMaxInactiveInterval() {
		return 0; // Trả về giá trị thích hợp
	}

	@Override
	public HttpSessionContext getSessionContext() {
		return null; // Deprecated, có thể bỏ qua
	}

	@Override
	public Object getAttribute(String name) {
		return attributes.get(name);
	}

	@Override
	public Object getValue(String name) {
		return getAttribute(name);
	}

	@Override
	public Enumeration<String> getAttributeNames() {
		return java.util.Collections.enumeration(attributes.keySet());
	}

	@Override
	public String[] getValueNames() {
		return attributes.keySet().toArray(new String[0]);
	}

	@Override
	public void setAttribute(String name, Object value) {
		attributes.put(name, value);
	}

	@Override
	public void putValue(String name, Object value) {
		setAttribute(name, value);
	}

	@Override
	public void removeAttribute(String name) {
		attributes.remove(name);
	}

	@Override
	public void removeValue(String name) {
		removeAttribute(name);
	}

	@Override
	public void invalidate() {
		attributes.clear();
	}

	@Override
	public boolean isNew() {
		return false; // Tùy chỉnh theo yêu cầu
	}

	// Các phương thức khác nếu cần
}

package com.luoyunfan.action;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements RequestAware,SessionAware,ApplicationAware{
 
private static final long serialVersionUID = 1L;

public Map<String, Object> request;

   public Map<String, Object> session;
   
   public Map<String, Object> application;
@Override
public void setApplication(Map<String, Object> request) {
	this.request = request;
	
}

@Override
public void setSession(Map<String, Object> session) {
	this.session = session;
	
}

@Override
public void setRequest(Map<String, Object> application) {
	this.application = application;
	
}
}

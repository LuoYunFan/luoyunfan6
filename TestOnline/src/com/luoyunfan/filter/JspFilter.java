package com.luoyunfan.filter;

 
import java.io.IOException;  

import javax.servlet.Filter;  
import javax.servlet.FilterChain;  
import javax.servlet.FilterConfig;  
import javax.servlet.ServletException;  
import javax.servlet.ServletRequest;  
import javax.servlet.ServletResponse;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
 
public class JspFilter implements Filter {  
     
   @Override  
   public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {  
       HttpServletRequest httpServletRequest = (HttpServletRequest) request;  
       HttpServletResponse httpServletResponse = (HttpServletResponse) response;  
       String url = httpServletRequest.getRequestURI();  
//       System.out.println(url);
       if(url != null && (url.contains("admin")&&(!url.contains("adminLogin"))&&(!url.contains("js/"))  )) {  
           Object obj = httpServletRequest.getSession().getAttribute("admin");
//           System.out.println(obj);
           if(obj==null){
        	   httpServletResponse.sendRedirect("/TestOnline/index.jsp");
           }
       }else { 
    	   if(url != null && (  (url.contains("student") && (!url.contains("stuLogin")) 
    			   &&(!url.contains("stuRegist"))&&(!url.contains("js/"))  ) ) ) {
    		   Object obj = httpServletRequest.getSession().getAttribute("stulogin");
//    		   System.out.println(obj);
               if(obj==null){
            	   httpServletResponse.sendRedirect("/TestOnline/index.jsp");
               }
    	   }
       }
       chain.doFilter(request, response);  
   }  
 
   @Override  
   public void destroy() {  
         
   }  
 
   @Override  
   public void init(FilterConfig arg0) throws ServletException {  
         
   }  
 
}  
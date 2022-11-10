package org.zerock.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class CustomApplicationListener
 *
 */
@WebListener
public class CustomApplicationListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public CustomApplicationListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
        //application영역에 attribute를 추가
    	//https://study-2022-11-10-jej.s3.ap-northeast-2.amazonaws.com/prj1/board
    	ServletContext application = sce.getServletContext();
    	application.setAttribute("imgUrl", "https://study-2022-11-10-jej.s3.ap-northeast-2.amazonaws.com/prj1/board");
    }
	
}

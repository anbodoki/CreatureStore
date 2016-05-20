package main.java.context;

import com.mysql.jdbc.AbandonedConnectionCleanupThread;
import main.java.db.DBConfig;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;

/**
 * Application Lifecycle Listener implementation class ContextListener
 *
 */
//@WebListener
public class ContextListener implements ServletContextListener {
	/**
	 * Default constructor. 
	 */
	public ContextListener() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		try {
			AbandonedConnectionCleanupThread.shutdown();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource dataSource = (DataSource) envContext.lookup("jdbc/"
					+ DBConfig.getDBName());
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

}

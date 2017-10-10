package vn.hkd.servlet.Listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

//Cả hệ thống không biết sự tồn tại, ko biết nó là Listener hay không. Phải config trong web XML
public class WebsiteSession implements HttpSessionListener {
	
	//Test hệ thống, tạo các client ảo connect đến hệ thống, kiểm soát.
	private static int numberOfSession=0;

	@Override
	public void sessionCreated(HttpSessionEvent event) {
		// TODO Auto-generated method stub
		event.getSession().getServletContext().log("A new session was create " + (++numberOfSession));
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent event) {
		// TODO Auto-generated method stub
		event.getSession().getServletContext().log("A session was detroyed " + (--numberOfSession));
	}

}

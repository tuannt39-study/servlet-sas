package vn.hkd.servlet.model;

public class DatabaseManagement {
	public boolean checkUser (String username, String password) {
		if (username.equals("tuan") && password.equals("1234")) {
			return true;
		} else {
			return false;
		}
	}
}
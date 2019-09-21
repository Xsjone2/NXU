package bean;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;
import bean.*;

public class UserDaoImp implements UserDao {
	private Connection connection;
	private PreparedStatement userQuery;
	private ResultSet results;

	@Override
	public List<User> getUser() {

		return null;
	}

	@Override
	public int add(User newUser) {
		int res = 0;
		try {
			connection = DBcon.getConnction();
			if (connection == null)
				return -1;
			userQuery = connection.prepareStatement(
					"insert into login (userName,password,shenfen,userID,sex,classId,phoneNumber) values (?,?,?,?,?,?,?)");

			userQuery.setString(1, newUser.getUserName());
			userQuery.setString(2, newUser.getPassword());
			userQuery.setInt(3, newUser.getShenfen());
			userQuery.setString(4, newUser.getUserID());
			userQuery.setString(5, newUser.getSex());
			userQuery.setString(6, newUser.getClassId());
			userQuery.setString(7, newUser.getPhoneNumber());

			res = userQuery.executeUpdate();

		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			DBcon.closeStatement(userQuery);
			DBcon.closeConnection(connection);
		}
		return res;
	}

	@Override
	public int delete(String userName) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(User userBean) {
		int res = 0;
		try {
			connection = DBcon.getConnction();
			userQuery = connection.prepareStatement("update  login set password =  ? , userID = ? , sex = ? , classId = ? , phoneNumber= ?   where userName = ?");
			userQuery.setString(1, userBean.getPassword());
			userQuery.setString(2, userBean.getUserID());
			userQuery.setString(3, userBean.getSex());
			userQuery.setString(4, userBean.getClassId());
			userQuery.setString(5, userBean.getPhoneNumber());
			userQuery.setString(6, userBean.getUserName());
			res = userQuery.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			DBcon.closeStatement(userQuery);
			DBcon.closeConnection(connection);
		}
		return res;
	}

	@Override
	public User findByName(String userName) {
		User res = null;
		try {
			connection = DBcon.getConnction();
			userQuery = connection.prepareStatement("select * from login where userName =?");
			userQuery.setString(1, userName);
			results = userQuery.executeQuery();
			if (results.next()) {
				res = new User();
				res.setClassId(results.getString("classId"));
				res.setPassword(results.getString("password"));
				res.setPhoneNumber(results.getString("phoneNumber"));
				res.setSex(results.getString("sex"));
				res.setUserName(results.getString("userName"));
				res.setShenfen(results.getInt("shenfen"));
				res.setUserID(results.getString("userID"));
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			DBcon.closeResultSet(results);
			DBcon.closeStatement(userQuery);
			DBcon.closeConnection(connection);
		}
		return res;
	}

	@Override
	public User userLogin(String userName, String password) {
		User res = null;
		try {
			connection = DBcon.getConnction();
			System.out.println("hello world");
			System.out.println("hello world");
			System.out.println("hello world");
			System.out.println("hello world");
			System.out.println("hello world");
			
			userQuery = connection.prepareStatement("select * from login where userName = ? and password = ? ");
			System.out.println("hello world");
			System.out.println("hello world");
			System.out.println("hello world");
			System.out.println("hello world");
			System.out.println("hello world");
			userQuery.setString(1, userName);
			userQuery.setString(2, password);
			results = userQuery.executeQuery();

			if (results.next()) {
				res = new User();
				res.setClassId(results.getString("classId"));
				res.setPassword(results.getString("password"));
				res.setPhoneNumber(results.getString("phoneNumber"));
				res.setSex(results.getString("sex"));
				res.setUserName(results.getString("userName"));
				res.setShenfen(results.getInt("shenfen"));
				res.setUserID(results.getString("userID"));
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			DBcon.closeResultSet(results);
			DBcon.closeStatement(userQuery);
			DBcon.closeConnection(connection);
		}
		return res;
	}

	@Override
	public List<usedLost> getMyLostThing(String userName) {
		List<usedLost> res = new LinkedList<>();
		try {
			connection = DBcon.getConnction();
			userQuery = connection.prepareStatement("select * from lostinfo where OwnerName = ? ");
			userQuery.setString(1, userName);
			results = userQuery.executeQuery();

			while (results.next()) {
				usedLost t = new usedLost();
				t.setOwnerName(results.getString("OwnerName"));
				t.setLostIntro(results.getString("lostIntro"));
				t.setLostPickup(results.getString("lostPickup"));
				t.setLostState(results.getString("lostState"));
				t.setLostName(results.getString("lostName"));
				
				
				res.add(t);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			DBcon.closeResultSet(results);
			DBcon.closeStatement(userQuery);
			DBcon.closeConnection(connection);
		}
		return res;
	}

	@Override
	public List<usedThing> getMyUsedThing(String userName) {
		List<usedThing> res = new LinkedList<>();
		try {
			connection = DBcon.getConnction();
			userQuery = connection.prepareStatement("select * from thinginfo where OwnerName = ? ");
			userQuery.setString(1, userName);
			results = userQuery.executeQuery();
			System.out.println("Hello world1");
			while (results.next()) {
				usedThing t = new usedThing();
				t.setOwnerName(results.getString("OwnerName"));
				t.setThingsPrice(results.getInt("thingsPrice"));
				t.setThingsIntro(results.getString("thingsIntro"));
				t.setThingsState(results.getString("thingsState"));
				t.setOwnerPhone(results.getString("OwnerPhone"));
				t.setThingsName(results.getString("thingsName"));
				System.out.println("Hello world2");
				res.add(t);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			DBcon.closeResultSet(results);
			DBcon.closeStatement(userQuery);
			DBcon.closeConnection(connection);
		}
		return res;
	}

	@Override
	public List<usedJob> getMyPublishedJop(String userName) {
		List<usedJob> res = new LinkedList<>();
		try {
			connection = DBcon.getConnction();
			userQuery = connection.prepareStatement("select * from jobinfo where OwnerName = ? ");
			userQuery.setString(1, userName);
			results = userQuery.executeQuery();
			while (results.next()) {
				usedJob t = new usedJob();
				t.setOwnerName(results.getString("OwnerName"));
				t.setJobIntro(results.getString("jobIntro"));
				t.setJobNumber(results.getString("jobNumber"));
				t.setJobRequire(results.getString("jobRequire"));
				t.setJobPrice(results.getString("jobPrice"));
				t.setJobState(results.getString("jobState"));
				res.add(t);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			DBcon.closeResultSet(results);
			DBcon.closeStatement(userQuery);
			DBcon.closeConnection(connection);
		}
		return res;
	}

}

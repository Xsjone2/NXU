package bean;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;


public class usedThingDaoImp implements usedThingDao {
	private Connection connection;
	private PreparedStatement userQuery;
	private ResultSet results;
	private Statement stat;

	@Override
	public List<usedThing> getUsedThings() {
		List<usedThing> res = new LinkedList();
		try {
			connection = DBcon.getConnction();
			if (connection != null) {
				stat = (Statement) connection.createStatement();
				results = stat.executeQuery("select * from thinginfo");
				while (results.next()) {
					res.add(new usedThing(results.getString("thingsName"), results.getInt("thingsPrice"),
							results.getString("thingsIntro"), results.getString("OwnerName"),
							results.getString("thingsState"), results.getString("OwnerPhone")));
				}
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			DBcon.closeStatement(stat);
			DBcon.closeStatement(userQuery);
			DBcon.closeConnection(connection);
		}

		return res;
	}

	@Override
	public int add(usedThing newThing) {
		int res = 0;
		try {
			connection = DBcon.getConnction();
			if (connection != null) {
				userQuery = connection.prepareStatement(
						"insert into thinginfo (OwnerName,thingsName,thingsPrice,thingsIntro,OwnerPhone,thingsState)values(?,?,?,?,?,?)");
				userQuery.setString(1, newThing.getOwnerName());
				userQuery.setString(2, newThing.getThingsName());
				userQuery.setInt(3, newThing.getThingsPrice());
				userQuery.setString(4, newThing.getThingsIntro());
				userQuery.setString(5, newThing.getOwnerPhone());
				userQuery.setString(6, newThing.getThingsState());
				res = userQuery.executeUpdate();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			DBcon.closeStatement(userQuery);
			DBcon.closeConnection(connection);
		}

		return res;
	}

	@Override
	public int delete(String thingsName, String OwnerName) {
		int res = 0;
		try {
			connection = DBcon.getConnction();
			if (connection != null) {
				userQuery = connection
						.prepareStatement("delete from  thinginfo where thingsName = ? and OwnerName = ?");
				userQuery.setString(1, thingsName);
				userQuery.setString(2, OwnerName);
				res = userQuery.executeUpdate();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			DBcon.closeStatement(userQuery);
			DBcon.closeConnection(connection);
		}
		return res;
	}

	@Override
	public int update(usedThing thingBean) {
		int res = 0;
		try {
			connection = DBcon.getConnction();
			if (connection != null) {
				userQuery = connection.prepareStatement(
						"update thinginfo set thingsPrice = ? ,  thingsIntro = ? , OwnerPhone = ? , thingsState = ? where  thingsName = ?  ");
				userQuery.setInt(1, thingBean.getThingsPrice());
				userQuery.setString(2, thingBean.getThingsIntro());
				userQuery.setString(3, thingBean.getOwnerPhone());
				userQuery.setString(4, thingBean.getThingsState());
				// userQuery.setString(5, thingBean.getOwnerName());
				userQuery.setString(5, thingBean.getThingsName());
				res = userQuery.executeUpdate();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			DBcon.closeStatement(userQuery);
			DBcon.closeConnection(connection);
		}
		return res;
	}

	@Override
	public usedThing findByName(String thingsName) {
		// TODO Auto-generated method stub
		return null;
	}

}

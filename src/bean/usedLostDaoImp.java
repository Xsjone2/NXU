package bean;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;



public class usedLostDaoImp implements usedLostDao {
	private Connection connection;
	private PreparedStatement userQuery;
	private ResultSet results;
	private Statement stat;
	@Override
	public List<usedLost> getUsedLost() {
		// TODO Auto-generated method stub
		List<usedLost> res =new LinkedList();
		try{
			connection = DBcon.getConnction();
			if(connection!=null)
		    {   
				System.out.println("hey3");
				stat = (Statement) connection.createStatement();
				System.out.println("hey4");
				results =stat.executeQuery("select * from lostinfo");
				while(results.next())
				{
					System.out.println("hey5");
					res.add(new usedLost(results.getString("OwnerName"),results.getString("lostName"),results.getString("lostIntro"),results.getString("lostPickup"),results.getString("lostState")));
				}
		
		    }
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
		}
		finally{
			DBcon.closeStatement(stat);
			DBcon.closeStatement(userQuery);
			DBcon.closeConnection(connection);
		}
		return res;
		}

	@Override
	public int add(usedLost newLost) {
		int res=0;
		try{
			connection = DBcon.getConnction();
			if(connection!=null)
			{
				userQuery =connection.prepareStatement("insert into lostinfo (OwnerName,lostName,lostIntro,lostPickup,lostState)values(?,?,?,?,?)");
				userQuery.setString(1, newLost.getOwnerName());
				userQuery.setString(2, newLost.getLostName());
				userQuery.setString(3, newLost.getLostIntro());
				userQuery.setString(4, newLost. getLostPickup());
				userQuery.setString(5, newLost.getLostState());
				res = userQuery.executeUpdate();
			}
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
		}
		finally{
			DBcon.closeStatement(userQuery);
			DBcon.closeConnection(connection);
		}
		
		return res;
	}



	@Override
	public int delete(String lostName, String OwnerName) {
		int res = 0;
		try {
			connection = DBcon.getConnction();
			if (connection != null) {
				userQuery = connection
						.prepareStatement("delete from  lostinfo where lostName = ? and OwnerName = ?");
				userQuery.setString(1, lostName);
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
	public int update(usedLost lostBean) {
		int res = 0;
		try {
			connection = DBcon.getConnction();
			if (connection != null) {
				userQuery = connection.prepareStatement(
						"update lostinfo set lostIntro = ? ,  lostPickup = ? , lostState = ? where  lostName = ?  ");
				userQuery.setString(1, lostBean.getLostIntro());
				userQuery.setString(2, lostBean.getLostPickup());
				userQuery.setString(3, lostBean.getLostState());
				userQuery.setString(4, lostBean.getLostName());
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
	public usedLost findByName(String lostName) {
		// TODO Auto-generated method stub
		return null;
	}

}

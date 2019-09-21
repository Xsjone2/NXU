package bean;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;


public class usedJobDaoImp implements usedJobDao {
	
	private Connection connection;
	private PreparedStatement userQuery;
	private ResultSet results;
	private Statement stat;


	public List<usedJob> getUsedJob() {
		// TODO Auto-generated method stub
		List<usedJob> res =new LinkedList();
		try{
			connection = DBcon.getConnction();
			if(connection!=null)
			{
				System.out.println("hey3");
				stat = (Statement) connection.createStatement();
				System.out.println("hey4");
				results =stat.executeQuery("select * from jobinfo");
				while(results.next())
				{
					System.out.println("hey5");
					res.add(new usedJob(results.getString("OwnerName"),results.getString("jobIntro"),results.getString("jobNumber"),results.getString("jobRequire"),results.getString("jobPrice"),results.getString("jobState")));
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
	public int add(usedJob newJob) {
		int res=0;
		try{
			connection = DBcon.getConnction();
			if(connection!=null)
			{
				userQuery =connection.prepareStatement("insert into jobinfo (OwnerName,jobIntro,jobNumber,jobRequire,jobPrice,jobState)values(?,?,?,?,?,?)");
				userQuery.setString(1, newJob.getOwnerName() );
				userQuery.setString(2, newJob.getJobIntro());
				userQuery.setString(3, newJob. getJobNumber());
				userQuery.setString(4, newJob. getJobRequire());
				userQuery.setString(5, newJob.getJobPrice());
				userQuery.setString(6, newJob.getJobState());
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
	public int delete(String jobIntro, String OwnerName) {

		int res = 0;
		try {
			connection = DBcon.getConnction();
			if (connection != null) {
				userQuery = connection
						.prepareStatement("delete from  jobinfo where jobIntro = ? and OwnerName = ?");
				userQuery.setString(1, jobIntro);
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
	public int update(usedJob jobBean) {
		int res = 0;
		try {
			connection = DBcon.getConnction();
			if (connection != null) {
				userQuery = connection.prepareStatement(
						"update jobinfo set jobNumber = ? ,  jobRequire = ? , jobPrice = ? , jobState = ? where  jobIntro = ?  ");
				userQuery.setString(1, jobBean.getJobNumber());
				userQuery.setString(2, jobBean.getJobRequire());
				userQuery.setString(3, jobBean.getJobPrice());
				userQuery.setString(4, jobBean.getJobState());
				userQuery.setString(5, jobBean.getJobIntro());
				
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
	public usedJob findByName(String jobIntor) {
		// TODO Auto-generated method stub
		return null;
	}

}

package bean;

import java.util.List;

public interface usedLostDao {
	public List<usedLost> getUsedLost();//获得usedLost列表
	public int add(usedLost newLost); //添加user
	public int delete(String lostName,String OwnerName); //删除user
	public int update(usedLost lostBean); //修改user
	public usedLost findByName(String lostName);//根据user name 查找user
}

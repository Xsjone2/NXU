package bean;

import java.util.List;

public interface usedThingDao {
	public List<usedThing> getUsedThings();//获得usedThing列表
	public int add(usedThing newThing); //添加user
	public int delete(String thingsName,String OwnerName) ;//删除user
	public int update(usedThing thingBean); //修改user
	public usedThing findByName(String thingsName);//根据user name 查找user
}

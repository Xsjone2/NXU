package bean;

import java.util.List;

public interface usedThingDao {
	public List<usedThing> getUsedThings();//���usedThing�б�
	public int add(usedThing newThing); //���user
	public int delete(String thingsName,String OwnerName) ;//ɾ��user
	public int update(usedThing thingBean); //�޸�user
	public usedThing findByName(String thingsName);//����user name ����user
}

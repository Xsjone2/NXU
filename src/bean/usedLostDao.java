package bean;

import java.util.List;

public interface usedLostDao {
	public List<usedLost> getUsedLost();//���usedLost�б�
	public int add(usedLost newLost); //���user
	public int delete(String lostName,String OwnerName); //ɾ��user
	public int update(usedLost lostBean); //�޸�user
	public usedLost findByName(String lostName);//����user name ����user
}

package bean;

import java.util.List;

public interface usedJobDao {
	public List<usedJob> getUsedJob();//���usedJob�б�
	public int add(usedJob newJob); //���user
	public int delete(String jobIntro,String OwnerName); //ɾ��user
	public int update(usedJob jobBean); //�޸�user
	public usedJob findByName(String jobIntor);//����user name ����user
}

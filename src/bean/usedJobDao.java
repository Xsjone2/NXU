package bean;

import java.util.List;

public interface usedJobDao {
	public List<usedJob> getUsedJob();//获得usedJob列表
	public int add(usedJob newJob); //添加user
	public int delete(String jobIntro,String OwnerName); //删除user
	public int update(usedJob jobBean); //修改user
	public usedJob findByName(String jobIntor);//根据user name 查找user
}

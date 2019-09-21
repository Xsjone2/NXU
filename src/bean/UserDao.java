package bean;
import java.util.List;

public interface UserDao {
	public List<User> getUser();//获得user列表
	public int add(User newUser); //添加user
	public int delete(String userName); //删除user
	public int update(User userBean); //修改user
	public User findByName(String userName);//根据user name 查找user
	public User userLogin(String userName,String password);//根据user name 查找user
	public  List<usedLost> getMyLostThing(String userName);
	public List<usedThing> getMyUsedThing(String userName);
	public  List<usedJob> getMyPublishedJop(String userName);
}

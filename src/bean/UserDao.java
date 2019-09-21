package bean;
import java.util.List;

public interface UserDao {
	public List<User> getUser();//���user�б�
	public int add(User newUser); //���user
	public int delete(String userName); //ɾ��user
	public int update(User userBean); //�޸�user
	public User findByName(String userName);//����user name ����user
	public User userLogin(String userName,String password);//����user name ����user
	public  List<usedLost> getMyLostThing(String userName);
	public List<usedThing> getMyUsedThing(String userName);
	public  List<usedJob> getMyPublishedJop(String userName);
}

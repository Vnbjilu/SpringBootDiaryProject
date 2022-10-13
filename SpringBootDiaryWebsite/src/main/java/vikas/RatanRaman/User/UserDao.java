package vikas.RatanRaman.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserDao {
	
	@Autowired
	UserRepository temp;
	
	public User insert(User e)
	{
		return temp.save(e);
	}

	public List<User> getAllRecord()
	{
		return temp.findAll();
	}
}

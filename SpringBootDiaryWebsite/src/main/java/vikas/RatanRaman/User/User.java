package vikas.RatanRaman.User;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="userId")
	private int userId;
	
	@Column(length=30,name="userFirst")
	private String userFirst;
	
	@Column(length=30,name="userLast")
	private String userLast;
	
	@Column(length=30,name="userName")
	private String userName;
	
	@Column(length=50,name="userPassword")
	private String userPassword;
	
	@Column(length=100,name="userEmail")
	private String userEmail;
	
	@Column(length=30,name="uerType")
	private String userType;
}

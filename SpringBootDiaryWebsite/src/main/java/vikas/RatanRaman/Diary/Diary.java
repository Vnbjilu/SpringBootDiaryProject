package vikas.RatanRaman.Diary;

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
public class Diary {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int personId;
	
	@Column(length=30)
	private String personFirst;
	
	@Column(length=30)
	private String personLast;
	
	@Column(length=100)
	private String personEmail;
	
	@Column(length=15)
	private String personContact1;
	
	@Column(length=15)
	private String personContact2;
	
	@Column(length=120)
	private String personAddress;
	

}

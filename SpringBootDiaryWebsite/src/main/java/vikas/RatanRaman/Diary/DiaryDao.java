package vikas.RatanRaman.Diary;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DiaryDao {
	
	@Autowired
	DiaryRepository dTemp;

	public Diary insert(Diary E)
	{
		return dTemp.save(E);
	}
	public List<Diary> getAllRecord()
	{
		return dTemp.findAll();
	}
	public Diary update(Diary E)
	{
		return dTemp.save(E);
	}
	public Optional<Diary> getRecordById(int personId)
	{
		return dTemp.findById(personId);
	}
	public String deleteById(int personId)
	{
		 dTemp.deleteById(personId);
		 return "Data DeletedSuccesfully of Id="+personId;
	}
}

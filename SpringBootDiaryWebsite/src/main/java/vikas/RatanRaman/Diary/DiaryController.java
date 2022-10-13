package vikas.RatanRaman.Diary;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController

public class DiaryController {
	
	@Autowired
	DiaryDao dao;
	

	@RequestMapping("/diary")
	public ModelAndView diaryHome(HttpServletRequest request,HttpServletResponse response)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("diaryIndex.jsp");
		return mv;
		
	}
	@RequestMapping("/saveDiary")
	public ModelAndView createDiary(HttpServletRequest request,HttpServletResponse response)
	{
		ModelAndView mv=new ModelAndView();
		Diary dd=new Diary();
		dd.setPersonFirst(request.getParameter("personFirst"));
		dd.setPersonLast(request.getParameter("personLast"));
		dd.setPersonEmail(request.getParameter("personEmail"));
		dd.setPersonContact1(request.getParameter("personContact1"));
		dd.setPersonContact2(request.getParameter("personContact2"));
		dd.setPersonAddress(request.getParameter("personAddress"));
		Diary tmp=dao.insert(dd);
		if(tmp!=null)
			mv.setViewName("/displayDiary");
		else
			mv.setViewName("failure.jsp");
		return mv;
	}
	
	@RequestMapping("/updateDiary")
	public ModelAndView updateDiary(HttpServletRequest request,HttpServletResponse response)
	{
		ModelAndView mv=new ModelAndView();
		Diary dd=new Diary();
		dd.setPersonId(Integer.parseInt(request.getParameter("personId")));
		dd.setPersonFirst(request.getParameter("personFirst"));
		dd.setPersonLast(request.getParameter("personLast"));
		dd.setPersonEmail(request.getParameter("personEmail"));
		dd.setPersonContact1(request.getParameter("personContact1"));
		dd.setPersonContact2(request.getParameter("personContact2"));
		dd.setPersonAddress(request.getParameter("personAddress"));
		Diary tmp=dao.insert(dd);
		if(tmp!=null)
			mv.setViewName("/displayDiary");
		else
			mv.setViewName("failure.jsp");
		return mv;
	}
	
	@RequestMapping("/displayDiary")
	public ModelAndView displayDiary(HttpServletRequest request,HttpServletResponse response)
	{
		ModelAndView mv=new ModelAndView();
		if(request.getAttribute("msg")!=null)
		{
			mv.addObject("msg", (String)request.getAttribute("msg"));
			
		}
		
		List<Diary> diary=dao.getAllRecord();
		mv.addObject("diary", diary);
		mv.setViewName("displayDiary.jsp");
		return mv;
		
	}
	@RequestMapping("/createDiary")
	public ModelAndView displayForm(HttpServletRequest request,HttpServletResponse response)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("diaryCreateFrm.jsp");
		return mv;
	}


@RequestMapping("/editDiaryFrm")
public ModelAndView editDiaryFrm(HttpServletRequest request,HttpServletResponse response)
{
	ModelAndView mv=new  ModelAndView();
	System.out.print("\n hello came");
	int personId=Integer.parseInt(request.getParameter("personId"));
	Optional<Diary> dd=dao.getRecordById(personId);
	mv.addObject("diary", dd);
	mv.setViewName("editDiaryFrm.jsp");
	return mv;
	
}
@RequestMapping("/deleteDiary")
public ModelAndView deleteDiary(HttpServletRequest request,HttpServletResponse response)
{
	ModelAndView mv=new ModelAndView();
	int personId=Integer.parseInt(request.getParameter("personId"));
	String msg=dao.deleteById(personId);
	mv.addObject("msg", msg);
	
	
	mv.setViewName("/displayDiary");
	return mv;
}
}

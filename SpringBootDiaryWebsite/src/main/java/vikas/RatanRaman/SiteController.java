package vikas.RatanRaman;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SiteController {
	@RequestMapping("/")
	public ModelAndView mainPage(HttpServletRequest request,HttpServletResponse response)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("mainIndex.jsp");
		return mv;
	}

}

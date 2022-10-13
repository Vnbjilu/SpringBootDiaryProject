package vikas.RatanRaman.User;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class UserController {
	@Autowired
	UserDao uda;

	@RequestMapping("/user")
	public ModelAndView userHome(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userIndex.jsp");
		return mv;
	}

	@RequestMapping("createFrm")
	public ModelAndView displayUserFrm(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userCreateFrm.jsp");

		return mv;
	}

	@RequestMapping("/createUser")
	public ModelAndView createUser(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		User user = new User();
		user.setUserFirst(request.getParameter("userFirst"));
		user.setUserLast(request.getParameter("userLast"));
		user.setUserName(request.getParameter("userName"));
		user.setUserPassword(request.getParameter("userPassword"));
		user.setUserEmail(request.getParameter("userEmail"));
		user.setUserType(request.getParameter("userType"));
		User tmp = uda.insert(user);
		if (tmp != null)
			mv.setViewName("/displayUser");
		else
			mv.setViewName("failure.jsp");

		return mv;

	}

	@RequestMapping("/displayUser")
	public ModelAndView displayUser(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		List<User> user = uda.getAllRecord();
		mv.addObject("user", user);
		mv.setViewName("displayUser.jsp");

		return mv;
	}
}

package com.example.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {

	@Autowired
	ProductDAO productDao;//Repository 
	
	@RequestMapping("/")
	public String home() {
		return "redirect:list";//url 이동 /list로 이동
	}
	@RequestMapping("/list")
	public ModelAndView list(ModelAndView mav) {
		mav.setViewName("list");//이동할 뷰이름  = return "list";
		mav.addObject("list", productDao.list());//model <- key , value
		System.out.println(mav);
		return mav;
	}
	
	
}

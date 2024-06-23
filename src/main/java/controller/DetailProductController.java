package controller;

import model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import service.ProductService;

@Controller
public class DetailProductController {
	@Autowired
	private ProductService productService;
	
	@GetMapping("detail")
	public ModelAndView detail(@RequestParam int ProductID) {
		ModelAndView modelAndView = new ModelAndView("detail");
		Product product = productService.findById(ProductID);
		modelAndView.addObject("product", product);
		
		return modelAndView;
	}
}

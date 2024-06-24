package controller;

import model.Account;
import model.Discount;
import model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.AccountService;
import service.CategoryService;
import service.DiscountService;
import service.ProductService;

import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private DiscountService discountService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@RequestMapping
	public String admin(ModelMap model, @ModelAttribute("discount") Discount discount) {
		long totalAccount = accountService.totalAccount();
		List<Account> list = accountService.getAll();
		List<Discount> listDiscount = discountService.getAllDiscount();
		List<Product> ListProduct = productService.getAllProd();

		model.addAttribute("totalProduct", productService.totalProduct());
		model.addAttribute("ListProduct", ListProduct);
		model.addAttribute("ListDiscount", listDiscount);
		model.addAttribute("ListAccount", list);
		model.addAttribute("TotalAccount", totalAccount);
		return "admin";
	}

	@GetMapping("/all")
	@ResponseBody
	public List<Discount> getAllDiscounts() {
		return discountService.getAllDiscounts();
	}

	@GetMapping("/{id}")
	@ResponseBody
	public Discount getDiscountById(@PathVariable String id) {
		return discountService.getDiscountById(id).orElse(null);
	}

	@PostMapping
	@ResponseBody
	public Discount createDiscount(@RequestBody Discount discount) {
		return discountService.saveDiscount(discount);
	}

//	@PutMapping("/{id}")
	@PostMapping(value = "them")
//	@ResponseBody
	public String updateDiscount(@ModelAttribute("discount") Discount discount, RedirectAttributes redirectAttributes) {
		discountService.saveDiscount(discount);
		return "redirect:/admin";
	}

//	@DeleteMapping("/{id}")
	@GetMapping("/delete")
//	@ResponseBody
	public String deleteDiscount(@RequestParam("code") String code, RedirectAttributes redirectAttributes) {
		discountService.deleteDiscount(code);
		return "redirect:/admin";
	}



	//	action=xoataikhoan&username=sad
	@GetMapping("/xoataikhoan")
	public String deleteAccount(@RequestParam String username,RedirectAttributes redirectAttributes) {
		accountService.deleteAccount(username);
		return "redirect:/admin";
	}
	@GetMapping("/setrole")
	public String setRole(@RequestParam String username,RedirectAttributes redirectAttributes) {
		Account acc = accountService.getAcc(username);
//		if(acc.getRole()==0) {
//			acc.setRole(1);
//		}
		switch (acc.getRole()) {
			case 1:
				acc.setRole(0);
				break;
			case 0:
				acc.setRole(1);
				break;
			default:
				break;
		}
		accountService.setRole(username,acc.getRole());
		return "redirect:/admin";
	}
}

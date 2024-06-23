package controller;

import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.connector.Response;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Account;
import model.Category;
import model.Discount;
import model.Product;
import service.AccountService;
import service.CategoryService;
import service.DiscountService;
import service.ProductService;

@org.springframework.stereotype.Controller

public class Controller {
    @Autowired
    private AccountService service;
    @Autowired
    private DiscountService discountService;
    @Autowired
    private ProductService productService;
    @Autowired
    private CategoryService categoryService;



    @GetMapping("/home")
    public String getHomePage(Model model) {
        List<Category> ListCategory = categoryService.findAll();
        List<Product> ListProduct = productService.getAllProd();

        model.addAttribute("ListProduct", ListProduct);
        model.addAttribute("ListCategory", ListCategory);
        return "index";
    }

    @GetMapping("/admin")
    public String admin(Model model) {
        long totalAccount = service.totalAccount();
        List<Account> list = service.getAll();
        List<Discount> listDiscount = discountService.getAllDiscount();
        List<Product> ListProduct = productService.getAllProd();

        model.addAttribute("totalProduct", productService.totalProduct());
        model.addAttribute("ListProduct", ListProduct);
        model.addAttribute("ListDiscount", listDiscount);
        model.addAttribute("ListAccount", list);
        model.addAttribute("TotalAccount", totalAccount);
        return "admin";
    }

    @GetMapping("/shop")
    public String shop(Model model, @RequestParam(defaultValue = "0")int page) {
        List<Category> ListCategory = categoryService.findAll();

        Page<Product> ListProduct = productService.getAllProd(page);

        model.addAttribute("ListProduct", ListProduct.getContent());
        model.addAttribute("totalPage", ListProduct.getTotalPages());
        model.addAttribute("pageNo",page);
        model.addAttribute("ListCategory", ListCategory);

        return "shop";
    }


    @GetMapping("/shop/{page}")
    public @ResponseBody List<Product> shop1(Model model, @RequestParam int page) {

        List<Category> ListCategory = categoryService.findAll();
        Page<Product> ListProduct = productService.getAllProd(page);
        List<Product> response = ListProduct.getContent();

        return response;
    }


    @GetMapping("/shop/page")
    public  ModelAndView shopPage(@RequestParam(defaultValue = "0") int page) {
        int pageSize = 10;
        Page<Product> productsPage = productService.getAllProd(page);
        List<Category> ListCategory = categoryService.findAll();
        ModelAndView modelAndView = new ModelAndView("productList");
        modelAndView.addObject("ListProduct", productsPage.getContent());
        modelAndView.addObject("pageNo", page);
        modelAndView.addObject("totalPage", productsPage.getTotalPages());
        modelAndView.addObject("ListCategory", ListCategory);
        return modelAndView;
    }



    @GetMapping("/ajax")
    public String ajax() {
        return "ajax";
    }

    @GetMapping("/error/403")
    public String error() {
        return "403";
    }


    @GetMapping("/test")
    public @ResponseBody String test() {
        return "s";
    }
}

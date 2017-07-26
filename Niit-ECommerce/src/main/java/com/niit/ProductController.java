package com.niit;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.ProductService;

@Controller
public class ProductController {

	@Autowired
    ProductService productservice;
   
	@RequestMapping("/admin-addproductform")
    public String AddProductForm(Model model)
    {
	List<Category>categories=productservice.Getallcategories();
	model.addAttribute("categories", categories);
	model.addAttribute("p",new Product());
	return "Addproduct";
    }
   
	@RequestMapping("/admin-addproduct")
	public String AddProduct(@ModelAttribute(name="p")Product p)
	{   
		productservice.AddProduct(p);
		MultipartFile image=p.getImage();
		Path path=Paths.get("C:\\Users\\Manik khosla\\git\\Niit-frontend\\Niit-ECommerce\\src\\main\\webapp\\WEB-INF\\images\\"+p.getId()+".jpg");
		
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/admin-addproductform";
	}
   
   @RequestMapping("/Getallproducts")
   public String GetAllProducts(Model model)
   {
	List<Product>products=productservice.GetAllProducts();
	model.addAttribute("products",products );
	return "Productlist";
   }
   
	@RequestMapping("/Viewproduct{id}")
	public String GetProductById(@PathVariable int id,Model model)
	{
		Product prdt=productservice.GetProductById(id);
		model.addAttribute("prdt",prdt);
		return "Viewproduct";
	}
    
	@RequestMapping("/admin-Editproductform{id}")
	public String Editproductform(@PathVariable int id,Model model)
	{   
		Product prdt=productservice.GetProductById(id);
		List<Category> categories=productservice.Getallcategories();
		model.addAttribute("prdt",prdt);
		model.addAttribute("categories",categories);
		
		return "Editproductform";
	}
	
	@RequestMapping("/admin-Editproduct")
	public String Editproduct(@ModelAttribute(name="prdt")Product prdt)
	{
		productservice.Editproduct(prdt);
		MultipartFile image=prdt.getImage();
		Path path=Paths.get("C:\\Users\\Manik khosla\\workspace\\Niit-ECommerce\\src\\main\\webapp\\WEB-INF\\images\\"+prdt.getId()+".jpg");
		
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/Getallproducts";
	}
	
	
	@RequestMapping("/admin-Deleteproduct{id}")
	public String Deleteproduct(@PathVariable int id,Model model)
	{   
		productservice.Deleteproduct(id);
		return "redirect:/Getallproducts";
	}
	
   }



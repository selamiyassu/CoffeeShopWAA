package edu.mum.coffee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.web.bind.annotation.RestController;

import edu.mum.coffee.domain.Product;

import edu.mum.coffee.service.ProductService;

@RestController
public class ProductWebServiceController {

	@Autowired
	private ProductService productService;

	// get products
	@GetMapping(path = "/products", produces = "application/json")
	public List<Product> getAllProducts() {
		return productService.getAllProduct();
	}

	// create products
	@PostMapping(path = "/products/create", consumes = "application/json", produces = "application/json")
	public String addProduct(@RequestBody Product product) {
		productService.save(product);
		return "ok";
	}

	// delete product
	@DeleteMapping(path = "/products/remove", consumes = { "application/xml",
			"application/json" }, produces = "application/json")
	public String removeProduct(@RequestBody Product product) {
		productService.delete(product);
		return "ok";
	}

}
package com.service;

import com.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{

    private  static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1,"AirBlade 160",50000000,"BlackRed","HonDa","image/airblade-red.jpg"));
        products.put(2, new Product(2,"AirBlade 125",41190000,"BlackWhite","HonDa","image/airblade-blackwhite.png"));
        products.put(3, new Product(3,"SH 150i",96790000,"Gray","HonDa","image/sh-gray.jpg"));
        products.put(4, new Product(4,"SH 125i",79790000,"Red","HonDa","image/sh-red.jpg"));
        products.put(5, new Product(5,"vision 2022",38000000,"White","HonDa","image/vision-white.png"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }


    @Override
    public void save(Product product) {
        products.put(product.getProductId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public Product findByName(String name) {
//        for (Map.Entry<Integer,Product> item: products.entrySet()) {
//             if ()
//
//        }
        return null;
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}

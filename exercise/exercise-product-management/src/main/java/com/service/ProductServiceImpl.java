package com.service;

import com.model.Product;

import java.util.*;

public class ProductServiceImpl implements ProductService{

    private  static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1,"AirBlade 160",50000000,"BlackRed","HonDa","https://giaxe.2banh.vn/cache/dataupload/products/slides/520_368_11971ad536bbe131685cce9bdf2f86d7.jpg"));
        products.put(2, new Product(2,"AirBlade 125",41190000,"BlackWhite","HonDa","https://img.tinxe.vn/crop/730x410/2020/12/04/XForF7yt/tc-125-honda-air-blade-4-b9b0.png"));
        products.put(3, new Product(3,"SH 150i",96790000,"Gray","HonDa","https://hoahonda.com.vn/wp-content/uploads/2022/03/BACK_Gr_2.png"));
        products.put(4, new Product(4,"SH 125i",79790000,"Red","HonDa","https://giaxe.2banh.vn/cache/dataupload/products/slides/520_368_a26fa3575cbe56c8e46ddac5111cfbe4.jpg"));
        products.put(5, new Product(5,"vision 2022",38000000,"White","HonDa","https://hoabinhminhxemay.com/wp-content/uploads/2022/03/honda-vision-2022.png"));
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
    public int findByName(String name) {
        Iterator<Product> iterator = products.values().iterator();
        int id = 0;
        while(iterator.hasNext()) {
            Product holder = iterator.next();
            if (Objects.equals(holder.getProductName(),name)) {
                id = holder.getProductId();
                break;
            }
        }
        return id;
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

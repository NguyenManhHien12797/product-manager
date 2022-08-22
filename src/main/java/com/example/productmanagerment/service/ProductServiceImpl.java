package com.example.productmanagerment.service;

import com.example.productmanagerment.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{


    private static Map<Integer, Product> productMap;

    static {
        productMap = new HashMap<>();
        productMap.put(1, new Product(1,"Bánh mì",120,"bánh kẹo","BHX"));
        productMap.put(2, new Product(2,"kẹo ngô",130,"kẹo","BHX"));
        productMap.put(3, new Product(3,"Bánh ngọt",140,"bánh kẹo","BHX"));
        productMap.put(4, new Product(4,"Kẹo dừa",150,"kẹo","BHX"));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product product) {
    productMap.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }


    @Override
    public void update(int id, Product product) {
    productMap.put(id,product);
    }

    @Override
    public void remove(int id) {
    productMap.remove(id);
    }
}

package manager_product.service;

import manager_product.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();

    void create(Product product);

    Product findById(int id);

    List<Product> findByName(String name);

    void edit(Product product);

    void delete(int id);
}

package manager_product.service;

import manager_product.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> display();

    void create(Product product);
}

package manager_product.repository;

import manager_product.model.Product;

import java.util.List;

public interface IRepositoryService {
    List<Product> display();

    void create(Product product);
}

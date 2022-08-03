package manager_product.repository;

import manager_product.model.Product;

import java.util.List;

public interface IProductRepository {

    List<Product> findAll();

    void create(int id, Product product);

    Product findById(int id);

    List<Product> findByName(String name);

    void edit(Product product);

    void delete(int id);
}

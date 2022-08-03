package manager_product.service.impl;

import manager_product.model.Product;
import manager_product.repository.impl.ProductRepository;
import manager_product.repository.IProductRepository;
import manager_product.service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    static IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public void create(Product product) {
        productRepository.create(product.getId(), product);

    }

    @Override
    public Product findById(int id) {
        return productRepository.findById(id);
    }

    @Override
    public List<Product> findByName(String name) {
        return productRepository.findByName(name);
    }

    @Override
    public void edit(Product product) {
        productRepository.edit(product);
    }

    @Override
    public void delete(int id) {
        productRepository.delete(id);

    }
}

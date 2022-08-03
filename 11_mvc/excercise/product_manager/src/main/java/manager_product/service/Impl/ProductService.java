package manager_product.service.Impl;

import manager_product.model.Product;
import manager_product.repository.IRepositoryService;
import manager_product.repository.Impl.RepositoryService;
import manager_product.service.IProductService;

import java.util.List;


public class ProductService implements IProductService {
    IRepositoryService repositoryService=new RepositoryService();
    @Override
    public List<Product> display() {
        return repositoryService.display();
    }

    @Override
    public void create(Product product) {
        repositoryService.create(product);
    }
}

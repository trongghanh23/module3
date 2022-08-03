package manager_product.repository.Impl;

import manager_product.model.Product;
import manager_product.repository.IRepositoryService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RepositoryService implements IRepositoryService {
    static Map<Integer,Product> products = new HashMap<>();
    static {
        products.put(1,new Product(1,"dell",10000000,"sản phẩm chất lượng","china"));
        products.put(2,new Product(2,"hp",12000000,"sản phẩm chất lượng","usa"));
        products.put(3,new Product(3,"lenovo",11000000,"sản phẩm chất lượng","japan"));
    }
    @Override
    public List<Product> display() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void create(Product product) {

    }
}

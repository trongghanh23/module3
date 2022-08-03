package manager_product.repository.impl;

import manager_product.model.Product;
import manager_product.repository.IProductRepository;

import java.util.ArrayList;

import java.util.List;


public class ProductRepository implements IProductRepository {
    static List<Product> productList = new ArrayList<>();
    static {
        productList.add(1,new Product(1,"dell",10000000,"sản phẩm chất lượng","china"));
        productList.add(2,new Product(2,"hp",12000000,"sản phẩm chất lượng","usa"));
        productList.add(3,new Product(3,"lenovo",11000000,"sản phẩm chất lượng","japan"));
    }

    @Override
    public List<Product> findAll() {

        return productList;
    }

    @Override
    public void create(int id, Product product) {
        productList.add(id,product);

    }

    @Override
    public Product findById(int id) {
        for (Product item:productList) {
            if (item.getId()==id){
                return item;
            }

        }
        return null;
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product>productArrayList=new ArrayList<>();
        for (Product item:productList) {
            if (item.getName().contains(name)){
                productArrayList.add(item);
            }
        }
        return productArrayList;
    }

    @Override
    public void edit(Product product) {
        for (int i = 0; i <productList.size() ; i++) {
            if (productList.get(i).getId()== product.getId()){
                productList.set(i,product);
            }

        }

    }

    @Override
    public void delete(int id) {
        for (int i = 0; i < productList.size() ; i++) {
            if(productList.get(i).getId() == id) {
                productList.remove(productList.get(i));
            }
        }
    }
}

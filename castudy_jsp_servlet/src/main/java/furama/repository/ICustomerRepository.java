package furama.repository;

import furama.model.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> listCustomer();

    void save(Customer customer);

    Customer getId(int customerId);

    boolean deleteCustomer(int id);

    void update(Customer customer);
}




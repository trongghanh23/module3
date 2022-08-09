package furama.service;

import furama.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> listCustomer();

    void save(Customer customer);

    Customer getId(int customerId);

    boolean deleteCustomer(int id);

    void update(Customer customer);
}



package furama.service.impl;

import furama.model.Customer;
import furama.repository.ICustomerRepository;
import furama.repository.impl.CustomerRepository;
import furama.service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    private final ICustomerRepository customerRepository = new CustomerRepository();


    @Override
    public List<Customer> listCustomer() {
        return customerRepository.listCustomer();
    }

    @Override
    public void save(Customer customer) {
        customerRepository.save(customer);
    }

    @Override
    public Customer getId(int customerId) {
        return customerRepository.getId(customerId);
    }

    @Override
    public boolean deleteCustomer(int id) {
        return customerRepository.deleteCustomer(id);
    }

    @Override
    public void update(Customer customer) {
        customerRepository.update(customer);
    }
}




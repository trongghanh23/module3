package furama.service.impl;

import furama.model.CustomerType;
import furama.repository.ICustomerTypeRepository;
import furama.repository.impl.CustomerTypeRepository;
import furama.service.ICustomerTypeService;

import java.util.List;

public class CustomerTypeService implements ICustomerTypeService {
    private ICustomerTypeRepository customerTypeRepository=new CustomerTypeRepository();
    @Override
    public List<CustomerType> listCustomerType() {
        return customerTypeRepository.listCustomerType();
    }
}

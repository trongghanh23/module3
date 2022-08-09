package furama.repository.impl;

import furama.model.CustomerType;
import furama.repository.BaseCustomer;
import furama.repository.ICustomerTypeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerTypeRepository implements ICustomerTypeRepository {
    private final String SELECT_CUSTOMER_TYPE="select * from customer_type ";


    @Override
    public List<CustomerType> listCustomerType() {
        List<CustomerType>customerTypeList=new ArrayList<>();
        Connection connection= BaseCustomer.getConnectDB();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(SELECT_CUSTOMER_TYPE);
            ResultSet resultSet =preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerId=resultSet.getInt("customer_type_id");
                String name=resultSet.getString("name");
                CustomerType customerType=new CustomerType(customerId,name);
                customerTypeList.add(customerType);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return customerTypeList;
    }
}

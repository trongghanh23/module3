package furama.repository.impl;

import furama.model.Customer;
import furama.repository.BaseCustomer;
import furama.repository.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private String DELETE_CUSTOMER = "delete * from customer where customer_id = ?";
    private String SELECT_CUSTOMER = "select * from customer ";
    private String FIND_BY_ID = "select * from customer where customer_id = ?";
    private String INSERT_CUSTOMER = "insert into customer(name, birthday, gender, id_card, phone_number, email, address, customer_type_id) values (?,?,?,?,?,?,?,?)";
    private String UPDATE_CUSTOMER = "update customer set name = ?,birthday = ?,gender = ?,idCard = ?,phone_number = ?,email = ? ,address = ?,customer_type_id = ? where customer_id = ?";

    @Override
    public List<Customer> listCustomer() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseCustomer.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {

                int customerId = resultSet.getInt("customer_id");
                String name = resultSet.getString("name");
                String birthday = resultSet.getString("birthday");
                int gender = resultSet.getInt("gender");
                int idCard = resultSet.getInt("id_card");
                int phoneNumber = resultSet.getInt("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                int customerTypeId = resultSet.getInt("customer_type_id");
                Customer customer = new Customer(customerId, name, birthday, gender, idCard, phoneNumber, email, address, customerTypeId);
                customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return customerList;
    }

    @Override
    public void save(Customer customer) {
        Connection connection = BaseCustomer.getConnectDB();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getBirthday());
            preparedStatement.setInt(3, customer.getGender());
            preparedStatement.setInt(4, customer.getIdCard());
            preparedStatement.setInt(5, customer.getPhoneNumber());
            preparedStatement.setString(6, customer.getEmail());
            preparedStatement.setString(7, customer.getAddress());
            preparedStatement.setInt(8, customer.getCustomerTypeId());
            preparedStatement.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public Customer getId(int customerId) {
        Connection connection = BaseCustomer.getConnectDB();
        Customer customer = new Customer();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1, customerId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {

                int id = resultSet.getInt("customer_id");
                String name = resultSet.getString("name");
                String birthday = resultSet.getString("birthday");
                int gender = resultSet.getInt("gender");
                int idCard = resultSet.getInt("id_Card");
                int phoneNumber = resultSet.getInt("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                int customerTypeId = resultSet.getInt("customer_type_id");
                customer = new Customer(id, name, birthday, gender, idCard, phoneNumber, email, address, customerTypeId);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return customer;
    }

    @Override
    public boolean deleteCustomer(int id) {
        boolean delete = false;
        try (Connection connection = BaseCustomer.getConnectDB();
             PreparedStatement statement = connection.prepareStatement(DELETE_CUSTOMER)) {
            statement.setInt(1, id);
            delete = statement.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return delete;
    }

    @Override
    public void update(Customer customer) {

        Connection connection = BaseCustomer.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER);

            preparedStatement.setInt(1, customer.getCustomerId());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getBirthday());
            preparedStatement.setInt(4, customer.getGender());
            preparedStatement.setInt(5, customer.getIdCard());
            preparedStatement.setInt(6, customer.getPhoneNumber());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            preparedStatement.setInt(9, customer.getCustomerTypeId());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


    }
}


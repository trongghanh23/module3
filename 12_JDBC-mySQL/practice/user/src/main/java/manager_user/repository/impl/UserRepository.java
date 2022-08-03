package manager_user.repository.impl;

import manager_user.model.User;
import manager_user.repository.BaseRepository;
import manager_user.repository.IUserRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {
    private String SELECT_ALL = "select * from users";
    private String INSERT_USER = "insert into users(name,email,country)values(?,?,?)";
    private String UPDATE_USER ="update users set name = ?,email = ?,country = ? where id = ?";
    private String DELETE_USER = "delete from users where id =?";
    private String SEARCH_USER="select * from users where country like ? ";
    private String SORT_NAME="select * from users  ORDER BY name";

    @Override
    public List<User> select() {
        List<User> userList=new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id=resultSet.getInt("id");
                String name =resultSet.getString("name");
                String email =resultSet.getString("email");
                String country =resultSet.getString("country");
                User  user=new User(id,name,email,country);
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    @Override
    public void save(User user) {
        Connection connection = BaseRepository.getConnectDB();
        try{
            PreparedStatement pr = connection.prepareStatement(INSERT_USER);
            pr.setString(1,user.getName());
            pr.setString(2,user.getEmail());
            pr.setString(3,user.getCountry());
            pr.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void update(User user) {
        Connection connection = BaseRepository.getConnectDB();
        try{
            PreparedStatement pr = connection.prepareStatement(UPDATE_USER);
            pr.setString(1,user.getName());
            pr.setString(2,user.getEmail());
            pr.setString(3,user.getCountry());
            pr.setInt(4,user.getId());
            pr.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try{
            PreparedStatement pr = connection.prepareStatement(DELETE_USER);
            pr.setInt(1,id);
            pr.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }



    @Override
    public List<User> searchName(String nameSearch) {
        Connection connection = BaseRepository.getConnectDB();
        List<User> userList = new ArrayList<>();
        try{
            PreparedStatement pr = connection.prepareStatement(SEARCH_USER);
            pr.setString(1,"%" + nameSearch + "%");
            ResultSet resultSet = pr.executeQuery();
            while (resultSet.next()){
                int id=resultSet.getInt("id");
                String name =resultSet.getString("name");
                String email =resultSet.getString("email");
                String country =resultSet.getString("country");
                User user = new User(id,name,email,country);
                userList.add(user);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }

    @Override
    public List<User> sortName() {
        Connection connection = BaseRepository.getConnectDB();
        List<User>userList=new ArrayList<>();
        try {
            PreparedStatement pr =connection.prepareStatement(SORT_NAME);
            ResultSet resultSet=pr.executeQuery();
            while (resultSet.next()){
                int id=resultSet.getInt("id");
                String name =resultSet.getString("name");
                String email =resultSet.getString("email");
                String country =resultSet.getString("country");
                User user = new User(id,name,email,country);
                userList.add(user);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return userList;
    }
}

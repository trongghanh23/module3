package manager_user.repository.impl;

import manager_user.model.User;
import manager_user.repository.BaseRepository;
import manager_user.repository.IUserRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {
//    private String SELECT_ALL = "select * from users";
//    private String UPDATE_USER ="update users set name = ?,email = ?,country = ? where id = ?";
//    private String DELETE_USER = "delete from users where id =?";
    private String SEARCH_USER="select * from users where country like ? ";
    private String SORT_NAME="select * from users  ORDER BY name";
    private String FIND_BY_ID = "select * from users where id = ?";
    private String INSERT_USER = "insert into users(name,email,country)values(?,?,?)";
    @Override
    public List<User> select() {

        List<User> userList=new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement=connection.prepareCall("CALL select_user");

            ResultSet resultSet = callableStatement.executeQuery();
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
            CallableStatement pr = connection.prepareCall(" CALL user_edit(?,?,?,?)");
            pr.setInt(1,user.getId());
            pr.setString(2,user.getName());
            pr.setString(3,user.getEmail());
            pr.setString(4,user.getCountry());

            pr.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try{
            CallableStatement pr = connection.prepareCall("CALL delete_user(?)");
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

    @Override
    public User getUserById(int id) {

        Connection connection = BaseRepository.getConnectDB();
        User user = new User();
        try {
            PreparedStatement pr = connection.prepareStatement(FIND_BY_ID);
            pr.setInt(1,id);
            ResultSet resultSet = pr.executeQuery();
            while (resultSet.next()){
                int id1 =resultSet.getInt("id");
                String name =resultSet.getString("name");
                String email =resultSet.getString("email");
                String country =resultSet.getString("country");
                user = new User(id1,name,email,country);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user;

    }

    @Override
    public Object getID(int id) {
        User user = null;

        String query = "{CALL get_user_by_id(?)}";

        // Step 1: Establishing a Connection

        try (Connection connection = BaseRepository.getConnectDB();

             // Step 2:Create a statement using connection object

             CallableStatement callableStatement = connection.prepareCall(query);) {

            callableStatement.setInt(1, id);

            // Step 3: Execute the query or update query

            ResultSet rs = callableStatement.executeQuery();

            // Step 4: Process the ResultSet object.

            while (rs.next()) {

                String name = rs.getString("name");

                String email = rs.getString("email");

                String country = rs.getString("country");

                user = new User(id, name, email, country);

            }

        } catch (SQLException e) {

            e.printStackTrace();

        }

        return user;
    }
}

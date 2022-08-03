package manager_user.service;

import manager_user.model.User;

import java.util.List;

public interface IUserService  {
    List<User> selectAll();

    void save(User user);

    void update(User user);

    void delete(int id);

    List<User> searchByName(String nameSearch);

    List<User> sortName();
}

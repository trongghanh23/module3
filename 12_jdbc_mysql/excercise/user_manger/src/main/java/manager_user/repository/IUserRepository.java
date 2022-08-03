package manager_user.repository;

import manager_user.model.User;

import java.util.List;

public interface IUserRepository {
    List<User> select();

    void save(User user);

    void update(User user);

    void delete(int id);

    List<User> searchName(String nameSearch);

    List<User> sortName();
}

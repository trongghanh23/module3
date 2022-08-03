package manager_user.service.Impl;

import manager_user.model.User;
import manager_user.repository.IUserRepository;
import manager_user.repository.impl.UserRepository;
import manager_user.service.IUserService;

import java.util.List;

public class UserServiceImpl implements IUserService {
    private IUserRepository userRepository = new UserRepository();

    @Override
    public List<User> selectAll() {
        return userRepository.select();
    }

    @Override
    public void save(User user) {
        userRepository.save(user);
    }

    @Override
    public void update(User user) {
        userRepository.update(user);
    }

    @Override
    public void delete(int id) {
        userRepository.delete(id);
    }

    @Override
    public List<User> searchByName(String nameSearch) {
        return userRepository.searchName(nameSearch);
    }

    @Override
    public List<User> sortName() {
        return userRepository.sortName();
    }
}

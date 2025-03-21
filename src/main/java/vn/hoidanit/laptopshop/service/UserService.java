package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User handleSaveUser(User user) {
        User tonynyan = this.userRepository.save(user);
        System.out.println(tonynyan);
        return tonynyan;
    }

    public List<User> getAllUser() {
        return this.userRepository.findAll();
    }
    public List<User> getAllUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }
    public User getTop1UserById(Long id) {
        return this.userRepository.findById(id).orElse(null);
    }
    public void deleteUserById(Long id) {
        this.userRepository.deleteById(id);
    }
}

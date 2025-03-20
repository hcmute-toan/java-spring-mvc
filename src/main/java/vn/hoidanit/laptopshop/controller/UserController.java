package vn.hoidanit.laptopshop.controller;

import java.util.List;

// import org.springframework.boot.autoconfigure.security.SecurityProperties.User; // Removed as it is not used
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;
import vn.hoidanit.laptopshop.service.UserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;




@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<User> arrUsers = this.userService.getAllUser();
        System.out.println(arrUsers);
        model.addAttribute("tonynyan", "test");
        model.addAttribute("tonynyan", "hello from controller");
        return "hello";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> userList = userService.getAllUser();
        model.addAttribute("users",userList);
        return "admin/user/table-user";
    }
    @RequestMapping("/admin/user/{id}")
    public String getUserDetailPage(Model model, @PathVariable long id) {
        User user = userService.getTop1UserById(id);
        model.addAttribute("user",user);
        return "admin/user/show";
    }
    @RequestMapping(value = "/admin/user/create")
    public String createPage(Model model) {
        model.addAttribute("newUser",new User());
        return "admin/user/create";
    }
    @RequestMapping(value = "/admin/user/update/{id}")
    public String updatePage(Model model,@PathVariable long id) {
        User user = userService.getTop1UserById(id);
        model.addAttribute("newUser",user);
        return "admin/user/update";
    }
    @PostMapping("/admin/user/update/{id}")
    public String updateUserPage(Model model, @ModelAttribute("newUser") User tonynyan) {
        System.out.println("update user" + tonynyan);
        User user = userService.getTop1UserById(tonynyan.getId());
        tonynyan.setPassword(user.getPassword());
        tonynyan.setEmail(user.getEmail());
        this.userService.handleSaveUser(tonynyan);
        return "redirect:/admin/user";
    }

    @RequestMapping(value = "/admin/user/delete/{id}")
    public String deletePage(Model model,@PathVariable long id) {
        User user = userService.getTop1UserById(id);
        model.addAttribute("user",user);
        return "admin/user/delete";
    }
    @PostMapping(value = "/admin/user/delete/{id}")
    public String deleteUserPage(Model model,@PathVariable long id) {
        this.userService.deleteUserById(id);
        return "redirect:/admin/user";
    }
    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User tonynyan) {
        System.out.println("create user" + tonynyan);
        this.userService.handleSaveUser(tonynyan);
        return "redirect:/admin/user";
    }
}

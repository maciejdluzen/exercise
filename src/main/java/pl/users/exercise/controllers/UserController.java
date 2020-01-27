package pl.users.exercise.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.users.exercise.dtos.AddUserDTO;
import pl.users.exercise.services.UserService;

import javax.validation.Valid;

@Controller
@RequestMapping("/")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping
    public String getRegistrationPage(Model model) {
        model.addAttribute("userData", new AddUserDTO());
        return "form";
    }

    @PostMapping
    public String processRegistrationPage(@ModelAttribute("userData")
          @Valid AddUserDTO addUser, BindingResult result) {
        if(result.hasErrors()) {
            return "failure";
        }
        userService.addUser(addUser);
        return "success";
    }
}

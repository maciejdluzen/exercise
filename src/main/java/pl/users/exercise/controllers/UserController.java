package pl.users.exercise.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.users.exercise.dtos.AddUserDTO;

@Controller
@RequestMapping("/")
public class UserController {

    @GetMapping
    public String getRegistrationPage(Model model) {
        model.addAttribute("userData", new AddUserDTO());
        return "form";
    }
}

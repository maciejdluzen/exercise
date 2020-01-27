package pl.users.exercise.services.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;
import pl.users.exercise.dtos.AddUserDTO;
import pl.users.exercise.services.UserService;

@Service
@Transactional
@Validated
public class DefaultUserService implements UserService {

    @Override
    public void addUser(AddUserDTO userDTO) {

    }
}

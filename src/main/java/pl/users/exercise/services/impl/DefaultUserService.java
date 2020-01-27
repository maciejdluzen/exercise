package pl.users.exercise.services.impl;


import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;
import pl.users.exercise.domain.entities.User;
import pl.users.exercise.domain.repositories.UserRepository;
import pl.users.exercise.dtos.AddUserDTO;
import pl.users.exercise.services.UserService;

@Service
@Transactional
@Validated
public class DefaultUserService implements UserService {

    public final UserRepository userRepository;

    public DefaultUserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public void addUser(AddUserDTO userDTO) {
        ModelMapper mapper = new ModelMapper();
        User user = mapper.map(userDTO, User.class);
        userRepository.save(user);
    }
}

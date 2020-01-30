package pl.users.exercise.services.impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import pl.users.exercise.domain.repositories.UserRepository;
import pl.users.exercise.services.ValidationService;

@Service
@Slf4j
@RequiredArgsConstructor
public class DefaultValidationService implements ValidationService {

    private final UserRepository userRepository;

    @Override
    public boolean isUniqueEmail(String email) {
        return !userRepository.existsByEmail(email);
    }
}

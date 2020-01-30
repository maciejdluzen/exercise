package pl.users.exercise.validation.validators;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import pl.users.exercise.services.ValidationService;
import pl.users.exercise.validation.constriants.UniqueEmail;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
@Scope("prototype")
@Slf4j
public class UniqueEmailValidator implements ConstraintValidator<UniqueEmail, String> {

    private ValidationService validationService;

    @Autowired
    public void setValidationService(ValidationService validationService) {
        this.validationService = validationService;
    }

    public void initialize(UniqueEmail constraint) {

    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {

        boolean unique = validationService.isUniqueEmail(value);
        return unique;
    }
}

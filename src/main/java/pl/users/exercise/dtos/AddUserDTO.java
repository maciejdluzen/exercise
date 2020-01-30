package pl.users.exercise.dtos;

import lombok.Data;
import pl.users.exercise.validation.constriants.UniqueEmail;

import javax.persistence.Column;
import javax.validation.constraints.*;

@Data
public class AddUserDTO {

    @NotBlank
    private String firstName;
    @NotBlank
    private String surname;
    @NotBlank @Email @UniqueEmail
    private String email;
    @NotNull @Min(19) @Max(120)
    private Integer age;
}

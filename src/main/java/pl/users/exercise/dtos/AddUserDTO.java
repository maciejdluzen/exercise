package pl.users.exercise.dtos;

import lombok.Data;

import javax.persistence.Column;
import javax.validation.constraints.*;

@Data
public class AddUserDTO {

    @NotBlank
    private String firstName;
    @NotBlank
    private String surname;
    @NotBlank @Email
    private String email;
    @NotNull @Min(19) @Max(120)
    private Integer age;
}

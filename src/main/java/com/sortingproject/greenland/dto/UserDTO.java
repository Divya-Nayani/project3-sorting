package com.sortingproject.greenland.dto;

import com.sortingproject.greenland.entity.User;
import com.sortingproject.greenland.util.BcryptUtil;
import lombok.*;
import org.hibernate.validator.constraints.Length;
import org.modelmapper.ModelMapper;
import org.springframework.hateoas.RepresentationModel;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

/**
 * @author: Oleksandr Pliuta
 * @date: 22.11.2022
 */
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class UserDTO extends RepresentationModel<UserDTO> {

    @Getter
    private Long id;

    @Getter
    @NotNull(message = "Name cannot be null.")
    @Length(min=3, max=255, message="Name must contain between 3 and 255 characters.")
    private String name;

    @NotNull(message = "Password cannot be null.")
    @Length(min=6, message="Password must contain at least 6 characters.")
    private String password;

    @Getter
    @Length(max=100, message="Email must be a maximum of 100 characters.")
    @Email(message="Invalid email.")
    private String email;

    @Getter
    @NotNull(message="The User access role cannot be null.")
    @Pattern(regexp="^(ROLE_ADMIN|ROLE_CUSTOMER|ROLE_PROVIDER)$",
            message="For the access role only the values ROLE_ADMIN, ROLE_CUSTOMER or ROLE_PROVIDER are accepted.")
    private String role;

    public UserDTO (Long id, String email, String password) {
        this.id = id;
        this.email = email;
        this.password = password;
    }

    public String getPassword() {
        return BcryptUtil.getHash(this.password);
    }

    /**
     * Method to convert an User DTO to an User entity
     *
     * @author: Oleksandr Pliuta
     * @date: 22.11.2022
     *
     * @param dto
     * @return an User object
     */
    public User convertDTOToEntity() {
        return new ModelMapper().map(this, User.class);
    }
}
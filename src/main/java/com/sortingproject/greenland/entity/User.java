package com.sortingproject.greenland.entity;

import com.sortingproject.greenland.dto.UserDTO;
import lombok.*;
import org.modelmapper.ModelMapper;

import javax.persistence.*;
import java.io.Serializable;

/**
 *  Class that implements an User entity in the API.
 *
 * @author: Oleksandr Pliuta
 * @date: 22.11.2022
 */
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
@Table(name = "users")
public class User implements Serializable {
    private static final long serialVersionUID = 5514528747731992863L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String password;

    @Column(nullable = false)
    private String email;

    @Enumerated(EnumType.STRING)
    private RoleType role;

    public User(Long id) {
        this.id = id;
    }

    /**
     * Method that verifies if the user is admin
     *
     * @author: Oleksandr Pliuta
     * @date: 22.11.2022
     *
     * @return boolean
     */
//    public boolean isAdmin() {
//        return RoleType.ROLE_ADMIN.toString().equals(this.role.toString());
//    }

    /**
     * Method to convert an User entity to an User DTO
     *
     * @author: Oleksandr Pliuta
     * @date: 22.11.2022
     *
     * @param: user
     * @return an UserDTO object
     */
    public UserDTO convertEntityToDTO() {
        return new ModelMapper().map(this, UserDTO.class);
    }
}

package com.sortingproject.greenland.entity;

/**
 * Enum that represents the two types of roles in the API: ROLE_ADMIN, ROLE_CUSTOMER and ROLE_PROVIDER.
 *
 * @author: Oleksandr Pliuta
 * @date: 22.11.2022
 */
public enum RoleType {
//    ROLE_ADMIN("ROLE_ADMIN"),
    ROLE_CUSTOMER("ROLE_CUSTOMER"),
    ROLE_PROVIDER("ROLE_PROVIDER");

    private String value;

    private RoleType(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

}

package com.sortingproject.greenland.entity.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Data
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name = "address")
public class Address{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    private String country;
    @NotBlank
    private String region;
    @NotBlank
    private String address;
    @OneToOne
    @JoinColumn(name = "company_id")
    private Company company;
}
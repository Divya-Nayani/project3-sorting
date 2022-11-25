package com.sortingproject.greenland.entity.model;

import com.sortingproject.greenland.entity.model.enums.PaymentType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "service")
public class Service {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private PaymentType paymentType;
    private double perUnitCost;
    @ManyToOne
    @JoinColumn(name = "company_id")
    private List<Company> companies;
    @ManyToOne
    @JoinColumn(name = "recycle_id")
    private Recycle recycles;
    @ManyToMany(mappedBy = "services")
    Set<User> userSet;

}

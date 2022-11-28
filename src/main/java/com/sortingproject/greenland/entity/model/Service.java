package com.sortingproject.greenland.entity.model;

import com.sortingproject.greenland.entity.model.enums.PaymentType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.Date;
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

  @ManyToMany(mappedBy = "services")
  Set<User> userSet;

  @OneToMany
  @JoinColumn(name = "serviceType_id")
  private List<ServiceType> serviceTypeList;

  private double location;
  private Date startDate;
  private Date endDate;
  private boolean takingOut;
}

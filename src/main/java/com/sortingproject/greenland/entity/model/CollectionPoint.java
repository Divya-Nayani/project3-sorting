package com.sortingproject.greenland.entity.model;

import com.sortingproject.greenland.entity.model.enums.PaymentType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import java.util.Date;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "collection_point")
public class CollectionPoint {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;
  private PaymentType paymentType;
  private double perUnitCost;

  @ManyToMany(mappedBy = "service_type")
  Set<ServiceType> serviceTypes;

  private double locationLatitude;
  private double locationLongitude;
  private Date startTime;
  private Date endTime;
  private boolean takingOut;
  private String address;
  private boolean mainPoint;
}

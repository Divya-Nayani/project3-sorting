package com.sortingproject.greenland.entity.model;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.util.List;

@Getter
@Setter
@ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "company")
public class Company {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @NotNull private String name;
  @NotNull private String phone;
  @NotNull private String description;

  @OneToMany
  @JoinColumn(name = "collection_point_id")
  private List<CollectionPoint> collectionPoints;

  @OneToMany
  @JoinColumn(name = "question_id")
  private List<Question> questions;

  @OneToOne
  @JoinColumn(name = "users_id")
  private User user;

  @OneToMany
  @JoinColumn(name = "rate_id")
  private List<Rate> rates;
}

package com.programmer74.sdl1.mysql.entities

import javax.persistence.*

@Entity
@Table(name = "conference")
data class Conference(

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(nullable = false)
  val id: Int? = null,

  @Column(nullable = false)
  val name: String,

  @Column(nullable = false)
  val place: String,

  @Column(nullable = false)
  val date: Long
)
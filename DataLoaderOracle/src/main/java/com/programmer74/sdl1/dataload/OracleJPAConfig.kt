package com.programmer74.sdl1.dataload

import org.springframework.boot.autoconfigure.domain.EntityScan
import org.springframework.context.annotation.Configuration
import org.springframework.context.annotation.Profile
import org.springframework.data.jpa.repository.config.EnableJpaRepositories

@Configuration
@EntityScan(basePackages = ["com.programmer74.sdl1.entities"])
@EnableJpaRepositories(basePackages = ["com.programmer74.sdl1.repositories"])
open class OracleJPAConfig
package com.example.modeltest.NewModels;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@NoArgsConstructor
public class BusSpecifications {
    @Id
    private String model;
    private Integer places_number;

}

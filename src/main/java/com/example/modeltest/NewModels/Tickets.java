package com.example.modeltest.NewModels;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@Table(name = "tickets")
public class Tickets {

    @Id
    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.MERGE, CascadeType.PERSIST })
    @JoinColumn(name = "departure_id")
    private Departure departure;

    private Long flight_number;
    private Long place_number;
    private Long place_from;
    private Long place_to;
    private Boolean visited;
    private String first_name;
    private String last_name;
    private String surname;
}

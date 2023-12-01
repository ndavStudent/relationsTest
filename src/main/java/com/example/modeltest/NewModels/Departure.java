package com.example.modeltest.NewModels;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Data
@Entity
@NoArgsConstructor
public class Departure {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @OneToMany(mappedBy = "departure", fetch = FetchType.EAGER)
    private List<Tickets> ticket;

    private Date date;


    @ManyToOne(fetch = FetchType.LAZY, cascade = {CascadeType.MERGE, CascadeType.PERSIST })
    @JoinColumn(name = "trip_id")
    private Trip trip;
}

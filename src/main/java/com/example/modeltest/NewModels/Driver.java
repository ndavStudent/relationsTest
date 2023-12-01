package com.example.modeltest.NewModels;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Entity
@Table(name = "driver")
@NoArgsConstructor
public class Driver {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToMany(mappedBy = "driver", fetch = FetchType.LAZY)
    private List<Trip> trips;


//
//
    @OneToOne
    @JoinColumn(name = "bus_id")
    private Bus bus;

    private String login;
    private String password;
    private String first_name;
    private String last_name;
    private String surname;

}

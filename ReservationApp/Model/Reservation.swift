//
//  Reservation.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import Foundation

// MARK: - Reservation

struct Reservation: Identifiable {
    // MARK: Properties
    
    let id = UUID()
    var nameOfReservation: String
    var date = Date()
    var time = Date()
    var numberOfPersons: Int
    var description: String
    // MARK: Initialization
    
    init(
        nameOfReservation: String,
        date: Date = Date(),
        time: Date = Date(),
        numberOfPersons: Int,
        description: String
    ) {
        self.nameOfReservation = nameOfReservation
        self.date = date
        self.time = time
        self.numberOfPersons = numberOfPersons
        self.description = description
    }
}

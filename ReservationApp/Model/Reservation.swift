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
    var user: User
    // MARK: Initialization

    init(
        nameOfReservation: String,
        date: Date = Date(),
        time: Date = Date(),
        numberOfPersons: Int,
        description: String,
        user: User
    ) {
        self.nameOfReservation = nameOfReservation
        self.date = date
        self.time = time
        self.numberOfPersons = numberOfPersons
        self.description = description
        self.user = user
    }
}

extension Reservation {
    static var preview: Reservation {
        Reservation(
            nameOfReservation: "Thibault GODEFROY",
            date: "24/01/2023",
            time: "19h30",
            numberOfPersons: 3,
            description: "Anniversaire Thibault",
            user: User(
                firstName: "Thibault",
                lastName: "Godefroy",
                phoneNumber: "0782376228",
                email: "thibaultgodef81@gmail.com",
                password: "password",
                confirmationPassword: "password"
            )
        )
    }
}

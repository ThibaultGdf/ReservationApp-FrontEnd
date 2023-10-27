//
//  User.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import Foundation

// MARK: - User

struct User: Identifiable {
    // MARK: Properties
    
    let id = UUID()
    var firstName: String
    var lastName: String
    var phoneNumber: Int
    var email: String
    var password: String
    var confirmationPassword: String
    // MARK: Initialization
    
    init(
        firstName: String,
        lastName: String,
        phoneNumber: Int,
        email: String,
        password: String,
        confirmationPassword: String
    ) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.email = email
        self.password = password
        self.confirmationPassword = confirmationPassword
    }
}

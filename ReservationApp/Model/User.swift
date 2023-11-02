//
//  User.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import Foundation

// MARK: - User

struct User: Identifiable, Codable, Hashable {
    // MARK: Properties

    var id = UUID()
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var email: String
    var password: String
    var confirmationPassword: String
    // MARK: Enumeration

    enum CodingKeys: String, CodingKey {
        case firstName, lastName, phoneNumber, email, password, confirmationPassword
    }

    static let emptyUser = User(
        firstName: "",
        lastName: "",
        phoneNumber: "",
        email: "",
        password: "",
        confirmationPassword: ""
    )

    // MARK: Initialization

    init(
        firstName: String,
        lastName: String,
        phoneNumber: String,
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

extension User {
    static var myUser: User {
        User(
            firstName: "Thibault",
            lastName: "Godefroy",
            phoneNumber: "0612345678",
            email: "preview@gmail.com",
            password: "password",
            confirmationPassword: "password"
        )
    }
}

//
//  AccountView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - AccountView

struct AccountView: View {
    // MARK: Properties

    @Environment(\.dismiss) var dismiss

    var user: User
    // MARK: Body

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    TextComponent(title: "Mon compte")
                    Spacer()
                    Image("icon-pencil")
                }
                Text("Prénom : \(user.firstName)")
                    .padding(.vertical)
                Text("Nom : \(user.lastName)")
                    .padding(.vertical)
                Text("Email : \(user.email)")
                    .padding(.vertical)
                Text("Téléphone : \(user.phoneNumber)")
                    .padding(.vertical)
                    .padding(.bottom, 36)
                ButtonComponent(
                    text: "Voir mes réservations",
                    colorText: .black,
                    destination: AnyView(ReservationListView()),
                    color: .beigeLight
                )
                ButtonComponent(
                    text: "Back",
                    action: {
                        dismiss()
                    }
                )
                ButtonComponent(
                    text: "Supprimer mon compte",
                    colorText: .gray,
                    action: {},
                    color: .white
                )
                Spacer()
            }.padding()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HeaderComponent()
                }
            }
        }
    }
}
// MARK: - Preview

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(
            user: User(
                firstName: "Thibault",
                lastName: "Godefroy",
                phoneNumber: "06 12 34 56 78",
                email: "thibault@gmail.com",
                password: "",
                confirmationPassword: ""
            )
        )
    }
}

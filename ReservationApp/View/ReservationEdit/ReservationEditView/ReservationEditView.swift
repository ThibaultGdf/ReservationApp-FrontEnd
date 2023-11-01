//
//  ReservationEditView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - ReservationEditView

struct ReservationEditView: View {
    // MARK: Properties

    @Binding var user: User
    // MARK: Body

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                TextComponent(
                    title: "Modification \nde réservation"
                )
                Spacer()
                TextFieldComponent(
                    title: "Nom de la reservation",
                    text: "Pierre Dupont",
                    width: .infinity,
                    height: 30,
                    icon: nil
                )
                HStack {
                    TextFieldComponent(
                        title: "Date",
                        text: "07/07/2023",
                        width: 150,
                        height: 30,
                        icon: "icon-calendar"
                    )
                    TextFieldComponent(
                        title: "Heure",
                        text: "10h15",
                        width: 150,
                        height: 30,
                        icon: "icon-clock"
                    )
                }
                HStack {
                    TextFieldComponent(
                        title: "Nombre de personnes",
                        text: "ex: 4",
                        width: 150,
                        height: 30,
                        icon: nil
                    )
                }
                TextFieldComponent(
                    title: "Note",
                    text: nil,
                    width: .infinity,
                    height: 100,
                    icon: nil
                )
                Spacer()
                ButtonComponent(
                    text: "Je modifie ma réservation !",
                    action: {
//                        addReservation()
                    },
                    destination: AnyView(ReservationConfirmationView(user: $user)),
                    width: .infinity,
                    height: 35,
                    corner: 5,
                    color: .orangeLight
                )
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HeaderComponent(user: $user)
                }
            }
            .padding()
        }
    }
}
// MARK: - Preview

struct ReservationEditView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationEditView(user: .constant(.preview))
    }
}

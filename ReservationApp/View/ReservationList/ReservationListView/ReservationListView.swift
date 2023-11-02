//
//  ReservationListView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - ReservationListView

struct ReservationListView: View {
    // MARK: Properties

    @Environment(\.dismiss) var dismiss

    @Binding var user: User

    @ObservedObject var readReservationData = ReadReservationData()
    // MARK: Body

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                TextComponent(title: "Mes réservations")

//                ForEach(readReservationData.reservation) { myReservation in
//                    ReservationComponent(reservation: myReservation)
//                }

                TextComponent(subTitle: "À venir :")
                TextComponent(subTitle: "Historique :")
                ButtonComponent(
                    text: "Back",
                    color: .orangeLight
                ) {
                    dismiss()
                }
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

struct ReservationListView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationListView(user: .constant(.preview))
    }
}

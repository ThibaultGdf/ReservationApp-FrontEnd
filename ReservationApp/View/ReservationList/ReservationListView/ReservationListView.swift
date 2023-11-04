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

    @StateObject var readReservationData = ReadReservationData()
    @ObservedObject var viewModel: LaunchViewModel
    // MARK: Body

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                TextComponent(title: "Mes réservations")

                ForEach($readReservationData.reservations) { $reservation in
                    ReservationComponent(reservation: $reservation, viewModel: viewModel)
                }

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
                    HeaderComponent(viewModel: LaunchViewModel())
                }
            }
        }
    }
}
// MARK: - Preview

struct ReservationListView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationListView(viewModel: LaunchViewModel())
    }
}

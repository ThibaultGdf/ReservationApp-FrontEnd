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
    // MARK: Body

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                TextComponent(title: "Mes réservations")
                TextComponent(subTitle: "À venir :")
                TextComponent(subTitle: "Historique :")
                ButtonComponent(
                    text: "Back",
                    action: { dismiss() },
                    color: .red
                )
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
        ReservationListView()
    }
}

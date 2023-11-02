//
//  ContentView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - HomeView

struct  HomeView: View {
    // MARK: Properties

    @ObservedObject var viewModel = HomeViewModel()
    // MARK: Body

    var body: some View {
//        NavigationStack {
            VStack(alignment: .leading) {
                TextComponent(
                    title: "Réservation"
                )
                TextComponent(text: "Paragraphe")
                TextFieldComponent(
                    title: "Nom de la reservation",
                    text: "Pierre Dupont",
                    width: .infinity,
                    height: 30
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
                        height: 30
                    )
                    RadioButtonComponent()
                }
                TextFieldComponent(
                    title: "Note",
                    width: .infinity,
                    height: 100
                )
                ButtonComponent(
                    text: "Je réserve !",
                    width: .infinity,
                    height: 35,
                    corner: 5,
                    color: .orangeLight
                ) {

                }
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HeaderComponent()
                }
            }
            .padding()
        }
//    }
}
// MARK: - Preview

struct  HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

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

    @StateObject var homeViewModel = HomeViewModel()

    @ObservedObject var viewModel: LaunchViewModel
    // MARK: Body

    var body: some View {
            NavigationStack {
                VStack(alignment: .leading) {
                    TextComponent(
                        title: "Réservation"
                    ).padding(.vertical, 16)
                    TextFieldComponent(
                        title: "Nom de la reservation",
                        text: "Pierre Dupont"
                    ).padding(.vertical, 16)
                    HStack {
                        TextFieldComponent(
                            title: "Date",
                            text: "07/07/2023",
                            width: 160,
                            icon: "icon-calendar"
                        )
                        TextFieldComponent(
                            title: "Heure",
                            text: "10h15",
                            width: 170,
                            icon: "icon-clock"
                        )
                    }
                    HStack {
                        TextFieldComponent(
                            title: "Nombre de personnes",
                            text: "ex: 4",
                            width: 150
                        )
                        RadioButtonComponent()
                    }.padding(.vertical, 16)
                    TextFieldComponent(
                        title: "Note",
                        text: "Description",
                        width: .infinity,
                        height: 100
                    )
                    Spacer()
                    ButtonComponent(
                        text: "Je réserve !",
                        width: .infinity,
                        height: 35,
                        corner: 5,
                        color: .orangeLight
                    ) {
                        self.viewModel.viewStates = .confirmation
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HeaderComponent(viewModel: viewModel)
                    }
                }
                .padding()
            }
    }
}
// MARK: - Preview

struct  HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(homeViewModel: HomeViewModel(), viewModel: LaunchViewModel())
    }
}

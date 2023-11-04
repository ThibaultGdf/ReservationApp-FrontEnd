//
//  LaunchView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - LaunchView

struct LaunchView: View {
    // MARK: Properties

    @StateObject var viewModel = LaunchViewModel()
    // MARK: Body

    var body: some View {
        switch viewModel.viewStates {
        case .launch:
            NavigationStack {
                VStack {
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity, maxHeight: 200)
                    TextComponent(title: "Bienvenue !")
                    ButtonComponent(
                        text: "M'inscrire",
                        destination: AnyView(SignInView(viewModel: viewModel))
                    )
                    ButtonComponent(
                        text: "Me connecter",
                        colorText: .black,
                        color: .beigeLight,
                        destination: AnyView(SignUpView(viewModel: viewModel))
                    )
                }.padding(.horizontal, 16)
            }
        case .home:
            HomeView(viewModel: viewModel)
        case .reservationList:
            ReservationListView(viewModel: viewModel)
        case .confirmation:
            ReservationConfirmationView(viewModel: viewModel)
        case .back:
            HomeView(viewModel: viewModel)
        case .profile:
            AccountView(viewModel: viewModel, user: $viewModel.myUser)
        }
    }
}
// MARK: - Preview

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(viewModel: LaunchViewModel())
    }
}

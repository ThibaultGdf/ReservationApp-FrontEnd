//
//  SignInView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - SignInView

struct SignInView: View {
    // MARK: Properties

    @ObservedObject var viewModel: LaunchViewModel
    // MARK: Body

    var body: some View {
        NavigationStack {
            VStack {
                Image("Logo")
                VStack(alignment: .leading) {
                    TextComponent(subTitle: "Inscription")
                        .padding(.vertical, 16)
                    TextFieldComponent(title: "", text: "Nom de famille")
                    TextFieldComponent(title: "", text: "Prénom")
                    TextFieldComponent(title: "", text: "Téléphone")
                    TextFieldComponent(title: "", text: "Email")
                    TextFieldComponent(title: "", text: "Mot de passe")
                    TextFieldComponent(title: "", text: "Confirmation du mot de passe")
                    ButtonComponent(text: "M'inscrire") {
                        self.viewModel.viewStates = .home
                    }
                    .padding(.vertical, 8)
                }.padding()
            }
        }
    }
}
// MARK: - Preview

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(viewModel: LaunchViewModel())
    }
}

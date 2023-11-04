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
                    TextFieldComponent(title: "Nom")
                    TextFieldComponent(title: "Prénom")
                    TextFieldComponent(title: "Téléphone")
                    TextFieldComponent(title: "Email")
                    TextFieldComponent(title: "Mot de passe")
                    TextFieldComponent(title: "Confirmation du mot de passe")
                    ButtonComponent(text: "M'inscrire") {
                        self.viewModel.viewStates = .home
                    }
                    .padding(.vertical, 16)
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

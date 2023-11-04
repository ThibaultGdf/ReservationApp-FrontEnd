//
//  SignUpView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - SignUpView

struct SignUpView: View {
    // MARK: Properties
    @ObservedObject var viewModel: LaunchViewModel
    // MARK: Body

    var body: some View {
        NavigationStack {
        VStack {
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: 100)
            VStack(alignment: .leading) {
                TextComponent(subTitle: "Connectez-vous !")
                    .padding(.vertical, 16)
                TextFieldComponent(text: "Email")
                TextFieldComponent(text: "Mot de passe")
                HStack {
                    Spacer()
                    TextComponent(text: "Mot de passe oublié ?")
                }
                ButtonComponent(text: "Me connecter") {
                    self.viewModel.viewStates = .home
                }.padding(.vertical)
              }.padding()
            }
        }
    }
}
// MARK: - Preview

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(viewModel: LaunchViewModel())
    }
}

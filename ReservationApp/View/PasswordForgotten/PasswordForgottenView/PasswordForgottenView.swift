//
//  PasswordForgottenView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - PasswordForgottenView

struct PasswordForgottenView: View {
    // MARK: Properties

    // MARK: Body

    var body: some View {
        NavigationStack {
            VStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                VStack(alignment: .leading) {
                    TextComponent(subTitle: "J'ai oublié mon mot de passe")
                    TextFieldComponent(title: "Email")
                    ButtonComponent(
                        text: "Réinitialiser mon mot de passe",
                        action: {}
                    ).padding(.vertical, 8)
                }.padding(.vertical, 36)
            }.padding()
        }
    }
}
// MARK: - Preview

struct PasswordForgottenView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordForgottenView()
    }
}

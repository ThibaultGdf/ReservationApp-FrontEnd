//
//  PasswordNewView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - PasswordNewView

struct PasswordNewView: View {
    // MARK: Properties

    // MARK: Body

    var body: some View {
        NavigationStack {
            VStack {
                LogoComponent()
                VStack(alignment: .leading) {
                    TextComponent(subTitle: "Nouveau mot de passe")
                        .padding(.vertical, 16)
                    TextFieldComponent(title: "Mot de passe")
                    TextFieldComponent(title: "Confirmer mot de passe")
                    ButtonComponent(
                        text: "Réinitialiser mon mot de passe",
                        action: {}
                    ).padding(.vertical, 16)
                }.padding()
            }
        }
    }
}
// MARK: - Preview

struct PasswordNewView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordNewView()
    }
}

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

    // MARK: Body

    var body: some View {
        NavigationStack {
            VStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: 200)
                TextComponent(title: "Bienvenue !")
                ButtonComponent(
                    text: "M'inscrire",
                    destination: AnyView(SignInView())
                )
                ButtonComponent(
                    text: "Me connecter",
                    colorText: .black,
                    destination: AnyView(SignUpView()),
                    color: .beigeLight
                )
            }.padding(.horizontal, 16)
        }
    }
}
// MARK: - Preview

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}

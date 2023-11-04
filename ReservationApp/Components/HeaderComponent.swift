//
//  HeaderComponent.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: HeaderComment

struct HeaderComponent: View {
    // MARK: Properties

    @ObservedObject var viewModel: LaunchViewModel

    @State private var user: User = User.myUser

    var logo: Image = Image("Logo")
    var person: Image = Image("icon-user")
    var power: Image = Image("icon-power")

    // MARK: Body

    var body: some View {
        NavigationStack {
            HStack {
                Button {
                    self.viewModel.viewStates = .home
                } label: {
                    logo
                }
                Spacer()
                NavigationLink {
                    AccountView(viewModel: viewModel, user: $user)
                } label: {
                    person
                }
                Button {
                    self.viewModel.viewStates = .launch
                } label: {
                    power
                }.padding()
            }.padding()
        }
    }
}

struct HeaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        HeaderComponent(viewModel: LaunchViewModel())
    }
}

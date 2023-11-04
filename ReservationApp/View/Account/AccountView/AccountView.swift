//
//  AccountView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - AccountView

struct AccountView: View {
    // MARK: Properties

    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: LaunchViewModel
    @State private var showingSheet: Bool = false

    @Binding var user: User
    // MARK: Body

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    TextComponent(title: "Mon compte")
                    Spacer()
                    Button {
                        showingSheet.toggle()
                    } label: {
                        Image("icon-pencil")
                    }.sheet(isPresented: $showingSheet) {
                        AccountEditView(viewModel: viewModel, user: $viewModel.myUser)
                    }
                }
                Text("Prénom : \(user.firstName)")
                    .padding(.vertical)
                Text("Nom : \(user.lastName)")
                    .padding(.vertical)
                Text("Email : \(user.email)")
                    .padding(.vertical)
                Text("Téléphone : \(user.phoneNumber)")
                    .padding(.vertical)
                    .padding(.bottom, 36)
                ButtonComponent(
                    text: "Voir mes réservations",
                    colorText: .black,
                    color: .beigeLight,
                    destination: AnyView(ReservationListView(viewModel: viewModel))
                )
                ButtonComponent(text: "Back") {
                    self.viewModel.viewStates = .home
                }
                ButtonComponent(
                    text: "Supprimer mon compte",
                    colorText: .gray,
                    color: .white
                ) {

                }
                Spacer()
            }.padding()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HeaderComponent(viewModel: viewModel)
                }
            }
        }
    }
}
// MARK: - Preview

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(viewModel: LaunchViewModel(), user: .constant(.myUser))
    }
}

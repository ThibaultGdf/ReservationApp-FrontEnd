//
//  AccountEditView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 04/11/2023.
//

import SwiftUI

struct AccountEditView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: LaunchViewModel
    @Binding var user: User

    var body: some View {

        NavigationStack {
            VStack(alignment: .leading) {
                    TextComponent(text: "Prénom")
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                        .frame(maxWidth: .infinity, maxHeight: 35)
                    TextField("Prénom", text: $viewModel.myUser.firstName)
                        .padding(.horizontal, 16)
                }
                    TextComponent(text: "Nom")
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                        .frame(maxWidth: .infinity, maxHeight: 35)
                    TextField("Nom", text: $viewModel.myUser.lastName)
                        .padding(.horizontal, 16)
                }
                    TextComponent(text: "Téléphone")
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                        .frame(maxWidth: .infinity, maxHeight: 35)
                    TextField("Téléphone", text: $viewModel.myUser.phoneNumber)
                        .padding(.horizontal, 16)
                }
                TextComponent(text: "Email")
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                        .frame(maxWidth: .infinity, maxHeight: 35)
                    TextField("Email", text: $viewModel.myUser.email)
                        .padding(.horizontal, 16)
                }
                Spacer()
                ButtonComponent(text: "Valider mes modifier") {
                    self.dismiss()
                }.padding(.vertical, 16)
            }.padding()
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            self.dismiss()
                        } label: {
                            Text("Fermer")
                        }
                    }
                    ToolbarItem(placement: .principal) {
                        Text("Mon compte")
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            self.dismiss()
                            // Update
                        } label: {
                            Text("Enregistrer")
                        }
                    }
                }
        }
    }
}

struct AccountEditView_Previews: PreviewProvider {
    static var previews: some View {
        AccountEditView(viewModel: LaunchViewModel(), user: .constant(.myUser))
    }
}

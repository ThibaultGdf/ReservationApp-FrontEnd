//
//  ReservationConfirmationView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - ReservationConfirmationView

struct ReservationConfirmationView: View {
    // MARK: Properties

    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: LaunchViewModel
    // MARK: Body

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                TextComponent(title: "Confirmation")
                TextComponent(text: "Paragraphe")
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, maxHeight: 300, alignment: .center)
                ButtonComponent(
                    text: "Back",
                    action: {
                        self.viewModel.viewStates = .back
                })
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

struct ReservationConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationConfirmationView(viewModel: LaunchViewModel())
    }
}

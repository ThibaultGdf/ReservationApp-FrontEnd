//
//  ReservationEditView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - ReservationEditView

struct ReservationEditView: View {
    // MARK: Properties

    @State private var isOn: Bool = false
    // MARK: Body

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                TextComponent(
                    title: "Modification \nde réservation"
                )
                Spacer()
                TextFieldComponent(
                    title: "Nom de la reservation",
                    text: "Pierre Dupont"
                )
                HStack {
                    TextFieldComponent(
                        title: "Date",
                        text: "07/07/2023",
                        icon: "icon-calendar"
                    )
                    TextFieldComponent(
                        title: "Heure",
                        text: "10h15",
                        icon: "icon-clock"
                    )
                }
                HStack {
                    TextFieldComponent(
                        title: "Nombre de personnes",
                        text: "ex: 4",
                        width: 150
                    )
                    // RadioButton
                }
                TextFieldComponent(
                    title: "Note",
                    height: 100
                )
                Spacer()
                ButtonComponent(
                    text: "Je modifie ma réservation !",
                    width: .infinity,
                    height: 35,
                    corner: 5,
                    color: .orangeLight
                ) {

                }
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HeaderComponent(viewModel: LaunchViewModel())
                }
            }
            .padding()
        }
    }
}
// MARK: - Preview

struct ReservationEditView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationEditView()
    }
}

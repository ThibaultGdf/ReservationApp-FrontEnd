//
//  ReservationComponent.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 28/10/2023.
//

import SwiftUI

// MARK: - ReservationComponent

struct ReservationComponent: View {
    // MARK: Properties

    @Binding var reservation: Reservation

    var width: CGFloat?
    var height: CGFloat?
    var corner: CGFloat?

    // MARK: Body

    var body: some View {
        NavigationStack {
            ZStack {
                RoundedRectangle(cornerRadius: corner ?? 5)
                    .foregroundColor(.beigeLight)
                    .frame(maxWidth: width ?? .infinity, maxHeight: height ?? 130)
                VStack(alignment: .leading) {
                    TextComponent(subTitle: reservation.nameOfReservation, color: .greenDark)
                    Text("\(reservation.date) à \(reservation.time)")
                    TextComponent(text: "Salle")
                    HStack {
                        Spacer()
                        NavigationLink {
//                            ReservationEditView()
                        } label: {
                            IconComponent(icon: "pencil", color: .greenDark)
                        }
                            IconComponent(icon: "xmark.bin", color: .red)
                                .padding(.horizontal, 16)
                    }
                }.padding(.horizontal, 16)
            }
        }
    }
}
// MARK: - Preview

struct ReservationComponent_Previews: PreviewProvider {
    static var previews: some View {
        ReservationComponent(reservation: .constant(.preview), viewModel: LaunchViewModel())
    }
}

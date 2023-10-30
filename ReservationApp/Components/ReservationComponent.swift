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

    var reservation: Reservation
    var width: CGFloat?
    var height: CGFloat?
    var corner: CGFloat?
    // MARK: Initialization

    init(
        reservation: Reservation,
        width: CGFloat? = nil,
        height: CGFloat? = nil,
        corner: CGFloat? = nil
    ) {
        self.reservation = reservation
        self.width = width
        self.height = height
        self.corner = corner
    }
    // MARK: Body

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: corner ?? 5)
                .foregroundColor(.beigeLight)
                .frame(maxWidth: width ?? .infinity, maxHeight: height ?? 130)
            VStack(alignment: .leading) {
                TextComponent(subTitle: reservation.nameOfReservation, color: .greenDark)
                Text("\(formattedDate())")
                TextComponent(text: "Salle")
                HStack {
                    Spacer()
                    IconComponent(icon: "pencil", color: .greenDark)
                    IconComponent(icon: "xmark.bin", color: .red)
                        .padding(.horizontal, 16)
                }
            }.padding(.horizontal, 16)
        }
    }
    // MARK: Methode formattedData

    func formattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy à HH'h'mm"
        let reservationDate = reservation.date
        return dateFormatter.string(from: reservationDate)
    }
}
// MARK: - Preview

struct ReservationComponent_Previews: PreviewProvider {
    static var previews: some View {
        ReservationComponent(
            reservation: Reservation(
                nameOfReservation: "Nom de la réservation",
                date: Date(),
                time: Date(),
                numberOfPersons: 1,
                description: ""
            )
        )
    }
}

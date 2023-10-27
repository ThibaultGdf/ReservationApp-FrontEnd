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

    var logo: Image = Image("Logo")
    var person: Image = Image("icon-user")
    var power: Image = Image("icon-power")

    // MARK: Body

    var body: some View {
        HStack {
            logo
            Spacer()
            person
            power
                .padding()
        }.padding()
    }
}

struct HeaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        HeaderComponent()
    }
}

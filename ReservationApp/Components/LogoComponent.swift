//
//  LogoComponent.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 28/10/2023.
//

import SwiftUI

// MARK: - LogoComponent

struct LogoComponent: View {
    // MARK: Properties

    let logo: Image = Image("Logo")
    var width: CGFloat?
    var height: CGFloat?

    init(
        width: CGFloat? = nil,
        height: CGFloat? = nil
    ) {
        self.width = width
        self.height = height
    }

    // MARK: Body

    var body: some View {
        logo
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: width ?? .infinity, maxHeight: height ?? 100)
    }
}

struct LogoComponent_Previews: PreviewProvider {
    static var previews: some View {
        LogoComponent()
    }
}

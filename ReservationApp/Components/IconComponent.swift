//
//  ImageComponent.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 30/10/2023.
//

import SwiftUI

// MARK: - IconComponent

struct IconComponent: View {
    // MARK: Properties

    var icon: String
    var color: Color?
    var width: CGFloat?
    var height: CGFloat?
    // MARK: Initialization

    init(
        icon: String,
        color: Color? = nil,
        width: CGFloat? = nil,
        height: CGFloat? = nil
    ) {
        self.icon = icon
        self.color = color
        self.width = width
        self.height = height
    }

    // MARK: Body

    var body: some View {
        Image(systemName: icon)
            .resizable()
            .foregroundColor(color ?? .greenDark)
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: width ?? 30, maxHeight: height ?? 30)
    }
}
// MARK: - Preview

struct IconComponent_Previews: PreviewProvider {
    static var previews: some View {
        IconComponent(
            icon: "pencil"
        )
    }
}

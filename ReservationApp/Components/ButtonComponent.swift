//
//  ButtonComponent.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - ButtonComponent

struct ButtonComponent: View {
    // MARK: Properties

    var text: String
    var colorText: Color?
    var action: (() -> Void)?
    var destination: AnyView?
    var width: CGFloat?
    var height: CGFloat?
    var corner: CGFloat?
    var color: Color?
    // MARK: Initialization

    init(
        text: String,
        colorText: Color? = nil,
        action: (() -> Void)? = nil,
        destination: AnyView? = nil,
        width: CGFloat? = nil,
        height: CGFloat? = nil,
        corner: CGFloat? = nil,
        color: Color? = nil
    ) {
        self.text = text
        self.colorText = colorText
        self.action = action
        self.destination = destination
        self.width = width
        self.height = height
        self.corner = corner
        self.color = color
    }
    // MARK: Body

    var body: some View {
        NavigationStack {
            if let action = action {
                Button {
                    action()
                } label: {
                    createButton(
                        text: text,
                        colorText: colorText ?? .white,
                        width: width ?? .infinity,
                        height: height ?? 35,
                        corner: corner ?? 5,
                        color: color ?? .orangeLight
                    )
                }
            } else if let destination = destination {
                NavigationLink(destination: destination) {
                    createButton(
                        text: text,
                        colorText: colorText ?? .white,
                        width: width ?? .infinity,
                        height: height ?? 35,
                        corner: corner ?? 5,
                        color: color ?? .orangeLight
                    )
                }
            }
        }
    }
    // MARK: - Private Methods

    @ViewBuilder
    private func createButton(
        text: String,
        colorText: Color,
        width: CGFloat,
        height: CGFloat,
        corner: CGFloat,
        color: Color
    ) -> some View {
        ZStack {
            color
                .frame(maxWidth: width, maxHeight: height)
                .cornerRadius(corner)
            Text(text)
                .foregroundColor(colorText)
        }
    }
}

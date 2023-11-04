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
    var width: CGFloat?
    var height: CGFloat?
    var corner: CGFloat?
    var color: Color?
    var destination: AnyView?
    var action: (() -> Void)?
    // MARK: Initialization

    init(
        text: String,
        colorText: Color? = nil,
        width: CGFloat? = nil,
        height: CGFloat? = nil,
        corner: CGFloat? = nil,
        color: Color? = nil,
        destination: AnyView? = nil,
        action: (() -> Void)? = nil
    ) {
        self.text = text
        self.colorText = colorText
        self.width = width
        self.height = height
        self.corner = corner
        self.color = color
        self.destination = destination
        self.action = action
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
    // swiftlint:disable function_parameter_count

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
// swiftlint:enable function_parameter_count

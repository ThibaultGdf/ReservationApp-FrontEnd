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
    var action: (() -> Void)?
    var destination: AnyView?
    var width: CGFloat
    var height: CGFloat
    var corner: CGFloat
    // MARK: Initialization

    init(
        text: String,
        action: (() -> Void)? = nil,
        destination: AnyView? = nil,
        width: CGFloat,
        height: CGFloat,
        corner: CGFloat
    ) {
        self.text = text
        self.action = action
        self.destination = destination
        self.width = width
        self.height = height
        self.corner = corner
    }
    // MARK: Body

    var body: some View {
        NavigationStack {
            if let action = action {
                Button {
                    action()
                } label: {
                    createButton(text: text, width: width, height: height, corner: corner)
                }
            } else if let destination = destination {
                NavigationLink(destination: destination) {
                    createButton(text: text, width: width, height: height, corner: corner)
                }
            }
        }
    }
    // MARK: - Private Methods

    @ViewBuilder
    private func createButton(text: String, width: CGFloat, height: CGFloat, corner: CGFloat) -> some View {
        ZStack {
            Color.red
                .frame(maxWidth: width, maxHeight: height)
                .cornerRadius(corner)
            Text(text)
                .foregroundColor(.white)
        }
    }
}

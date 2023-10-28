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
    var width: CGFloat?
    var height: CGFloat?
    var corner: CGFloat?
    var color: Color?
    // MARK: Initialization

    init(
        text: String,
        action: (() -> Void)? = nil,
        destination: AnyView? = nil,
        width: CGFloat = .infinity,
        height: CGFloat = 35,
        corner: CGFloat = 5,
        color: Color = .orangeLight
    ) {
        self.text = text
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
                    createButton(text: text, width: width ?? .infinity, height: height ?? 35, corner: corner ?? 5)
                }
            } else if let destination = destination {
                NavigationLink(destination: destination) {
                    createButton(text: text, width: width ?? .infinity, height: height ?? 35, corner: corner ?? 5)
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

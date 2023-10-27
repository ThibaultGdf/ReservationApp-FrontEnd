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
    // MARK: Initialization

    init(
        text: String,
        action: (() -> Void)? = nil,
        destination: AnyView? = nil
    ) {
        self.text = text
        self.action = action
        self.destination = destination
    }
    // MARK: Body

    var body: some View {
        NavigationStack {
            if let action = action {
                Button {
                    action()
                } label: {
                    createButton(text: text)
                }
            } else if let destination = destination {
                NavigationLink(destination: destination) {
                    createButton(text: text)
                }
            }
        }
    }
    // MARK: - Private Methods

    @ViewBuilder
    private func createButton(text: String) -> some View {
        ZStack {
            Color.red
                .frame(maxWidth: 200, maxHeight: 40)
                .cornerRadius(10)
            Text(text)
                .foregroundColor(.white)
        }
    }
}

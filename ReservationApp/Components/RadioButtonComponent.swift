//
//  RadioButtonComponent.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 01/11/2023.
//

import SwiftUI

// MARK: - RadioButtonComponent

struct RadioButtonComponent: View {
    // MARK: Properties

    @State private var isTable: Bool = false
    @State private var isSalle: Bool = false
    @State private var isOn: Bool = false

    var size: CGFloat = 20
    var text: String = ""
    // MARK: Body

    var body: some View {
        HStack {
            radioButton(text: "Table", isOn: $isTable)
            radioButton(text: "Salle", isOn: $isSalle)
        }
    }
    func radioButton(text: String, isOn: Binding<Bool>) -> some View {
        Button {
            withAnimation {
                            isOn.wrappedValue.toggle()
                        }
        } label: {
            ZStack {
                Circle()
                    .frame(maxWidth: size, maxHeight: size)
                    .foregroundColor(.white)
                    .overlay(
                        Circle()
                            .stroke(Color.black, lineWidth: 1)
                    )
                if isOn.wrappedValue {
                    Circle()
                        .frame(maxWidth: size / 2, maxHeight: size / 2)
                        .foregroundColor(.greenDark)
                }
            }
            TextComponent(text: text)
                .foregroundColor(.basicColor)
        }
    }
}
// MARK: Preview

struct RadioButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        RadioButtonComponent(text: "Table")
    }
}

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

    let font: Font = .system(size: 18)
    var size: CGFloat = 25
    var text: String = ""
    // MARK: Body

    var body: some View {
        HStack {
                radioButton(text: "Table", isOn: $isTable, font: font)
                radioButton(text: "Salle", isOn: $isSalle, font: font)
            }.padding(.trailing, 16)
        }
    func radioButton(text: String, isOn: Binding<Bool>, font: Font) -> some View {
        Button {
            withAnimation {
                            isOn.wrappedValue.toggle()
                        }
        } label: {
            HStack {
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
                Text(text)
                    .foregroundColor(.basicColor)
                    .font(font)
            }
        }
    }
}
// MARK: Preview

struct RadioButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        RadioButtonComponent(text: "Table")
    }
}

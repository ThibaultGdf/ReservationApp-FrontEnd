//
//  TextFieldComponent.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - TextFieldComponent

struct TextFieldComponent: View {
    // MARK: Properties

    var text: String?
    var width: CGFloat?
    var height: CGFloat?

    @State private var newText: String = ""
    // MARK: Initialization

    init(
        text: String? = nil,
        width: CGFloat?,
        height: CGFloat?
    ) {
        self.text = text
        self.width = width
        self.height = height
    }
    // MARK: Body

    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 1)
                .frame(width: width, height: height)
            TextField(text ?? "", text: $newText)
                .padding()
        }
    }
}
// MARK: - Preview

struct TextFieldComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldComponent(text: "Email", width: .infinity, height: 40)
    }
}

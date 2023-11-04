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

    var title: String?
    var text: String?
    var width: CGFloat?
    var height: CGFloat?
    var icon: String?

    @State private var newText: String = ""
    // MARK: Initialization

    init(
        title: String? = nil,
        text: String? = nil,
        width: CGFloat? = .infinity,
        height: CGFloat? = 35,
        icon: String? = nil
    ) {
        self.title = title
        self.text = text
        self.width = width
        self.height = height
        self.icon = icon
    }
    // MARK: Body

    var body: some View {
        VStack(alignment: .leading) {
            Text(title ?? "")
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.black, lineWidth: 1)
                    .frame(maxWidth: width, maxHeight: height)
                HStack {
                    TextField(text ?? "", text: $newText)
                        .fixedSize()
                        .font(.system(size: 14))
                       Spacer()
                    Image(icon ?? "")
                        .padding(.horizontal, 16)
                }.padding(.horizontal, 16)
            }
        }
    }
}
// MARK: - Preview

struct TextFieldComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldComponent(
            title: "Title",
            text: "Email",
            icon: "icon-clock"
        )
    }
}

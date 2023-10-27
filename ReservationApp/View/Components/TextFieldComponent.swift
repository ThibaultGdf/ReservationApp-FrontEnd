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
        title: String?,
        text: String?,
        width: CGFloat?,
        height: CGFloat?,
        icon: String?
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
            TextComponent(text: title)
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.black, lineWidth: 1)
                    .frame(width: width, height: height)
                HStack {
                    TextField(text ?? "", text: $newText)
                        .font(.system(size: 14))
                    Image(icon ?? "")
                }.padding(.horizontal, 16)
            }
        }
    }
}
// MARK: - Preview

struct TextFieldComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldComponent(title: "Title", text: "Email", width: .infinity, height: 40, icon: "icon-clock")
    }
}

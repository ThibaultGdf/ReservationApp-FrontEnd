//
//  TitleComponent.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - TitleComponent

struct TextComponent: View {
    // MARK: Properties

    var title: String?
    var subTitle: String?
    var text: String?
    var color: Color?

    // MARK: AJOUTER UN SWITCH CASE POUR .TITLE, .SUBTITLE, .PARAGRAPHE.

    // MARK: Body

    var body: some View {
        if let title = title {
            Text(title)
                .fontWeight(.semibold)
                .foregroundColor(.greenDark)
                .font(.system(size: 32))
        } else if let subTitle = subTitle {
            Text(subTitle)
                .fontWeight(.semibold)
                .font(.system(size: 24))
        } else if let text = text {
            Text(text)
                .fontWeight(.medium)
                .font(.system(size: 12))
        }
    }
}
// MARK: - Preview

struct TextComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextComponent(title: "Heading 1")
    }
}

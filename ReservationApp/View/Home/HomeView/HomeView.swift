//
//  ContentView.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import SwiftUI

// MARK: - HomeView

struct  HomeView: View {
    // MARK: Properties

    // MARK: Body

    var body: some View {
        VStack {
            TextFieldComponent(text: "Email", width: 200, height: 40)
            TextComponent(title: nil, subTitle: "bonjour", text: nil)
        }
    }
}
// MARK: - Preview

struct  HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

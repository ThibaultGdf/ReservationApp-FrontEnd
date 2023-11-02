//
//  LaunchViewModel.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 27/10/2023.
//

import Foundation

// MARK: - LaunchViewModel

class LaunchViewModel: ObservableObject {
   // MARK: Properties

    @Published var viewStates: ViewStates = .launch
}

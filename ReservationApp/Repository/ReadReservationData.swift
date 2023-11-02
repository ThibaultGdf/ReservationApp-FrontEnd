//
//  ReadProductsData.swift
//  ReservationApp
//
//  Created by Thibault GODEFROY on 31/10/2023.
//

import Foundation

// MARK: - ReadReservationData

class ReadReservationData: ObservableObject {
    @Published var reservations: [Reservation] = []
    init() {
        self.reservations = load("Reservations")
    }
    func load<T: Codable>(_ filename: String) -> T {
        // Declarer data
        let data: Data
        // 1) Trouver le fichier JSON
        guard let file = Bundle.main.url(forResource: filename, withExtension: "json")
        else {
            fatalError("Couldn't find \(filename) in main bundle")
        }
        // 2) Charger les données
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }
        // 3) Decoder les données
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
}

//
//  Racing.swift
//  racing
//
//  Created by destanti on 31/07/22.
//

import Foundation

// MARK: - Racing
struct Racings: Codable {
    let data: [Racing]?
}

// MARK: - Datum
struct Racing: Codable, Identifiable {
    let id: String?
    let round: Int?
    let startDate, endDate, datumDescription, flagImg: String?
    let roundYear, country, circuitName, circuitImg, circuitLength: String?
    let noLap: Int?
    let firstGrandPrix, raceDistance, lapRecord, lapRecordName: String?
    let yearRecordName: String?

    enum CodingKeys: String, CodingKey {
        case id, round, startDate, endDate
        case datumDescription = "description"
        case flagImg, roundYear, country, circuitName, circuitImg
        case circuitLength = "circuit length"
        case noLap, firstGrandPrix, raceDistance, lapRecord, lapRecordName, yearRecordName
    }
}

//
//  RacingViewModel.swift
//  racing
//
//  Created by destanti on 31/07/22.
//

import Foundation

class RacingViewModel : NSObject{
    
    var currentRacing : Racing?
    var racingList : [Racing]?
    
    override init() {
        super.init()
        racingList = loadJson(filename: "data")
    }
    
    func loadJson(filename fileName: String) -> [Racing]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(Racings.self, from: data)
                return jsonData.data
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}

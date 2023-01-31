//
//  Network.swift
//  VIPLearning
//
//  Created by Mahdi Saedi on 29/01/2023.
//

import Foundation
protocol NetworkProtocol {
    func createDataFromJson(with jsonName: String) -> FirstDatas
}

class Network: NetworkProtocol {
    func createDataFromJson(with jsonName: String) -> FirstDatas {
        guard let sourceUrl = Bundle.main.url(forResource: jsonName, withExtension: "json") else { fatalError ("Could not find FlatColors.json") }
        guard let data = try? Data(contentsOf: sourceUrl) else { fatalError ( "Could not conver data") }
        let decoder = JSONDecoder()
        guard let convertedData = try? decoder.decode(FirstDatas.self, from: data) else { fatalError ("There was a problem decoding the data...") }
        return convertedData
    }
}

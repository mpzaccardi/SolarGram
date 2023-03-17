//
//  ModelData.swift
//  Landmarks
//
//  Created by Lori Merone on 2/24/23.
//

import Foundation
import Combine

//ObservableObject and @Published allow data to be altered in any view? knows to commit to memory and @Publsihed good to use when multiple views will used data
final class ModelData: ObservableObject {
    @Published var posts: [PostData] = load("solarData.json")
}

//loading data into environment/app
var post: [PostData] = load("solarData.json")

//dont understand purpose of this function, ask professor. Have to do with coding or hashing protocol?
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

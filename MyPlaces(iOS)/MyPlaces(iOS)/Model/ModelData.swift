//
//  ModelData.swift
//  MyPlaces(iOS)
//
//  Created by Hong Le on 7/23/23.
//

import Foundation

final class LandmarksViewModel: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

//create for me a bowl called landmark, use load to create the bowl
//var landmarks: [Landmark] = load("landmarkData.json")

//generic machine to cut cookie (need to give it blade)
func load<T: Decodable>(_ filename:String) -> T {
    //create a bucket/ buffer to collect?
    let data: Data
    
    //create file/pointer to the file
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Error at Bundle.url")
    }
    
    //read the code, pour the data into the bucket, if you can't catch exception
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Error at try Date\n\(error)")
    }
    
    //does the cutting [T is the blade, data is in the buffer]
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Error at try decoder.decode\n\(error)")
    }
    
}

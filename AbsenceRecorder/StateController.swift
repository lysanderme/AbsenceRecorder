//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Lysander Myrddin-Evans on 31/01/2023.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    private var url: URL
    
    init() {
        loadFromFile()
    }
    
    func getPath(file: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent(file)
        return url
    }
    
    func loadFromFile() {
        // get url to the file you want to load from
        if let data = try? Data(contentsOf: getPath(file: "divisions.json") {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([Division].self, from: data) {
                divisions = loaded
            }
        }
    }
    
    func saveToFile() {
        // create json encoder
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(divisions) {
            // take encoded objects and convert them into a string
            if let json = String(data: encoded, encoding: .utf8) {
                // creat the file path
                do {
                    // write the json string to that file
                    try json.write(to: getPath(file: "divisions.json"), atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}

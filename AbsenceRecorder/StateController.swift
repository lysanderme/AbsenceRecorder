//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Lysander Myrddin-Evans on 31/01/2023.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init() {
        loadFromFile()
    }
    
    
    func loadFromFile() {
        let url = FileManager.default.getPath(file: "divisions.json")
        if let data = try? Data(contentsOf: url) {
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
                let url = FileManager.default.getPath(file: "divisions.json")
                do {
                    // write the json string to that file
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}

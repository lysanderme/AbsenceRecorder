//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Lysander Myrddin-Evans on 22/02/2023.
//

import Foundation

extension FileManager {
    func getPath(file: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent(file)
        return url
    }
}

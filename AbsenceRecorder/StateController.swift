//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Lysander Myrddin-Evans on 31/01/2023.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}

//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Lysander Myrddin-Evans on 02/02/2023.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool
    
    init(student: Student) {
        self.student = student
        self.isAbsent = false
    }
    
    #if DEBUG
    
    static let example = StudentAbsence(student: Student.example)
    #endif
}

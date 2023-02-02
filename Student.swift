//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Lysander Myrddin-Evans on 17/01/2023.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    
    #if DEBUG
    static let example = Student(forename: "Lysander", surname: "Myrddin-Evans", birthday: Date())
    static let examples = [example]
    #endif
}

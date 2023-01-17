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
    let birthday: Int
    
    init(forename: String, surname: String, birthday: Int) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
}
